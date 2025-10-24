import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

import '../../../tk_app/core/utils/openim_helper.dart';

/// 商品分享卡片组件
class ProductShareCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final Message message;
  final VoidCallback? onTap;

  const ProductShareCard({
    super.key,
    required this.data,
    required this.message,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    print('🎨 构建商品分享卡片，数据: $data');
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 250.w, // 限制最大宽度
        ),
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: const Color(0xFFF9F9F9), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 标题
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.purple,
                  size: 16.sp,
                ),
                SizedBox(width: 6.w),
                Text(
                  '商品',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 8.h),
            
            // 商品名称
            SizedBox(
              width: double.infinity,
              child: Text(
                data['productName']?.toString() ?? '商品名称',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            
            SizedBox(height: 4.h),
            
            // 价格
            Text(
              '¥${data['price']?.toString() ?? '0'}',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            
            // 品牌信息
            if (data['brandName'] != null && data['brandName'].toString().isNotEmpty) ...[
              SizedBox(height: 4.h),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '品牌: ${data['brandName'].toString()}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
            
            // 店铺信息
            if (data['shopName'] != null && data['shopName'].toString().isNotEmpty) ...[
              SizedBox(height: 4.h),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '店铺: ${data['shopName'].toString()}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],


          ],
        ),
      ),
    );
  }
}

/// 商品订单卡片组件
class ProductInquiryCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final Message message;
  final VoidCallback? onTap;

  const ProductInquiryCard({
    super.key,
    required this.data,
    required this.message,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // 检查是否显示"去支付"标签
    final String? currentUserId = OpenIMHelper.getCurrentUserID();
    final String? messageUserId = data['userOpenimUserId']?.toString();
    final bool shouldShowPayButton = currentUserId != null && 
                                   messageUserId != null && 
                                   currentUserId == messageUserId;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 250.w, // 限制最大宽度
        ),
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          // border: Border.all(color: Colors.blue.shade200, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.blue.shade700,
                  size: 16.sp,
                ),
                SizedBox(width: 6.w),
                Text(
                  '支付订单',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            SizedBox(
              width: double.infinity,
              child: Text(
                data['productName']?.toString() ?? '支付订单',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (data['description'] != null && data['description'].toString().isNotEmpty) ...[
              SizedBox(height: 4.h),
              SizedBox(
                width: double.infinity,
                child: Text(
                  data['description'].toString(),
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.grey.shade600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],

            // 价格和支付按钮行
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // 价格
                Text(
                  '¥${data['price']?.toString() ?? '0'}',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                
                // 去支付标签
                if (shouldShowPayButton) ...[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: const Color(0xFF9E13F7),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      '去支付',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
