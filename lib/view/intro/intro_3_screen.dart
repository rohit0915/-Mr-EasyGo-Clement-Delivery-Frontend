import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../auth/sign_up_screen.dart';
import 'get_controllers/intro_3_get_controller.dart';

class Intro3Screen extends StatelessWidget {
  Intro3Screen({super.key});

  final Intro3GetController getController = Get.put(Intro3GetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/intro_city_background_outline.png"),
            Positioned.fromRelativeRect(
                rect: RelativeRect.fromLTRB(0, 350.h, 0, 0),
                child: Image.asset(
                  "assets/images/inro_dark_background.png",
                  fit: BoxFit.contain,
                )),
            Positioned.fromRelativeRect(
                rect: RelativeRect.fromLTRB(0, 10.h, 0, 0),
                child: Image.asset("assets/images/image 3.png")),
            Positioned.fromRelativeRect(
              rect: RelativeRect.fromLTRB(0, 450.h, 0, 120.h),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  color: Color(0xFF535353),
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.5), width: 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Goods Sending Made Smooth",
                      style: Get.textTheme.bodyMedium!
                          .copyWith(color: Color(0xff85DDFC)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                        "Get Faster Anywhere and Everywhere you will need to Go , Easy Booking and Comfortable Ride Experience",
                        style: Get.textTheme.bodySmall),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Image.asset("assets/images/easy_go_logo.png")),
                      SizedBox(
                        width: 30.w,
                      ),
                      Expanded(
                          child: GestureDetector(
                              onTap: () {
                                Get.offAll(() => SignUpScreen());
                              },
                              child: Image.asset(
                                  "assets/images/skip_button.png"))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Text("Send Goods Anywhere Forever",
                          style: TextStyle(
                            fontSize: 15.sp,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
