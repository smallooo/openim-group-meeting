import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:openim_common/openim_common.dart';


class ChatQuoteView extends StatelessWidget {
   const ChatQuoteView({
    super.key,
    required this.message,
    this.onTap, 
    this.isISend = false,
    this.padding = const EdgeInsets.all(8),
  });

  final Message message;
  final VoidCallback? onTap;
  final bool isISend;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final quoted = message.quoteElem?.quoteMessage;
    if (quoted == null) return const SizedBox.shrink();

    final ui = _buildQuoteUI(quoted);

     return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        constraints: BoxConstraints(
          // 给予有限宽度，便于换行（可按需调整比例）
          maxWidth: MediaQuery.of(context).size.width * 0.66,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300, width: 0.6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // 关键：父 Row 收缩
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 3,
              height: 44,
              color: isISend ? const Color(0xFF2F88FF) : Colors.grey.shade400,
            ),
            const SizedBox(width: 8),

            // 文字区域（发送者 + 预览文本）
            Flexible(
              fit: FlexFit.loose, // 关键：用 Flexible 替换 Expanded
              child: _QuoteTextArea(
                senderName: quoted.senderNickname ?? quoted.sendID ?? '',
                previewText: ui.previewText,
              ),
            ),

            if (ui.thumb != null) const SizedBox(width: 8),
            if (ui.thumb != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(width: 44, height: 44, child: ui.thumb),
              ),
          ],
        ),
      ),
      );
  }

  _QuoteUI _buildQuoteUI(Message q) {
    // 文本
    if (q.isTextType) {
      final text = q.textElem?.content ?? '';
      return _QuoteUI(previewText: text.isEmpty ? '[文本]' : text);
    }

    // 图片
    // if (q.isPictureType) {
    //   final thumb = _buildImageThumb(
    //     localPath: q.pictureElem?.snapshotPath ?? q.pictureElem?.sourcePath,
    //     url: q.pictureElem?.snapshotUrl ?? q.pictureElem?.sourceUrl,
    //   );
    //   return _QuoteUI(previewText: '[图片]', thumb: thumb);
    // }

    // 视频
    if (q.isVideoType) {
      final thumb = _buildImageThumb(
        localPath: q.videoElem?.snapshotPath,
        url: q.videoElem?.snapshotUrl,
        overlayIcon: Icons.play_arrow_rounded,
      );
      return _QuoteUI(previewText: '[视频]', thumb: thumb);
    }

    // 语音
    if (q.isVoiceType) {
      final dur = q.soundElem?.duration ?? 0;
      return _QuoteUI(previewText: '[语音] ${dur}s');
    }

    // 文件
    if (q.isFileType) {
      final name = q.fileElem?.fileName ?? '文件';
      final size = q.fileElem?.fileSize ?? 0;
      return _QuoteUI(previewText: '[文件] $name (${_fmtSize(size)})');
    }

    // 地理位置
    if (q.isLocationType) {
      final desc = q.locationElem?.description ?? '位置';
      return _QuoteUI(previewText: '[位置] $desc');
    }

    // 撤回
    if (q.isRevokeType) {
      return _QuoteUI(previewText: '[已撤回]');
    }

    // 自定义/表情/名片/通知等
    if (q.isCustomFaceType) return _QuoteUI(previewText: '[表情]');
    if (q.isCardType) return _QuoteUI(previewText: '[名片]');
    if (q.isNotificationType) return _QuoteUI(previewText: '[通知]');
    if (q.isCustomType) return _QuoteUI(previewText: '[自定义消息]');

    return const _QuoteUI(previewText: '[消息]');
  }

  Widget? _buildImageThumb({
    String? localPath,
    String? url,
    IconData? overlayIcon,
  }) {
    Widget? image;
    if ((localPath ?? '').isNotEmpty && File(localPath!).existsSync()) {
      image = Image.file(File(localPath), fit: BoxFit.cover);
    } else if ((url ?? '').isNotEmpty) {
      image = Image.network(url!, fit: BoxFit.cover);
    } else {
      return null;
    }

    if (overlayIcon == null) return image;

    return Stack(
      fit: StackFit.expand,
      children: [
        image,
        Container(color: Colors.black26),
        Center(
          child: Icon(overlayIcon, color: Colors.white, size: 22),
        ),
      ],
    );
  }

  String _fmtSize(int bytes) {
    const kb = 1024;
    const mb = 1024 * 1024;
    if (bytes >= mb) return '${(bytes / mb).toStringAsFixed(1)} MB';
    if (bytes >= kb) return '${(bytes / kb).toStringAsFixed(1)} KB';
    return '$bytes B';
  }
}

  _QuoteUI _buildQuoteUI(Message q) {
    // 文本
    if (q.isTextType) {
      final text = q.textElem?.content ?? '';
      return _QuoteUI(previewText: text.isEmpty ? '[文本]' : text);
    }

    // 图片
    // if (q.isPictureType) {
    //   final thumb = _buildImageThumb(
    //     localPath: q.pictureElem?.snapshotPath ?? q.pictureElem?.sourcePath,
    //     url: q.pictureElem?.snapshotUrl ?? q.pictureElem?.sourceUrl,
    //   );
    //   return _QuoteUI(previewText: '[图片]', thumb: thumb);
    // }

    // 视频
    // if (q.isVideoType) {
    //   final thumb = _buildImageThumb(
    //     localPath: q.videoElem?.snapshotPath,
    //     url: q.videoElem?.snapshotUrl,
    //     overlayIcon: Icons.play_arrow_rounded,
    //   );
    //   return _QuoteUI(previewText: '[视频]', thumb: thumb);
    // }

    // 语音
    if (q.isVoiceType) {
      final dur = q.soundElem?.duration ?? 0;
      return _QuoteUI(previewText: '[语音] ${dur}s');
    }

    // 文件
    if (q.isFileType) {
      final name = q.fileElem?.fileName ?? '文件';
      final size = q.fileElem?.fileSize ?? 0;
      return _QuoteUI(previewText: '[文件] $name (${_fmtSize(size)})');
    }

    // 地理位置
    if (q.isLocationType) {
      final desc = q.locationElem?.description ?? '位置';
      return _QuoteUI(previewText: '[位置] $desc');
    }

    // 自定义/表情/名片/通知等
    if (q.isCustomFaceType) return _QuoteUI(previewText: '[表情]');
    if (q.isCardType) return _QuoteUI(previewText: '[名片]');
    if (q.isNotificationType) return _QuoteUI(previewText: '[通知]');
    if (q.isCustomType) return _QuoteUI(previewText: '[自定义消息]');

    return const _QuoteUI(previewText: '[消息]');
  }

  // Widget? _buildImageThumb({
  //   String? localPath,
  //   String? url,
  //   IconData? overlayIcon,
  // }) {
  //   Widget? image;
  //   if ((localPath ?? '').isNotEmpty && File(localPath!).existsSync()) {
  //     image = Image.file(File(localPath), fit: BoxFit.cover);
  //   } else if ((url ?? '').isNotEmpty) {
  //   } else {
  //     return null;
  //   }

  //   if (overlayIcon == null) return image;

  //   return Stack(
  //     fit: StackFit.expand,
  //     children: [
  //       image,
  //       Container(color: Colors.black26),
  //       Center(
  //         child: Icon(overlayIcon, color: Colors.white, size: 22),
  //       ),
  //     ],
  //   );
  // }

  String _fmtSize(int bytes) {
    const kb = 1024;
    const mb = 1024 * 1024;
    if (bytes >= mb) return '${(bytes / mb).toStringAsFixed(1)} MB';
    if (bytes >= kb) return '${(bytes / kb).toStringAsFixed(1)} KB';
    return '$bytes B';
  }


class _QuoteTextArea extends StatelessWidget {
  const _QuoteTextArea({required this.senderName, required this.previewText});

  final String senderName;
  final String previewText;

  @override
  Widget build(BuildContext context) {
    final name = senderName.isEmpty ? '消息' : senderName;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF666666)),
        ),
        const SizedBox(height: 2),
        Text(
          previewText,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12, color: Color(0xFF444444)),
        ),
      ],
    );
  }
}

class _QuoteUI {
  const _QuoteUI({required this.previewText, this.thumb});
  final String previewText;
  final Widget? thumb;
}