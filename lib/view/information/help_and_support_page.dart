import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../chat/chat_screen.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({super.key});

  @override
  State<HelpAndSupportPage> createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(50.h),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Get.theme.primaryColor,
                      Get.theme.secondaryHeaderColor
                    ],
                  ),
                ),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  title: Text(
                    "Help & Support",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          transform: GradientRotation(-0.3),
                          colors: [Color(0xff2E2F59), Color(0xff4A5174)],
                        ),
                        borderRadius: BorderRadius.circular(
                            8), // Optional for rounded corners
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Search Issue',
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors
                                .white, // Adjust icon color to match the gradient
                          ),
                          filled: true,
                          fillColor: Colors
                              .transparent, // Transparent since gradient is applied
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.white54), // Adjust hint color
                        ),
                        style: const TextStyle(
                            color: Colors.white), // Adjust text color
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Lorem Ipsum",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(fontSize: 13.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "* Lorem ipsum dolor sit amet\n* Consectetur adipiscing elitsed\n* Do eiusmod tempor incididunt ut labore et dolore\n* magna aliqua Ut enim ad minim veniam\n* Oquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n* Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    style: TextStyle(fontSize: 13.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "FAQs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        transform: GradientRotation(-0.3),
                        colors: [Color(0xff2E2F59), Color(0xff4A5174)],
                      ),
                      borderRadius: BorderRadius.circular(
                          8), // Optional for rounded corners
                    ),
                    child: const ExpansionTile(
                      collapsedBackgroundColor: Colors
                          .transparent, // Ensure background blends with gradient
                      title: Text(
                        "What is Lorem Ipsum?",
                        style: TextStyle(
                            color: Colors.white), // Adjust title text color
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0), // Optional for spacing
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                                color: Colors.white), // Adjust child text color
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        transform: GradientRotation(-0.3),
                        colors: [Color(0xff2E2F59), Color(0xff4A5174)],
                      ),
                      borderRadius: BorderRadius.circular(
                          8), // Optional for rounded corners
                    ),
                    child: const ExpansionTile(
                      collapsedBackgroundColor: Colors
                          .transparent, // Ensure background blends with gradient
                      title: Text(
                        "What is Lorem Ipsum?",
                        style: TextStyle(
                            color: Colors.white), // Adjust title text color
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0), // Optional for spacing
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                                color: Colors.white), // Adjust child text color
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        transform: GradientRotation(-0.3),
                        colors: [Color(0xff2E2F59), Color(0xff4A5174)],
                      ),
                      borderRadius: BorderRadius.circular(
                          8), // Optional for rounded corners
                    ),
                    child: const ExpansionTile(
                      collapsedBackgroundColor: Colors
                          .transparent, // Ensure background blends with gradient
                      title: Text(
                        "What is Lorem Ipsum?",
                        style: TextStyle(
                            color: Colors.white), // Adjust title text color
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0), // Optional for spacing
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                                color: Colors.white), // Adjust child text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const ChatScreen(
                title: "Testing",
              ));
        },
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          "assets/images/chat.png",
          color: Colors.black,
        ),
      ),
    );
  }
}
