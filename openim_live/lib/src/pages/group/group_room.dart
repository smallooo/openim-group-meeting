import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:openim_common/openim_common.dart';


import 'package:openim_live/src/pages/group/widgets/group_call_state.dart';
import 'package:openim_live/src/pages/group/widgets/group_participant.dart';

import '../../live_client.dart';


class GroupRoomView extends GroupSignalView {
  final Future<SignalingCertificate> Function()? onJoinGroup;


  const GroupRoomView({
    super.key,
    this.onJoinGroup,
    required super.callType,
    required super.initState,
    required super.userID,
    required super.callEventSubject,
    required super.autoPickup,
    super.roomID,
    required super.groupID,
    required super.inviterUserID,
    required super.inviteeUserIDList,
    required super.inviteeMemberList,
    required super.onSyncGroupMemberInfo,

    super.onClose,
    super.onBindRoomID,
    super.onBusyLine,
    super.onDial,
    super.onStartCalling,

    super.onTapCancel,
    super.onTapHangup,
    super.onTapGroupHangup,
    super.onTapPickup,
    super.onTapReject,
    super.onWaitingAccept,
    super.onSyncUserInfo,
    super.onError,
    super.onRoomDisconnected,
  });

  @override
  GroupSignalState<GroupRoomView> createState() => _GroupRoomViewState();
}

class _GroupRoomViewState extends GroupSignalState<GroupRoomView> {
  EventsListener<RoomEvent>? _listener;
  Room? _room;

  final List<GroupParticipantTrack> remoteParticipantTracks = [];

  @override
  void dispose() {
    (() async {
      _room?.removeListener(_onRoomDidUpdate);
      await _listener?.dispose();

      final remotes = _room?.remoteParticipants.values.toList() ?? const [];
      for (final p in remotes) {
        await p.dispose();
      }

      await _room?.localParticipant?.dispose();
      await _room?.disconnect();
      await _room?.dispose();
    })();
    super.dispose();
  }

  @override
  Future<void> connect() async {
    final url = certificate.liveURL!;
    final token = certificate.token!;
    final busyLineUsers = certificate.busyLineUserIDList ?? [];
    if (busyLineUsers.isNotEmpty) {
      widget.onBusyLine?.call();
      widget.onClose?.call();
      return;
    }
    try {
      _room = Room();

      _listener = _room?.createListener();
      await _room?.connect(
        url,
        token,
        roomOptions: RoomOptions(
          dynacast: true,
          adaptiveStream: true,
          defaultCameraCaptureOptions:
          const CameraCaptureOptions(params: VideoParametersPresets.h720_169),
          defaultVideoPublishOptions: VideoPublishOptions(
            simulcast: true,
            videoCodec: 'VP9',
            videoEncoding: const VideoEncoding(
              maxBitrate: 5 * 1000 * 1000,
              maxFramerate: 15,
            ),
          ),
        ),
      );
      if (!mounted) return;

      _room?.addListener(_onRoomDidUpdate);
      if (_listener != null) _setUpListeners();

      if (_room != null) roomDidUpdateSubject.add(_room!);
      _sortParticipants();

      if (CallState.call == callState || CallState.connecting == callState) {
        widget.onWaitingAccept?.call();
      }

      WidgetsBindingCompatible.instance?.addPostFrameCallback((_) {
        _publish();
      });
    } catch (error, stackTrace) {
      widget.onError?.call(error, stackTrace);
    }
  }

  void _setUpListeners() => _listener!
    ..on<RoomDisconnectedEvent>((event) async {
      Logger.print('Room disconnected: reason => ${event.reason}');
      WidgetsBindingCompatible.instance?.addPostFrameCallback((_) {
        widget.onRoomDisconnected?.call();
        widget.onClose?.call();
      });
    })
    ..on<RoomRecordingStatusChanged>((_) {})
    ..on<LocalTrackPublishedEvent>((_) => _sortParticipants())
    ..on<LocalTrackUnpublishedEvent>((_) => _sortParticipants())
    ..on<ParticipantConnectedEvent>((_) => onParticipantConnected())
    ..on<ParticipantDisconnectedEvent>((_) => onParticipantDisconnected())
    ..on<DataReceivedEvent>((event) {
      String decoded = 'Failed to decode';
      try {
        decoded = utf8.decode(event.data);
      } catch (_) {
        Logger.print('Failed to decode: $_');
      }
    });

  void _publish() async {
    try {
      final enabled = widget.callType == CallType.video;
      await _room?.localParticipant?.setCameraEnabled(enabled);
    } catch (error, stackTrace) {
      Logger.print('could not publish video: $error $stackTrace');
    }
    try {
      await _room?.localParticipant?.setMicrophoneEnabled(enabledMicrophone);
    } catch (error, stackTrace) {
      Logger.print('could not publish audio: $error $stackTrace');
    }
  }

  void _onRoomDidUpdate() {
    _sortParticipants();
    if (_room != null) roomDidUpdateSubject.add(_room!);
  }

  void _sortParticipants() {
    if (_room == null) return;

    // 本地参与者
    final local = _room!.localParticipant;
    if (local != null) {
      VideoTrack? videoTrack;
      for (final pub in local.videoTrackPublications) {
        if (!pub.isScreenShare) {
          videoTrack = pub.track;
          break;
        }
      }
      localParticipantTrack = GroupParticipantTrack(
        participant: local,
        videoTrack: videoTrack,
        isScreenShare: false,
      );
    }

    // 远端参与者（多个）
    remoteParticipantTracks.clear();
    for (final participant in _room!.remoteParticipants.values) {
      VideoTrack? videoTrack;
      for (final pub in participant.videoTrackPublications) {
        if (!pub.isScreenShare) {
          videoTrack = pub.track;
          break;
        }
      }
      remoteParticipantTracks.add(
        GroupParticipantTrack(
          participant: participant,
          videoTrack: videoTrack,
          isScreenShare: false,
        ),
      );
    }

    if (remoteParticipantTracks.isNotEmpty) {
      onParticipantConnected();
    }
    setState(() {});
  }

  @override
  bool existParticipants() {
    return _room?.remoteParticipants.isNotEmpty == true;
  }
}