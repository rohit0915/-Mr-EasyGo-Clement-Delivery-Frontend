import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/first_btn.dart';
import '../intro/get_controllers/login_screen_get_controller.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  LoginScreenGetController getController = Get.put(LoginScreenGetController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((time) {
      getController.isOtp.value = false;
    });
  }

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Change Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  color: const Color(0xff414463),
                  child: Text(
                    "Enter old password",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xff414463),
                      hintText: "Old Password *",
                      hintStyle: TextStyle(color: Colors.white),
                      border: null,
                      focusedBorder: null,
                      enabledBorder: null),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  color: const Color(0xff414463),
                  child: Text(
                    "Enter a new password",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xff414463),
                      hintText: "New Password *",
                      hintStyle: TextStyle(color: Colors.white),
                      border: null,
                      focusedBorder: null,
                      enabledBorder: null),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  color: const Color(0xff414463),
                  child: Text(
                    "Confirm your new password",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xff414463),
                      hintText: "New Password *",
                      hintStyle: TextStyle(color: Colors.white),
                      border: null,
                      focusedBorder: null,
                      enabledBorder: null),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: SizedBox(
                    width: 320.w,
                    child: FirstBtn(
                        text: "CONFIRM PASSWORD",
                        onTap: () async {
                          Get.back();
                        }),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
