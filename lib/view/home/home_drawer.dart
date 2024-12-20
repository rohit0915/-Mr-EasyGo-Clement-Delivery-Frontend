import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/notification/notification_screen.dart';

import '../../../controller/home_controller.dart';
import '../dialog/logout_alert_dialog.dart';
import '../information/device_language.dart';
import 'invite_and_reffer_page.dart';

class HomeDrawer extends StatelessWidget {
  HomeController homeController = Get.find();

  HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280.w,
      backgroundColor: Get.theme.secondaryHeaderColor,
      child: Column(
        children: [
          Container(
            height: 170.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Get.theme.primaryColor,
                  Get.theme.secondaryHeaderColor,
                ],
                transform: const GradientRotation(-0.2),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                              onTap: () => Get.back(),
                              child: Image.asset("assets/images/cross.png"))),
                    ),
                    Expanded(
                        child: Image.asset(
                      "assets/images/easy_go_logo.png",
                      height: 20.h,
                    ))
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    SizedBox(width: 10.h),
                    GestureDetector(
                      onTap: () {
                        homeController.currentIndex.value = 3;
                        // homeController.scaffoldKey.value.currentState
                        //     ?.closeDrawer();
                      },
                      child: CircleAvatar(
                        radius: 35.h,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 33.h,
                          backgroundImage: const AssetImage(
                              "assets/images/drawer_profile_image.png"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: ListTile(
                          title: GestureDetector(
                            onTap: () {
                              homeController.currentIndex.value = 3;
                              // homeController.scaffoldKey.value.currentState
                              //     ?.closeDrawer();
                            },
                            child: GestureDetector(
                              onTap: () {
                                homeController.currentIndex.value = 3;
                                // homeController.scaffoldKey.value.currentState
                                //     ?.closeDrawer();
                              },
                              child: Text(
                                "XYZ AMCDC",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                            ),
                          ),
                          subtitle: GestureDetector(
                            onTap: () {
                              homeController.currentIndex.value = 3;
                              // homeController.scaffoldKey.value.currentState
                              //     ?.closeDrawer();
                            },
                            child: Text(
                              "+919876543210",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300),
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
          Container(
            width: double.infinity,
            height: 3,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [const Color(0xff8F8484), Get.theme.primaryColor])),
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Get.theme.primaryColor,
                  Get.theme.secondaryHeaderColor,
                ],
                transform: const GradientRotation(-0.2),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 3,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [const Color(0xff8F8484), Get.theme.primaryColor])),
          ),
          Expanded(
            child: ListView(shrinkWrap: true, children: [
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 17.sp, color: Colors.white),
                ),
                leading: Image.asset(
                  "assets/images/drawer1.png",
                  color: Colors.white,
                ),
                onTap: () {
                  // homeController.scaffoldKey.value.currentState
                  //     ?.closeDrawer();
                  homeController.currentIndex.value = 0;
                  Get.back();
                },
              ),
              ListTile(
                title: Text(
                  "My Order",
                  style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.white,
                  ),
                ),
                leading: Image.asset("assets/images/drawer2.png",
                    color: Colors.white),
                onTap: () {
                  // homeController.scaffoldKey.value.currentState
                  //     ?.closeDrawer();
                  homeController.currentIndex.value = 1;
                  Get.back();
                },
              ),
              ListTile(
                title: Text(
                  "Wallet",
                  style: TextStyle(fontSize: 18.sp, color: Colors.white),
                ),
                leading: Image.asset("assets/images/drawer3.png",
                    color: Colors.white),
                onTap: () {
                  // homeController.scaffoldKey.value.currentState
                  //     ?.closeDrawer();
                  homeController.currentIndex.value = 3;
                  Get.back();
                },
              ),
              ListTile(
                title: Text(
                  "Notification",
                  style: TextStyle(fontSize: 18.sp, color: Colors.white),
                ),
                leading: Image.asset("assets/images/drawer4.png",
                    color: Colors.white),
                onTap: () {
                  // homeController.scaffoldKey.value.currentState
                  //     ?.closeDrawer();
                  Get.back();
                  Get.to(() => const NotificationScreen());
                },
              ),
              ListTile(
                title: Text(
                  "Device Language",
                  style: TextStyle(fontSize: 18.sp, color: Colors.white),
                ),
                leading: Image.asset("assets/images/drawer5.png",
                    color: Colors.white),
                onTap: () {
                  // homeController.scaffoldKey.value.currentState
                  //     ?.closeDrawer();
                  Get.back();
                  Get.to(() => const DeviceLanguage());
                },
              ),
              ListTile(
                title: Text(
                  "Invite & Earn",
                  style: TextStyle(fontSize: 18.sp, color: Colors.white),
                ),
                leading: Image.asset("assets/images/drawer7.png",
                    color: Colors.white),
                onTap: () {
                  Get.back();
                  Get.to(() => const InviteAndReferPage());
                },
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.login, color: Colors.red),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Get.theme.secondaryHeaderColor,
                    ),
                    side: WidgetStatePropertyAll(
                      BorderSide(color: Colors.red, width: 2.w),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const LogoutAlertDialog());
                  },
                  label: Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp),
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
