import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:muvit_driver/profile/about_us_screen.dart';
import 'package:muvit_driver/profile/contact_us_screen.dart';
import 'package:muvit_driver/profile/privacy_policy_screen.dart';
import 'package:muvit_driver/profile/terms_and_conditions_screen.dart';
import 'package:muvit_driver/view/chat/chat_screen.dart';
import 'package:muvit_driver/view/delete/delete_this_account_1_screen.dart';
import 'package:muvit_driver/view/dialog/logout_alert_dialog.dart';
import 'package:muvit_driver/view/profile/vehicle_detail_screen.dart';
import 'package:share_plus/share_plus.dart';

import '../profile/document_screen.dart';
import 'address_list_screen.dart';
import 'change_login_screen.dart';
import 'ui/care_call_screen.dart';
import 'ui/edit_profile_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isShowCopyView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    const AssetImage("assets/images/shareya_joseph.png"),
                radius: 40.r,
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Kushal",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold)),
                      SizedBox(width: 10.w),
                      const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )
                    ],
                  ),
                  Text(
                    "+91 9876543210",
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const EditProfileScreen());
                    },
                    child: Text(
                      "View Details",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20.h),
          Text("Refer & Earn",
              style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold)),
          Text("Up to \$2000 for each referral",
              style: TextStyle(fontSize: 13.sp)),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: isShowCopyView ? Colors.white : null,
              gradient: isShowCopyView
                  ? null
                  : const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      transform: GradientRotation(-0.3),
                      colors: [Color(0xff383A61), Color(0xff5B6482)],
                    ),
              borderRadius: BorderRadius.circular(20.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: isShowCopyView
                ? Row(
                    children: [
                      Image.asset(
                        "assets/images/tick_icon.png",
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Link Copied",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: Text("XYUTYXG",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.copy,
                        color: Colors.blue,
                        size: 15.sp,
                      ),
                      SizedBox(width: 10.w),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isShowCopyView = true;
                          });
                          Timer(const Duration(seconds: 2), () {
                            setState(() {
                              isShowCopyView = false;
                            });
                          });
                        },
                        child: Text("Copy".toUpperCase(),
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
          ),
          SizedBox(height: 10.h),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const AddressListScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          "EDIT or ADD Address",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 10.w), // Replace Spacer with SizedBox for spacing
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ChangeLoginScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          "CHANGE PASSWORD",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const VehicleDetailScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          "VEHICLE DETAIL",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 10.w), // Replace Spacer with SizedBox for spacing

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const DocumentScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          "DOCUMENTS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Share.share("Testing");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Share on".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Icon(
                              MdiIcons.whatsapp,
                              color: Colors.green,
                              size: 14.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 10.w), // Replace Spacer with SizedBox for spacing

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Share.share("Testing");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Share on".toUpperCase(),
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Icon(
                              MdiIcons.share,
                              size: 14.sp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ChatScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          "MESSAGE US",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 10.w), // Replace Spacer with SizedBox for spacing

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const CareCallScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            transform: GradientRotation(-0.3),
                            colors: [Color(0xff383A61), Color(0xff5B6482)],
                          ),
                          borderRadius: BorderRadius.circular(50.r),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          "CALL US",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const Divider(
            color: Colors.blue,
            thickness: 1,
          ),
          SizedBox(height: 10.h),
          GestureDetector(
              onTap: () {
                Get.to(() => AboutUsScreen());
              },
              child: const Text("ABOUT US")),
          SizedBox(height: 10.h),
          GestureDetector(
              onTap: () {
                Get.to(() => TermsAndConditionsScreen());
              },
              child: const Text("TERMS & CONDITIONS")),
          SizedBox(height: 10.h),
          GestureDetector(
              onTap: () {
                Get.to(() => PrivacyPolicyScreen());
              },
              child: const Text("PRIVACY POLICY")),
          SizedBox(height: 10.h),
          GestureDetector(
              onTap: () {
                Get.to(() => ContactUsScreen());
              },
              child: const Text("CONTACT US")),
          SizedBox(height: 10.h),
          GestureDetector(
              onTap: () {
                Get.to(() => DeleteThisAccount1Screen());
              },
              child: const Text("DELETE THIS ACCOUNT")),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => const LogoutAlertDialog());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: Colors.red, width: 2.w),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.logout,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "LOGOUT",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
