import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';

import '../../../components/first_btn.dart';
import 'forget_change_password_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen(
      {super.key, required this.isForgetPassword, required this.isSignUp});

  final bool isForgetPassword;
  final bool isSignUp;

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
      body: ListView(
        padding: EdgeInsets.all(20.w),
        children: [
          Text(
            "OTP Verification",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 12.sp),
              children: const [
                TextSpan(
                  text: "A 4 digit OTP code has been sent to ",
                  style: TextStyle(),
                ),
                TextSpan(
                  text: "example@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " enter the code to continue.",
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Text("Verification Code"),
          SizedBox(
            height: 10.h,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: const Color(0xFF512DA8),
            fillColor: Get.theme.secondaryHeaderColor,
            filled: true,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Trying to auto-fill OTP ",
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: "00:10",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Text(
                "Re-Send Code",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          FirstBtn(
              text: "NEXT",
              onTap: () {
                if (widget.isForgetPassword) {
                  Get.to(() => const ForgetChangePasswordScreen());
                } else if (widget.isSignUp) {
                  Get.to(() => const ForgetChangePasswordScreen());
                } else {
                  Get.offAll(() => const TabScreen());
                }
              })
        ],
      ),
    );
  }
}
