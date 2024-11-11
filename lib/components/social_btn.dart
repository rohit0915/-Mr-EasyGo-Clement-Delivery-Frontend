import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialBtn extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  const SocialBtn(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Colors.white),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.amber, width: 0.4.w),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Row(
          children: [
            Image.asset(image, height: 25.h),
            SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
