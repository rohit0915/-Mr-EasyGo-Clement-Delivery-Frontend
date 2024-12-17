import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/utility/constants.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
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
              "Documents",
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
                "National ID card details",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child:
                        Image.asset("assets/images/id.png", fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        showPhotoUploadBottomSheet(context);
                      },
                      child: Text(
                        "Front side of ID card",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 15.sp),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child:
                        Image.asset("assets/images/id.png", fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Back side of ID card",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Driver license details",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child: Image.asset("assets/images/driver_front.png",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Front side of Drive\nlicense",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child: Image.asset("assets/images/driver_back.png",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Back side of Driver\nlicense",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Passbook details",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child: Image.asset("assets/images/passbook.png",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Front side of\nPassbook",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child: Image.asset("assets/images/passbook.png",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Back side of\nPassbook",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Passport card details",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child: Image.asset("assets/images/passport.jpeg",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Front side of\nPassport",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: cardDecoration,
                    child: Image.asset("assets/images/passport.jpeg",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showPhotoUploadBottomSheet(context);
                    },
                    child: Text(
                      "Back side of\nPassport",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp),
                    ),
                  )
                ],
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
