import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';

class OTPVerificationDialog extends StatefulWidget {
  const OTPVerificationDialog({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  State<OTPVerificationDialog> createState() => _OTPVerificationDialogState();
}

class _OTPVerificationDialogState extends State<OTPVerificationDialog> {
  bool isVerified = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent, // Remove the white border
      elevation: 0, // Remove shadow
      insetPadding: EdgeInsets.zero, // Remove default dialog padding
      child: GestureDetector(
          onTap: () {
            Get.back();
            widget.homeController.orderStart.value++;
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
            ),
            width: Get.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text(
                    "OTP Verification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                    "A 4 digit Delivery OTP code has been sent, Enter the \ncode to complete Delivery.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.sp, color: Colors.black)),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "OTP Verification",
                  style: TextStyle(fontSize: 12.sp, color: Colors.black),
                ),
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: const Color(0xFFF9F9F9),
                  enabledBorderColor: Color(0xFFF9F9F9),
                  focusedBorderColor: Color(0xFFF9F9F9),
                  fillColor: const Color(0xFFF9F9F9),
                  filled: true,
                  textStyle: TextStyle(color: Colors.black),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    setState(() {
                      isVerified = true;
                    });
                  }, // end onSubmit
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: isVerified
                          ? () {
                              Get.back();
                            }
                          : null,
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 20.w)),
                        backgroundColor: WidgetStateProperty.all(
                            isVerified ? Color(0xff1D7BD8) : Color(0xff8EBDEB)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        )),
                      ),
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          )),
    );
  }
}
