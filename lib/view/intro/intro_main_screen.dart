import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/intro/intro_1_screen.dart';
import 'package:muvit_driver/view/intro/intro_2_screen.dart';
import 'package:muvit_driver/view/intro/intro_3_screen.dart';

import 'get_controllers/intro_main_get_controller.dart';
import 'lets_get_started_screen.dart';

class IntroMainScreen extends StatelessWidget {
  IntroMainScreen({super.key});

  final IntroMainGetController getController =
      Get.put(IntroMainGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Obx(() {
              return getController.currentPage.value == 0
                  ? Intro1Screen()
                  : getController.currentPage.value == 1
                      ? Intro2Screen()
                      : getController.currentPage.value == 2
                          ? Intro3Screen()
                          : Container();
            }),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        width: 7.w,
                        height: 7.w,
                        decoration: BoxDecoration(
                          color: index == getController.currentPage.value
                              ? Colors.white
                              : Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      );
                    }),
                  );
                }),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    if (getController.currentPage.value < 2) {
                      getController.currentPage.value++;
                    } else {
                      Get.offAll(() => LetsGetStartedScreen());
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.grey.shade100,
                          Colors.grey.shade100,
                          Colors.white
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13.r)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Let’s Gooo",
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.black)),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image.asset(
                          "assets/images/steering_wheel.png",
                          height: 14.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
