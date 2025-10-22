import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:openim_common/openim_common.dart';
import 'package:openim_live/src/utils/live_utils.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';

import '../../../../openim_live.dart';
import '../../../widgets/small_window.dart';
import 'group_controls.dart';
import 'group_participant.dart';

abstract class GroupSignalView extends StatefulWidget {
  const GroupSignalView({
    Key? key,
    required this.callType,
    required this.initState,
    this.roomID,
    required this.groupID,
    required this.userID,
    required this.callEventSubject,
    this.onDial,
    this.onSyncUserInfo,
    this.onTapCancel,
    this.onTapHangup,
    this.onTapGroupHangup,
    this.onTapPickup,
    this.onTapReject,
    this.onClose,
    required this.autoPickup,
    this.onBindRoomID,
    this.onWaitingAccept,
    this.onBusyLine,
    this.onStartCalling,
    this.onError,
    this.onRoomDisconnected,
  }) : super(key: key);
  final CallType callType;
  final CallState initState;
  final String? roomID;
  final String groupID;
  final String userID;
  final PublishSubject<CallEvent> callEventSubject;
  final Future<SignalingCertificate> Function()? onDial;
  final Future<SignalingCertificate> Function()? onTapPickup;
  final Future Function()? onTapCancel;
  final Future Function(int duration, bool isPositive)? onTapHangup;
  final Future Function(int duration, bool isPositive)? onTapGroupHangup;
  final Future Function()? onTapReject;
  final Function()? onClose;
  final bool autoPickup;
  final Function(String roomID)? onBindRoomID;
  final Function()? onWaitingAccept;
  final Function()? onBusyLine;
  final Function()? onStartCalling;
  final Function()? onRoomDisconnected;
  final Function(dynamic error, dynamic stack)? onError;
  final Future<UserInfo?> Function(String userID)? onSyncUserInfo;
}

abstract class GroupSignalState<T extends GroupSignalView> extends State<T> {
  final callStateSubject = BehaviorSubject<CallState>();
  final roomDidUpdateSubject = PublishSubject<Room>();
  late CallState callState;
  late SignalingCertificate certificate;
  String? roomID;
  UserInfo? userInfo;
  StreamSubscription? callEventSub;
  bool minimize = false;
  int duration = 0;
  bool enabledMicrophone = true;
  bool enabledSpeaker = true;

  // ...existing code...
  // 原先仅支持单一远端/本地：
  // GroupParticipantTrack? remoteParticipantTrack;
  // GroupParticipantTrack? localParticipantTrack;

  // 修改：支持多个远端参与者
  final List<GroupParticipantTrack> remoteParticipantTracks = [];
  GroupParticipantTrack? localParticipantTrack;

  // 兼容：保留 remoteParticipantTrack 用于既有逻辑（取列表第一个）
  GroupParticipantTrack? get remoteParticipantTrack =>
      remoteParticipantTracks.isNotEmpty ? remoteParticipantTracks.first : null;

  Stream<CallEvent> get sameRoomSignalStream =>
      widget.callEventSubject.stream.where((event) => LiveUtils.isSameRoom(event, roomID));

  @override
  void initState() {
    roomID ??= widget.roomID;
    callState = widget.initState;
    callEventSub = sameRoomSignalStream.listen(_onStateDidUpdate);
    widget.onSyncUserInfo?.call(widget.userID).then(_onUpdateUserInfo);
    onDail();
    autoPickup();
    super.initState();
  }

  @override
  void dispose() {
    callStateSubject.close();
    callEventSub?.cancel();
    super.dispose();
  }

  _onUpdateUserInfo(UserInfo? info) {
    if (!mounted && null != info) return;
    setState(() {
      userInfo = info;
    });
  }

  // ...existing code...

  _onStateDidUpdate(CallEvent event) {
    Logger.print("CallEvent current：$callState  event：$event");
    if (!mounted) return;

    if (event.state == CallState.call ||
        event.state == CallState.beCalled ||
        event.state == CallState.connecting ||
        event.state == CallState.calling) {
      callStateSubject.add(event.state);
    }

    if (event.state == CallState.beRejected || event.state == CallState.beCanceled) {
      widget.onClose?.call();
    } else if (event.state == CallState.otherReject || event.state == CallState.otherAccepted) {
      // 群聊：若仍有远端参与者存在，则不关闭
      if (existParticipants()) {
        return;
      }
      widget.onClose?.call();
      IMViews.showToast(
          sprintf(StrRes.otherCallHandle, [event.state == CallState.otherReject ? StrRes.rejectCall : StrRes.accept]));
    } else if (event.state == CallState.timeout) {
      widget.onClose?.call();
    } else if (event.state == CallState.beAccepted) {
      // 群聊：任意远端加入即算已连接
      if (remoteParticipantTracks.isNotEmpty) {
        onParticipantConnected();
      }
    }
  }

  onParticipantConnected() {
    callStateSubject.add(CallState.calling);
    widget.onStartCalling?.call();
  }

  onParticipantDisconnected() {
    // 只在没有任何远端参与者时才自动挂断
    if (!existParticipants()) {
      onTapHangup(false);
    }
  }

