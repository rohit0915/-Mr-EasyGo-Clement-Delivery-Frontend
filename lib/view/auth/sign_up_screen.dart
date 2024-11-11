import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';

import '../../components/first_btn.dart';
import '../../components/social_btn.dart';
import '../home/tab_screen.dart';
import '../kyc/profile_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isLoginWithNumber = true;

  bool isViewPassword = true;

  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
                  "Sign Up Using Number or email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 10.h),
                          ),
                          elevation:
                              WidgetStatePropertyAll(isLoginWithNumber ? 5 : 0),
                          shadowColor:
                              const WidgetStatePropertyAll(Colors.black),
                          backgroundColor: WidgetStatePropertyAll(
                              isLoginWithNumber
                                  ? Colors.amber
                                  : const Color(0xffF5F4F0)),
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
                          setState(() {
                            isLoginWithNumber = true;
                          });
                        },
                        child: Text(
                          "Mobile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isLoginWithNumber
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 10.h),
                          ),
                          elevation: WidgetStatePropertyAll(
                              !isLoginWithNumber ? 5 : 0),
                          shadowColor:
                              const WidgetStatePropertyAll(Colors.black),
                          backgroundColor: WidgetStatePropertyAll(
                              !isLoginWithNumber
                                  ? Colors.amber
                                  : const Color(0xffF5F4F0)),
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
                          setState(() {
                            isLoginWithNumber = false;
                          });
                        },
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: !isLoginWithNumber
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                homeController.isOnlyHelper.isTrue
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.h),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              hintText: "First Name",
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: const Color(0xffF5F4F0),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Last Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.h),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              hintText: "Last Name",
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: const Color(0xffF5F4F0),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            !isLoginWithNumber
                                ? "Mobile Number"
                                : "Email Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.h),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          !isLoginWithNumber
                              ? TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.phone,
                                        color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none),
                                    hintText: "Mobile Number",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: const Color(0xffF5F4F0),
                                  ),
                                )
                              : TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.email_outlined,
                                        color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none),
                                    hintText: "Email",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: const Color(0xffF5F4F0),
                                  ),
                                ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      )
                    : Container(),
                Text(
                  isLoginWithNumber ? "Mobile Number" : "Email Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
                ),
                SizedBox(
                  height: 10.h,
                ),
                isLoginWithNumber
                    ? TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.phone, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintText: "Mobile Number",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: const Color(0xffF5F4F0),
                        ),
                      )
                    : TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintText: "Email",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: const Color(0xffF5F4F0),
                        ),
                      ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  obscureText: isViewPassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded,
                        color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: const Color(0xffF5F4F0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isViewPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isViewPassword = !isViewPassword;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: SizedBox(
                    width: 320.w,
                    child: FirstBtn(
                        text: "SIGN UP",
                        onTap: () {
                          homeController.isHelper.isTrue
                              ? homeController.isOnlyHelper.isTrue
                                  ? Get.to(() => const TabScreen())
                                  : Get.to(() => const ProfileScreen())
                              : Get.to(() => const ProfileScreen());
                        }),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text("Or"),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
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
                  height: 20.h,
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
        ),
      ),
    );
  }
}
