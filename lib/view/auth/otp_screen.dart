import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:otp_input_editor/otp_input_editor.dart';

import 'reset_password_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_ios_new_rounded)),
                    Text(
                      "SKIP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "OTP Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "A 4 digit OTP code has been sent to ",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    const Text(
                      "+91 9999999999 ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
                const Text(
                  "enter the code to continue.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const Text("Verification Code"),
                OtpInputEditor(
                  obscureText: false,
                  otpLength: 4,
                  onOtpChanged: (value) {
                    // setState(() {
                    //   _otpData = value;
                    // });
                  },
                  onInitialization: (OtpInputController otpInputController) {
                    // setState(() {
                    //   _otpInputController = otpInputController;
                    // });
                  },
                  invalid: false,
                  otpTextFieldBackgroundColor: Colors.white,
                  cursorHeight: 25,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  fieldWidth: 20.h,
                  fieldHeight: 40.h,
                  cursorWidth: 1.5,
                  textInputStyle: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  boxDecoration: BoxDecoration(
                    color: const Color(0xffF6F5F1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trying to auto-fill OTP 00:10",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    const Text(
                      "Re-Send Code",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                    width: Get.width,
                    child: FirstBtn(
                        text: "NEXT",
                        onTap: () {
                          Get.to(() => const ResetPasswordScreen());
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
