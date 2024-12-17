import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../components/first_btn.dart';
import '../intro/get_controllers/login_screen_get_controller.dart';
import 'change_otp_verification_screen.dart';

class ChangeLoginScreen extends StatefulWidget {
  const ChangeLoginScreen({super.key});

  @override
  State<ChangeLoginScreen> createState() => _ChangeLoginScreenState();
}

class _ChangeLoginScreenState extends State<ChangeLoginScreen> {
  LoginScreenGetController getController = Get.put(LoginScreenGetController());
  final TextEditingController _controller = TextEditingController();

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change Password \nUsing Number or email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Obx(() {
                      return ElevatedButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 10.h),
                          ),
                          elevation: WidgetStatePropertyAll(
                              getController.isLoginWithNumber.value ? 5 : 0),
                          shadowColor:
                              const WidgetStatePropertyAll(Colors.grey),
                          backgroundColor: WidgetStatePropertyAll(
                              getController.isLoginWithNumber.value
                                  ? Get.theme.cardColor
                                  : Get.theme.secondaryHeaderColor),
                          shape: const WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          getController.isLoginWithNumber.value = true;
                        },
                        child: Text(
                          "Mobile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16.sp),
                        ),
                      );
                    }),
                  ),
                  Expanded(
                    child: Obx(() {
                      return ElevatedButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 10.h),
                          ),
                          elevation: WidgetStatePropertyAll(
                              !getController.isLoginWithNumber.value ? 5 : 0),
                          shadowColor:
                              const WidgetStatePropertyAll(Colors.grey),
                          backgroundColor: WidgetStatePropertyAll(
                              !getController.isLoginWithNumber.value
                                  ? Get.theme.cardColor
                                  : Get.theme.secondaryHeaderColor),
                          shape: const WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          getController.isLoginWithNumber.value = false;
                        },
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16.sp),
                        ),
                      );
                    }),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Obx(() {
                return Text(
                  getController.isLoginWithNumber.value
                      ? "Mobile Number"
                      : "Email Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
                );
              }),
              SizedBox(
                height: 10.h,
              ),
              Obx(() {
                return getController.isLoginWithNumber.value
                    ? TextFormField(
                        controller: _controller,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixText: _controller.text.isNotEmpty ? "+91 " : "",
                          prefixStyle: TextStyle(
                              color: _controller.text.isNotEmpty
                                  ? Colors.white
                                  : Colors.grey,
                              fontSize: 15.sp),
                          hintText: "+91 Enter Mobile Number",
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                        onChanged: (value) {
                          setState(() {});
                        },
                      )
                    : TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          prefixIcon:
                              Icon(Icons.email_outlined, color: Colors.grey),
                          /* border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),*/
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      );
              }),
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
                      text: "GET OTP",
                      onTap: () async {
                        if (!await Permission.location.isGranted) {
                          await Permission.location.request();
                        }

                        Get.off(() => ChangeOtpVerificationScreen());
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
    );
  }
}
