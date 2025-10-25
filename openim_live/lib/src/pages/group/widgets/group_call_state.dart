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
    required this.inviterUserID,
    required this.inviteeUserIDList,
    required this.inviteeMemberList,
    required this.onSyncGroupMemberInfo,
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
  final String inviterUserID;
  final List<String> inviteeUserIDList;
  final List<GroupMembersInfo> inviteeMemberList;
  final Future<List<GroupMembersInfo>> Function(String groupID, List<String> memberIDList)? onSyncGroupMemberInfo;
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

  final List<GroupParticipantTrack> remoteParticipantTracks = [];
  GroupParticipantTrack? localParticipantTrack;

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
      if (existParticipants()) {
        return;
      }
      widget.onClose?.call();
      IMViews.showToast(
          sprintf(StrRes.otherCallHandle, [event.state == CallState.otherReject ? StrRes.rejectCall : StrRes.accept]));
    } else if (event.state == CallState.timeout) {
      widget.onClose?.call();
    } else if (event.state == CallState.beAccepted) {
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

  int _gridCountFor(int n) {
    if (n <= 1) return 1;
    if (n <= 4) return 2;
    if (n <= 9) return 3;
    return 4;
  }

Widget _buildRemoteGrid() {
  final connectedUserIDs = [
    if (localParticipantTrack != null) localParticipantTrack!.participant.identity,
    ...remoteParticipantTracks.map((e) => e.participant.identity),
  ];

  final inviterUserID = widget.inviterUserID;
  final inviteeUserIDList = widget.inviteeUserIDList;
  final meetingUserIDs = [inviterUserID, ...inviteeUserIDList];

  return FutureBuilder<List<GroupMembersInfo>>(
    future: widget.onSyncGroupMemberInfo?.call(widget.groupID, meetingUserIDs),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator());
      }
      final members = snapshot.data!;

      List<GroupMembersInfo> sortedMembers = [];
  
      final selfIndex = members.indexWhere((m) => m.userID == widget.userID);
      if (selfIndex != -1) {
        sortedMembers.add(members[selfIndex]);
        sortedMembers.addAll(members.where((m) => m.userID != widget.userID));
      } else if (localParticipantTrack != null) {
        sortedMembers.add(GroupMembersInfo(
          userID: localParticipantTrack!.participant.identity,
          nickname: OpenIM.iMManager.userInfo.nickname,
          faceURL: OpenIM.iMManager.userInfo.faceURL,
        ));
        sortedMembers.addAll(members);
      } else {
        sortedMembers = members;
      }
      
      final crossAxisCount = _gridCountFor(sortedMembers.length);

      return GridView.builder(
        padding: EdgeInsets.fromLTRB(8.w, 24.h, 8.w, 220.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 12 / 12,
        ),
        itemCount: sortedMembers.length,
        itemBuilder: (context, index) {
          final member = sortedMembers[index];
          final nickname = member.nickname ?? member.userID ?? '';
          final isConnected = connectedUserIDs.contains(member.userID);
       
          if (isConnected) {
            final trackIndex = remoteParticipantTracks.indexWhere((e) => e.participant.identity == member.userID);
            if (localParticipantTrack != null && localParticipantTrack!.participant.identity == member.userID) {
              return ParticipantWidget.widgetFor(localParticipantTrack!, member.nickname, member.faceURL);
            } else if (trackIndex != -1) {
              return ParticipantWidget.widgetFor(remoteParticipantTracks[trackIndex],member.nickname, member.faceURL,);
            } 
          } else {
            return AspectRatio(
              aspectRatio: 12 / 16, 
              child: Container(
                color: Colors.black,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8), 
                        border: Border.all(color: Colors.white, width: 2), 
                        image: (member.faceURL != null && member.faceURL!.isNotEmpty)
                            ? DecorationImage(
                                image: NetworkImage(member.faceURL!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      alignment: Alignment.center,
                      child: (member.faceURL == null || member.faceURL!.isEmpty)
                          ? Icon(Icons.person, size: 64.w, color: Colors.white.withOpacity(0.7))
                          : null,
                    ),
                    Positioned(
                      left: 8.w,
                      right: 8.w,
                      bottom: 8.h,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            nickname,
                            style: const TextStyle(color: Colors.white, fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    // 遮盖层，表示未接入
                    Positioned.fill(
                      child: Container(
                        color: Colors.black.withOpacity(0.4),
                        alignment: Alignment.center,
                        child: _ConnectingDots(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    },
  );
}

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
              Positioned(
                top: 138.h,
                left: 0,
                right: 0,
                bottom: 0,
                child: _buildRemoteGrid(),
              ),

              GroupControlsView(
                callStateStream: callStateSubject.stream,
                roomDidUpdateStream: roomDidUpdateSubject.stream,
                initState: widget.initState,
                callType: widget.callType,
                groupID: widget.groupID,
                userInfo: userInfo,
                onMinimize: onTapMinimize,
                onCallingDuration: callingDuration,
                onEnabledMicrophone: onChangedMicStatus,
                onEnabledSpeaker: onChangedSpeakerStatus,
                inviteeUserIDList: widget.inviteeUserIDList,
                groupMembersList:  widget.inviteeMemberList,
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


  Widget buildGroupMembersGridBySync() {
  return FutureBuilder<List<GroupMembersInfo>>(
    future: widget.onSyncGroupMemberInfo?.call(widget.groupID, widget.inviteeUserIDList),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator());
      }
      final members = snapshot.data!;
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(16.w),
        itemCount: members.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final member = members[index];
          final nickname = member.nickname ?? member.userID ?? '';
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 28.w,
                backgroundImage: NetworkImage(member.faceURL ?? ''),
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(height: 8.h),
              Text(
                nickname,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      );
    },
  );
}



Widget buildGroupMembersGrid() {
  final members = widget.inviteeMemberList;
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(16.w),
    itemCount: members.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 16.h,
      crossAxisSpacing: 16.w,
      childAspectRatio: 0.7,
    ),
    itemBuilder: (context, index) {
      final member = members[index];
      final nickname = member.nickname ?? member.userID ?? '';
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 28.w,
            backgroundImage: NetworkImage(member.faceURL ?? ''),
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(height: 8.h),
          Text(
            nickname,
            style: const TextStyle(color: Colors.white, fontSize: 14),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      );
    },
  );
}

}


class _ConnectingDots extends StatefulWidget {
  @override
  State<_ConnectingDots> createState() => _ConnectingDotsState();
}

class _ConnectingDotsState extends State<_ConnectingDots> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2800),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // 计算当前高亮的点
        int active = (_controller.value * 3).floor() % 3;
        List<Color> colors = List.generate(3, (i) {
          return i == active
              ? Colors.white
              : Colors.white.withOpacity(0.4);
        });
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (i) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              '.',
              style: TextStyle(
                color: colors[i],
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        );
      },
    );
  }
}
