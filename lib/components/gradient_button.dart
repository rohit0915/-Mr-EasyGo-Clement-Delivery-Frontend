import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xffFB812F),
              Color(0xffF8005E),
              Color(0xffD5018F)
            ]),
            borderRadius: BorderRadius.circular(25.0)),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
