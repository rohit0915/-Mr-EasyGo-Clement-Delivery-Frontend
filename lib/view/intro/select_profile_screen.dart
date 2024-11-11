import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/auth/sign_up_screen.dart';
import 'package:muvit_driver/view/intro/select_helper_screen.dart';

import '../../controller/home_controller.dart';

class SelectProfileScreen extends StatefulWidget {
  const SelectProfileScreen({super.key});
 
  State<SelectProfileScreen> createState() => _SelectProfileScreenState();
}

class _SelectProfileScreenState extends State<SelectProfileScreen> {
  HomeController homeController = Get.find();
  int value = -1;

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
              "Select your profile",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            Material(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: RadioListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                activeColor: Colors.amber,
                value: 0,
                groupValue: value,
                onChanged: (groupValue) {
                  value = groupValue!;
                  homeController.isHelper.value = false;
                  setState(() {});
                  Timer(
                    const Duration(seconds: 1),
                    () {
                      Get.to(() => const SignUpScreen());
                    },
                  );
                },
                title: Text(
                  "Driver",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Material(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: RadioListTile(
                value: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                activeColor: Colors.amber,
                groupValue: value,
                onChanged: (groupValue) {
                  value = groupValue!;
                  homeController.isHelper.value = true;
                  setState(() {});
                  Timer(
                    const Duration(seconds: 1),
                    () {
                      Get.to(() => const SelectHelperScreen());
                    },
                  );
                },
                title: Text(
                  "Helper",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.5,
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
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    )));
  }
}
