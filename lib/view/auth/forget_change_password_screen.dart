import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/auth/update_password_screen.dart';

import '../../components/first_btn.dart';
import '../intro/get_controllers/login_screen_get_controller.dart';

class ForgetChangePasswordScreen extends StatefulWidget {
  const ForgetChangePasswordScreen({super.key});

  @override
  State<ForgetChangePasswordScreen> createState() =>
      _ForgetChangePasswordScreenState();
}

class _ForgetChangePasswordScreenState
    extends State<ForgetChangePasswordScreen> {
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
                  "Reset Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text("Enter a new password"),
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
                          Get.to(() => const UpdatePasswordScreen());
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
