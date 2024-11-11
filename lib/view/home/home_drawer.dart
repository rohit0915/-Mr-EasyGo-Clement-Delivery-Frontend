import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/information/device_language.dart';
import 'package:muvit_driver/view/intro/intro_screen.dart';

import '../../controller/home_controller.dart';
import '../../utility/constants.dart';
import '../information/help_and_support_page.dart';
import '../information/legat_information_screen.dart';
import '../notification/notification_screen.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 280.w,
      child: Column(
        children: [
          Container(
            height: 170.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  secondaryColor,
                  mainColor,
                ],
                transform: GradientRotation(-0.2),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20.sp,
                          ))),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    SizedBox(width: 10.h),
                    GestureDetector(
                      onTap: () {
                        homeController.currentIndex.value = 3;
                      },
                      child: Container(
                        height: 70.h,
                        width: 70.h,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.white, width: 2),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/user.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: ListTile(
                          title: GestureDetector(
                            onTap: () {
                              homeController.currentIndex.value = 3;
                            },
                            child: GestureDetector(
                              onTap: () {
                                homeController.currentIndex.value = 3;
                              },
                              child: Text(
                                "John Doe",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                            ),
                          ),
                          subtitle: GestureDetector(
                            onTap: () {
                              homeController.currentIndex.value = 3;
                            },
                            child: Text(
                              "My Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(
                          color: const Color(0xffAE1375), fontSize: 17.sp),
                    ),
                    leading: Image.asset("assets/images/drawer1.png"),
                    onTap: () {
                      homeController.currentIndex.value = 0;
                      Get.back();
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Notification",
                      style: TextStyle(
                          color: const Color(0xffAE1375), fontSize: 18.sp),
                    ),
                    leading: Image.asset("assets/images/drawer2.png"),
                    onTap: () {
                      Get.to(() => const NotificationScreen());
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Status",
                      style: TextStyle(
                          color: const Color(0xffAE1375), fontSize: 18.sp),
                    ),
                    leading: Image.asset("assets/images/drawer3.png"),
                    onTap: () {
                      homeController.currentIndex.value = 3;
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Help & Support",
                      style: TextStyle(
                          color: const Color(0xffAE1375), fontSize: 18.sp),
                    ),
                    leading: Image.asset("assets/images/drawer4.png"),
                    onTap: () {
                      Get.to(() => const HelpAndSupportPage());
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Device Language",
                      style: TextStyle(
                          color: const Color(0xffAE1375), fontSize: 18.sp),
                    ),
                    leading: Image.asset("assets/images/drawer5.png"),
                    onTap: () {
                      Get.to(() => const DeviceLanguage());
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Legal Information",
                      style: TextStyle(
                          color: const Color(0xffAE1375), fontSize: 18.sp),
                    ),
                    leading: Image.asset("assets/images/drawer6.png"),
                    onTap: () {
                      Get.to(() => const LegalInformationScreen());
                    },
                  ),
                  SizedBox(height: 30.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.login, color: Colors.amber),
                        style: ButtonStyle(
                          side: WidgetStatePropertyAll(
                            BorderSide(color: Colors.amber, width: 1.w),
                          ),
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.offAll(() => const IntroScreen());
                        },
                        label: Padding(
                          padding: EdgeInsets.all(10.h),
                          child: const Text(
                            "Logout",
                            style: TextStyle(color: Colors.amber),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
