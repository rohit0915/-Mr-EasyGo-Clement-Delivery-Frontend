import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';

import 'second_profile_detail_screen.dart';

class FirstProfileDetailScreen extends StatefulWidget {
  const FirstProfileDetailScreen({super.key});

  @override
  State<FirstProfileDetailScreen> createState() =>
      _FirstProfileDetailScreenState();
}

class _FirstProfileDetailScreenState extends State<FirstProfileDetailScreen> {
  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/easy_go_logo.png",
          height: 30.h,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Profile Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Select Gender",
                style: TextStyle(fontSize: 17.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = "male";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: selectedGender == "male" ? Colors.white : null,
                        gradient: selectedGender == "male"
                            ? null
                            : const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                transform: GradientRotation(-0.3),
                                colors: [Color(0xff383A61), Color(0xff5B6482)],
                              ),
                        borderRadius: BorderRadius.circular(22.r),
                        border: Border.all(color: Colors.white, width: 0.2),
                      ),
                      child: Image.asset(
                        "assets/images/male.png",
                        height: 100.h,
                        fit: BoxFit.cover,
                        color: selectedGender == "male"
                            ? const Color(0xFF403c5c)
                            : null,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = "female";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: selectedGender == "female" ? Colors.white : null,
                        gradient: selectedGender == "female"
                            ? null
                            : const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                transform: GradientRotation(-0.3),
                                colors: [Color(0xff383A61), Color(0xff5B6482)],
                              ),
                        borderRadius: BorderRadius.circular(22.r),
                        border: Border.all(color: Colors.white, width: 0.2),
                      ),
                      child: Image.asset(
                        "assets/images/female.png",
                        height: 100.h,
                        fit: BoxFit.cover,
                        color: selectedGender == "female"
                            ? const Color(0xFF403c5c)
                            : null,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Enter your name",
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Date of birth",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Enter your vehicle detail",
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Vehicle Manufacturer",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Car number",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Vehicle Model",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Vehicle Manufacturer year",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Attach photos of the vehicle",
                style: TextStyle(fontSize: 16.sp),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                        child: FirstBtn(
                            text: "NEXT",
                            onTap: () {
                              Get.to(() => SecondProfileDetailScreen());
                            })),
                  ],
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
