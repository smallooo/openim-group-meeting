import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/version/check_version.dart';

/// 应用更新弹框
class UpdateDialog extends StatelessWidget {
  /// 更新信息
  final CheckUpdateData updateData;

  const UpdateDialog({
    super.key,
    required this.updateData,
  });

  @override
  Widget build(BuildContext context) {
    final bool isForceUpdate = updateData.forceUpdate;

    return WillPopScope(
      onWillPop: () async {
        // 如果是强制更新，不允许关闭
        return !isForceUpdate;
      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Container(
          padding: EdgeInsets.all(24.w),
          constraints: BoxConstraints(
            maxWidth: 320.w,
            maxHeight: MediaQuery.of(context).size.height * 0.7,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题
              Text(
                '发现新版本',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16.h),

              // 版本号
              if (updateData.latestVersionName.isNotEmpty)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Text(
                    '最新版本：${updateData.latestVersionName}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              SizedBox(height: 16.h),

              // 更新内容
              if (updateData.changelog.isNotEmpty) ...[
                Text(
                  '更新内容：',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8.h),
                Flexible(
                  child: SingleChildScrollView(
                    child: Text(
                      updateData.changelog,
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black54,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ],

              SizedBox(height: 24.h),

              // 按钮区域
              Row(
                children: [
                  // 如果不是强制更新，显示取消按钮
                  if (!isForceUpdate) ...[
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          side: BorderSide(color: Colors.grey.shade400),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: Text(
                          '取消',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                  ],

                  // 更新按钮
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        // 跳转到外部浏览器打开下载链接
                        final url = Uri.parse(updateData.downloadUrl);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                          // 如果是强制更新，不关闭弹框（用户无法取消）
                          // 如果不是强制更新，关闭弹框
                          if (!isForceUpdate) {
                            Navigator.of(context).pop(true);
                          }
                        } else {
                          // 无法打开链接，显示错误提示
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('无法打开下载链接'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Text(
                        '更新',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 显示更新弹框
  static Future<bool?> show({
    required BuildContext context,
    required CheckUpdateData updateData,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: !updateData.forceUpdate, // 强制更新时不允许点击外部关闭
      builder: (context) => UpdateDialog(updateData: updateData),
    );
  }
}

