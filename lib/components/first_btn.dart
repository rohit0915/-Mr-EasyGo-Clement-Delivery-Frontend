import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FirstBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;
  final Color? borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? elevation;
  final bool? centerAlign;
  final EdgeInsets? padding;
  final Widget? child;
  const FirstBtn({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.borderRadius,
    this.borderColor,
    this.prefixIcon,
    this.elevation,
    this.centerAlign,
    this.padding,
    this.child,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Get.theme.cardColor,
          foregroundColor: textColor ?? Colors.white,
          textStyle: TextStyle(
              fontSize: fontSize ?? 18.sp,
              fontWeight: FontWeight.bold,
              color: textColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.h),
            side: borderColor != null
                ? BorderSide(color: borderColor!, width: 1.0)
                : BorderSide.none,
          ),
          padding: padding ??
              EdgeInsets.symmetric(
                vertical: 12.h,
                horizontal: 30.w,
              ),
          elevation: elevation),
      child: child ??
          (prefixIcon == null
              ? suffixIcon == null
                  ? Text(text)
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: centerAlign == null
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                              fontSize: fontSize ?? 18.sp, color: textColor),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        suffixIcon!,
                      ],
                    )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: centerAlign == null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    prefixIcon!,
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: fontSize ?? 18.sp, color: textColor),
                    )
                  ],
                )),
      onPressed: () {
        onTap();
      },
    );
  }
}
