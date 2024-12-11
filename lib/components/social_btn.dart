import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
          backgroundColor:
              WidgetStatePropertyAll(Get.theme.scaffoldBackgroundColor),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 1.w),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Image.asset(image, height: 25.h),
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