  onDail() async {
    if (widget.initState == CallState.call) {
      // callStateSubject.add(CallState.connecting);
      certificate = await widget.onDial!.call();
      widget.onBindRoomID?.call(roomID = certificate.roomID!);
      await connect();
    }
  }

  autoPickup() {
    if (widget.autoPickup) {
      onTapPickup();
    }
  }

  onTapPickup() async {
    Logger.print('connecting');
    callStateSubject.add(CallState.connecting);
    certificate = await widget.onTapPickup!.call();
    widget.onBindRoomID?.call(roomID = certificate.roomID!);
    await connect();
    callStateSubject.add(CallState.calling);
    widget.onStartCalling?.call();
    Logger.print('connected');
  }

  onTapHangup(bool isPositive) async {
    await widget.onTapHangup
        ?.call(duration, isPositive)
        .whenComplete(() => /*isPositive ? {} : */ widget.onClose?.call());
  }

  onTapCancel() async {
    await widget.onTapCancel?.call().whenComplete(() => widget.onClose?.call());
  }

  onTapReject() async {
    await widget.onTapReject?.call().whenComplete(() => widget.onClose?.call());
  }

  onTapMinimize() {
    setState(() {
      minimize = true;
    });
  }

  onTapMaximize() {
    setState(() {
      minimize = false;
    });
  }

  callingDuration(int duration) {
    this.duration = duration;
  }

  onChangedMicStatus(bool enabled) {
    enabledMicrophone = enabled;
  }

  onChangedSpeakerStatus(bool enabled) {
    enabledSpeaker = enabled;
  }

  // ...existing code...

  // 网格列数根据人数自适应
  int _gridCountFor(int n) {
    if (n <= 1) return 1;
    if (n <= 4) return 2;
    if (n <= 9) return 3;
    return 4;
  }

  // 构建远端参与者网格
  Widget _buildRemoteGrid() {
    final count = remoteParticipantTracks.length;
    if (count == 0) {
      return const SizedBox.shrink();
    }
    final crossAxisCount = _gridCountFor(count);
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 220.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 9 / 16,
      ),
      itemCount: count,
      itemBuilder: (context, index) {
        final track = remoteParticipantTracks[index];
        return ParticipantWidget.widgetFor(track);
      },
    );
  }

  //Alignment(0.9, -0.9),
  double alignX = 0.9;
  double alignY = -0.9;

  Alignment get moveAlign => Alignment(alignX, alignY);

  onMoveSmallWindow(DragUpdateDetails details) {
    final globalDy = details.globalPosition.dy;
    final globalDx = details.globalPosition.dx;
    setState(() {
      alignX = (globalDx - .5.sw) / .5.sw;
      alignY = (globalDy - .5.sh) / .5.sh;
    });
  }

  Future<void> connect();

  bool existParticipants();

  // 群聊不再需要小窗切换远端/本地，保留变量以兼容但不使用
  bool smallScreenIsRemote = true;

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      AnimatedScale(
        scale: minimize ? 0 : 1,
        alignment: moveAlign,
        duration: const Duration(milliseconds: 200),
        onEnd: () {},
        child: Container(
          color: Styles.c_000000,
          child: Stack(
            children: [
              // 背景
              // ImageRes.liveBg...




              // 网格展示所有远端参与者
              Positioned(
                top: 300.h,
                left: 0,
                right: 0,
                bottom: 0,
                child: _buildRemoteGrid(),
              ),

              // 本地小窗
              if (localParticipantTrack != null)
                Positioned(
                  top: 97.h,
                  right: 12.w,
                  child: GestureDetector(
                    child: SizedBox(
                      width: 120.w,
                      height: 180.h,
                      // 群聊中小窗显示本地预览
                      child: ParticipantWidget.widgetFor(localParticipantTrack!),
                    ),
                    onTap: () {
                      // 可扩展：点击本地小窗进行操作（静音/摄像头开关/放大等）
                    },
                  ),
                ),

              GroupControlsView(
                callStateStream: callStateSubject.stream,
                roomDidUpdateStream: roomDidUpdateSubject.stream,
                initState: widget.initState,
                callType: widget.callType,
                groupID: widget.groupID,
                // userInfo: userInfo,
                onMinimize: onTapMinimize,
                onCallingDuration: callingDuration,
                onEnabledMicrophone: onChangedMicStatus,
                onEnabledSpeaker: onChangedSpeakerStatus,
                onHangUp: onTapHangup,
                onPickUp: onTapPickup,
                onReject: onTapReject,
                onCancel: onTapCancel,
                onChangedCallState: (state) => callState = state,
              ),
            ],
          ),
        ),
      ),
      if (minimize)
        Align(
          alignment: moveAlign,
          child: AnimatedOpacity(
            opacity: minimize ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: SmallWindowView(
              opacity: minimize ? 1 : 0,
              userInfo: userInfo,
              callState: callState,
              onTapMaximize: onTapMaximize,
              onPanUpdate: onMoveSmallWindow,
              child: (state) {
                // 也可在小窗显示本地预览或主讲人画面
                return null;
              },
            ),
          ),
        ),
    ],
  );
}

