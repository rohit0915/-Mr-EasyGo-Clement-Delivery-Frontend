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
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "Help & Support",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.amber),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Search Issue',
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                          filled: true,
                          fillColor: Color(0xffF7F5F2),
                          border: InputBorder.none),
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
                  const ExpansionTile(
                    collapsedBackgroundColor: Color(0xffF7F5F2),
                    title: Text(
                      "What is Lorem Ipsum?",
                    ),
                    children: [Text("What is Lorem Ipsum?")],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const ExpansionTile(
                    collapsedBackgroundColor: Color(0xffF7F5F2),
                    title: Text(
                      "What is Lorem Ipsum?",
                    ),
                    children: [Text("What is Lorem Ipsum?")],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const ExpansionTile(
                    collapsedBackgroundColor: Color(0xffF7F5F2),
                    title: Text(
                      "What is Lorem Ipsum?",
                    ),
                    children: [Text("What is Lorem Ipsum?")],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const ChatScreen(
                title: "Chat Helper",
              ));
        },
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset("assets/images/chat.png"),
      ),
    );
  }
}
