import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';

class OpenCameraSheet extends StatefulWidget {
  const OpenCameraSheet({super.key});

  @override
  State<OpenCameraSheet> createState() => _OpenCameraSheetState();
}

class _OpenCameraSheetState extends State<OpenCameraSheet> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        homeController.isImageUploaded.value = true;
        Get.back();
      },
      child: Container(
        height: Get.height * 0.2,
        width: Get.width,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt,
              size: 45.sp,
              color: Colors.white,
            ),
            SizedBox(height: 10.h),
            Text(
              "Open Camera",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  decorationColor: Colors.white,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
