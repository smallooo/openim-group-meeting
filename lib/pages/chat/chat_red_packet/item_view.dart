import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

Widget buildItemView({
    String? label,
    Widget? icon,
    bool showRightArrow = false,
    String? leftHintText,
    String? rightHintText,
    double? height,
    Function()? onTap,
    TextEditingController? leftController,
    TextEditingController? rightController,
    Color? color,
    Widget? widget,
    List<TextInputFormatter>? inputFormatters,
  }) => Padding(padding: EdgeInsets.symmetric(horizontal: 0.w),child:
      Ink(
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: color ?? Styles.c_FFFFFF,
              borderRadius: BorderRadius.circular(5), 
            ),
            height: height ?? 60.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                if (icon != null) ...[
                  icon,
                  8.horizontalSpace,
                ],
                if (label != null) ...[
                label.toText..style = Styles.ts_0C1C33_17sp,],
                if (leftHintText != null) ...[
                  IntrinsicWidth(
                    child: TextField(
                      controller: leftController,
                      decoration: InputDecoration(
                        hintText: leftHintText,
                        border: InputBorder.none,
                        isDense: true, 
                        contentPadding: EdgeInsets.zero, 
                      ),
                      style: Styles.ts_0C1C33_17sp,
                    ),
                  ),
                ],
                const Spacer(),
                if (showRightArrow||widget!=null) 
                  widget ?? (ImageRes.downExpand.toImage..width = 12.w..height = 12.h),
                if (rightHintText!=null) ...[
                  IntrinsicWidth(
                    child: TextField(
                      controller: rightController,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters:inputFormatters ?? [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                      hintText: rightHintText ,
                      border: InputBorder.none,
                    ),
                    style: Styles.ts_0C1C33_17sp,
                    textAlign: TextAlign.right,
                    ),
                  ),
            ],
              ],
            ),
          ),
        ),
      ));