import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
              "Edit Profile",
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
                "NAME",
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
                        Text("Shreya Joseph",
                            style: TextStyle(fontSize: 15.sp)),
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
                "MOBILE NUMBER",
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
                        Text("9458554785", style: TextStyle(fontSize: 15.sp)),
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
                "EMAIL ADDRESS",
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
                        Text("example@gmail.com",
                            style: TextStyle(fontSize: 15.sp)),
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
                "ID",
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
                        Text("EG154", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "JOINING DATE",
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
                        Text("05-Sept-2024", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "PREFERRED LANGUAGE",
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
                        Text("English", style: TextStyle(fontSize: 15.sp)),
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
                "SERVICE ZONE",
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
                        Text("Germany, Cambridge Street",
                            style: TextStyle(fontSize: 15.sp)),
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
            ],
          ),
        ),
      ),
    );
  }
}
