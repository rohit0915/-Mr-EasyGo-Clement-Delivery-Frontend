import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';

import '../../components/second_btn.dart';
import '../../components/social_btn.dart';
import '../auth/login_screen.dart';
import '../auth/sign_up_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.asset("assets/images/logo_mini.png",
                        height: 70.h),
                  ),
                  Positioned(
                    right: 15.h,
                    top: 25.h,
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Let's Get Started!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Let's dive into your account",
                style: TextStyle(fontSize: 14.sp),
              ),
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
                image: "assets/images/apple.png",
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
                image: "assets/images/x.png",
                text: "Continue with Twitter",
                onTap: () {},
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                  width: Get.width * 0.9,
                  child: FirstBtn(
                      text: "SIGN UP",
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      })),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  width: Get.width * 0.9,
                  child: SecondBtn(
                      text: "LOG IN",
                      onTap: () {
                        Get.to(() => LoginScreen());
                      })),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By proceeding further you agree to our",
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  const Text(
                    " Terms & conditions",
                    style: TextStyle(color: Color(0xffD12794)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("and", style: TextStyle(fontSize: 10.sp)),
                  const Text(
                    " Privacy Policy",
                    style: TextStyle(color: Color(0xffD12794)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
