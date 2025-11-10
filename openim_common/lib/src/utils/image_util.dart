import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openim_common/openim_common.dart';

class ImageUtil {
  ImageUtil._();

  static const _package = "openim_common";

  static Widget assetImage(
    String res, {
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image.asset(
        res,
        width: width,
        height: height,
        fit: fit,
        color: color,
        package: _package,
      );

  static Widget networkImage({
    required String url,
    double? width,
    double? height,
    int? cacheWidth,
    int? cacheHeight,
    BoxFit? fit,
    bool loadProgress = true,
    bool clearMemoryCacheWhenDispose = false,
    bool lowMemory = false,
    Widget? errorWidget,
    BorderRadius? borderRadius,
  }) {
    // 检查是否是 SVG 格式（检查 URL 路径中是否包含 .svg 或 /svg）
    final lowerUrl = url.toLowerCase();
    final uri = Uri.tryParse(url);
    final path = uri?.path ?? '';
    // 检查路径是否以 .svg 结尾，或者路径中包含 /svg（如 dicebear API: /9.x/dylan/svg）
    // 或者 URL 中包含 .svg? 或 /svg?，或者查询参数中包含 svg
    // 特别注意：dicebear API 的路径格式是 /9.x/dylan/svg，所以需要检查路径中包含 /svg
    final isSvg = path.toLowerCase().endsWith('.svg') || 
                  path.toLowerCase().contains('/svg') ||
                  path.toLowerCase().contains('/svg/') ||
                  lowerUrl.contains('.svg?') ||
                  lowerUrl.contains('/svg?') ||
                  (lowerUrl.contains('dicebear.com') && lowerUrl.contains('/svg')) ||
                  (uri != null && uri.queryParameters.containsKey('format') && uri.queryParameters['format']?.toLowerCase() == 'svg');
    
    print('[ImageUtil] URL: $url, isSvg: $isSvg, path: $path, lowerUrl: $lowerUrl');
    
    if (isSvg) {
      // 使用 flutter_svg 加载 SVG
      return SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero,
          child: Builder(
            builder: (context) {
              try {
                return SvgPicture.network(
                  url,
                  width: width,
                  height: height,
                  fit: fit ?? BoxFit.cover,
                  placeholderBuilder: (context) => loadProgress
                      ? SizedBox(
                          width: width ?? 15.0,
                          height: height ?? 15.0,
                          child: Center(
                            child: SizedBox(
                              width: 15.0,
                              height: 15.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 1.5,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  semanticsLabel: 'SVG Image',
                  // 允许在视图框外绘制，这对于某些 SVG 很重要
                  allowDrawingOutsideViewBox: false,
                );
              } catch (e) {
                print('[ImageUtil] SVG 加载失败: $e');
                // SVG 加载失败时显示错误组件
                return errorWidget ??
                    (ImageRes.pictureError.toImage
                      ..width = width
                      ..height = height);
              }
            },
          ),
        ),
      );
    }
    
    // 非 SVG 格式使用 ExtendedImage
    return ExtendedImage.network(
      url,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      cacheWidth: _calculateCacheWidth(width, cacheWidth, lowMemory),
      cacheHeight: _calculateCacheHeight(height, cacheHeight, lowMemory),
      cacheRawData: true,
      clearMemoryCacheWhenDispose: clearMemoryCacheWhenDispose,
      handleLoadingProgress: true,
      clearMemoryCacheIfFailed: true,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            {
              final ImageChunkEvent? loadingProgress = state.loadingProgress;
              final double? progress = loadingProgress?.expectedTotalBytes != null
                  ? loadingProgress!.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                  : null;

              return SizedBox(
                width: 15.0,
                height: 15.0,
                child: loadProgress
                    ? Center(
                        child: SizedBox(
                          width: 15.0,
                          height: 15.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 1.5,
                            value: progress,
                          ),
                        ),
                      )
                    : null,
              );
            }
          case LoadState.completed:
            return null;
          case LoadState.failed:
            state.imageProvider.evict();
            return errorWidget ??
                (ImageRes.pictureError.toImage
                  ..width = width
                  ..height = height);
        }
      },
    );
  }

  static Widget fileImage({
    required File file,
    double? width,
    double? height,
    int? cacheWidth,
    int? cacheHeight,
    BoxFit? fit,
    bool loadProgress = true,
    bool clearMemoryCacheWhenDispose = false,
    bool lowMemory = false,
    Widget? errorWidget,
    BorderRadius? borderRadius,
  }) =>
      ExtendedImage.file(
        file,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        cacheWidth: _calculateCacheWidth(width, cacheWidth, lowMemory),
        cacheHeight: _calculateCacheHeight(height, cacheHeight, lowMemory),
        clearMemoryCacheWhenDispose: clearMemoryCacheWhenDispose,
        clearMemoryCacheIfFailed: true,
        cacheRawData: true,
        loadStateChanged: (ExtendedImageState state) {
          switch (state.extendedImageLoadState) {
            case LoadState.loading:
              {
                final ImageChunkEvent? loadingProgress = state.loadingProgress;
                final double? progress = loadingProgress?.expectedTotalBytes != null
                    ? loadingProgress!.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null;

                return SizedBox(
                  width: 15.0,
                  height: 15.0,
                  child: loadProgress
                      ? Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 1.5,
                            value: progress,
                          ),
                        )
                      : null,
                );
              }
            case LoadState.completed:
              return null;
            case LoadState.failed:
              state.imageProvider.evict();
              return errorWidget ?? ImageRes.pictureError.toImage;
          }
        },
      );

  static int? _calculateCacheWidth(
    double? width,
    int? cacheWidth,
    bool lowMemory,
  ) {
    if (!lowMemory) return null;
    if (null != cacheWidth) return cacheWidth;
    final maxW = .6.sw;
    return (width == null ? maxW : (width < maxW ? width : maxW)).toInt();
  }

  static int? _calculateCacheHeight(
    double? height,
    int? cacheHeight,
    bool lowMemory,
  ) {
    if (!lowMemory) return null;
    if (null != cacheHeight) return cacheHeight;
    final maxH = .6.sh;
    return (height == null ? maxH : (height < maxH ? height : maxH)).toInt();
  }
}
