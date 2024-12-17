import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VehicleDetailScreen extends StatefulWidget {
  const VehicleDetailScreen({super.key});

  @override
  State<VehicleDetailScreen> createState() => _VehicleDetailScreenState();
}

class _VehicleDetailScreenState extends State<VehicleDetailScreen> {
  bool isToday = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Get.theme.primaryColor, Get.theme.secondaryHeaderColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Vehicle Detail",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "vehicle manufacturer".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("Ford", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                        Image.asset(
                          "assets/images/edit_icon.png",
                          height: 15.h,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "CAR NUMBER".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("33WB14789", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                        Image.asset(
                          "assets/images/edit_icon.png",
                          height: 15.h,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "vehicle model".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("2024", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                        Image.asset(
                          "assets/images/edit_icon.png",
                          height: 15.h,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "EXPIRY DATE OF YOUR Diving license".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("2036", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                        Image.asset(
                          "assets/images/edit_icon.png",
                          height: 15.h,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "photos of the vehicle".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  showPhotoUploadBottomSheet(context);
                },
                child: Image.asset(
                  "assets/images/profile_photo.png",
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showPhotoUploadBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Upload From',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff383D61)),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.close))
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // Implement camera functionality here
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/camera.png",
                          height: 40.h,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Camera',
                          style: TextStyle(
                              color: const Color(0xff383D61),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xff383D61)),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // Implement file picker functionality here
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/file.png",
                          height: 40.h,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Files',
                          style: TextStyle(
                              color: const Color(0xff383D61),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xff383D61)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
