import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/view/auth/login_screen.dart';
import 'package:muvit_driver/view/intro/select_profile_screen.dart';

import '../../components/second_btn.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3F9),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/intro_bg.png",
                    fit: BoxFit.fill,
                    width: Get.width,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/google.png", width: 50.w),
                        Image.asset("assets/images/apple.png", width: 50.w),
                        Image.asset("assets/images/facebook.png", width: 50.w),
                        Image.asset("assets/images/x.png", width: 50.w),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Row(
                      children: [
                        const Expanded(child: Divider()),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("Or", style: TextStyle(fontSize: 16.sp)),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: FirstBtn(
                          text: "Sign Up",
                          onTap: () {
                            Get.to(() => const SelectProfileScreen());
                          })),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: SecondBtn(
                        text: "Login",
                        onTap: () {
                          Get.to(() => const LoginScreen());
                        },
                      )),
                ],
              ),
            ),
            Positioned(
                top: Get.height * 0.1,
                child: SizedBox(
                    width: Get.width,
                    child: Image.asset("assets/images/intro.png"))),
          ],
        ),
      ),
    );
  }
}
