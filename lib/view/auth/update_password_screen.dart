import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/utility/constants.dart';

import '../home/tab_screen.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
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
                  "Update Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Center(child: Image.asset("assets/images/tick.png")),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text(
                    "Success!",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text(
                    "Your Password has been changed!",
                    style: TextStyle(fontSize: 14.h),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const TabScreen());
                      },
                      style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 6.h, horizontal: 30.h)),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side:
                                const BorderSide(color: mainColor, width: 1.5),
                          ),
                        ),
                      ),
                      child: Text(
                        "Done",
                        style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.sp),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
