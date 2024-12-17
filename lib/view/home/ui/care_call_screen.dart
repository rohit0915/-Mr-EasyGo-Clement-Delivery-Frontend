import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CareCallScreen extends StatelessWidget {
  const CareCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          transform: GradientRotation(-0.3),
          colors: [Color(0xff343951), Color(0xff505266)],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
        child: Center(
          child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset("assets/images/care_call.png")),
        ),
      ),
    );
  }
}
