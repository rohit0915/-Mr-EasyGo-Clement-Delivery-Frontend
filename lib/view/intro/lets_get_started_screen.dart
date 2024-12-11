import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/social_btn.dart';
import '../../components/first_btn.dart';
import '../auth/login_screen.dart';
import '../auth/sign_up_screen.dart';
import 'get_controllers/lets_get_started_get_controller.dart';

class LetsGetStartedScreen extends StatelessWidget {
  LetsGetStartedScreen({super.key});

  final LetsGetStartedGetController getController =
      Get.put(LetsGetStartedGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/easy_go_logo.png",
            width: 100.w,
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Let's Get Started",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.h,
              ),
              const Text("Let's dive into your account",
                  style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 20.h,
              ),
              SocialBtn(
                image: "assets/images/google.png",
                text: "Continue with Google",
                onTap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              SocialBtn(
                image: "assets/images/apple_white.png",
                text: "Continue with Apple",
                onTap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              SocialBtn(
                image: "assets/images/facebook.png",
                text: "Continue with Facebook",
                onTap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              SocialBtn(
                image: "assets/images/twitter_white.png",
                text: "Continue with Twitter",
                onTap: () {},
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                        child: FirstBtn(
                            text: "SIGN UP",
                            onTap: () {
                              Get.to(() => SignUpScreen());
                            })),
                  ],
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
                      text: "LOG IN",
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    )),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By proceeding further you agree to our ",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ),
                      const TextSpan(
                        text: "Terms & Conditions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ),
                      const TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ));
  }
}
