import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:muvit_driver/utility/constants.dart';

import '../../controller/home_controller.dart';
import '../setup_profile/add_bank_profile_detail_screen.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  DropdownItem? selectedItem;

  String amount = "";

  HomeController homeController = Get.find();

  bool isShowBankAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Get.theme.primaryColor, Get.theme.secondaryHeaderColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Withdraw",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Card(
                elevation: 7.h,
                child: Container(
                  decoration: cardDecoration,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Wallet Balance",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      //rich text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "\$",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "1000",
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => WithdrawScreen());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  MdiIcons.download,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Withdraw",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.78,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  transform: GradientRotation(-0.3),
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2B2F56), Color(0xff3D4468)],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                border: const Border.symmetric(
                  horizontal: BorderSide(width: 1, color: Colors.white),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: Get.height * 0.05,
                    child: SizedBox(
                      width: Get.width,
                      child: !isShowBankAccount
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "\$$amount",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "1";
                                              });
                                            },
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "2";
                                              });
                                            },
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "3";
                                              });
                                            },
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "4";
                                              });
                                            },
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "5";
                                              });
                                            },
                                            child: Text(
                                              "5",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "6";
                                              });
                                            },
                                            child: Text(
                                              "6",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "7";
                                              });
                                            },
                                            child: Text(
                                              "7",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "8";
                                              });
                                            },
                                            child: Text(
                                              "8",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "9";
                                              });
                                            },
                                            child: Text(
                                              "9",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += ".";
                                              });
                                            },
                                            child: Text(
                                              ".",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                amount += "0";
                                              });
                                            },
                                            child: Text(
                                              "0",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  amount = amount.substring(
                                                      0, amount.length - 1);
                                                });
                                              },
                                              child: Icon(
                                                Icons.arrow_back_ios,
                                                color: Colors.white,
                                                size: 28.sp,
                                              )),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  width: double.infinity,
                                  height: 40.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets
                                          .zero, // Removes default padding to match container size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20
                                            .r), // Optional: Add rounded corners
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isShowBankAccount = true;
                                      });
                                    },
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          transform: GradientRotation(-0.3),
                                          colors: [
                                            Color(0xff3D4666),
                                            Color(0xff5C6483)
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(20
                                            .r), // Optional: Match shape radius
                                      ),
                                      child: Container(
                                        alignment: Alignment
                                            .center, // Align text to center
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "CONTINUE",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.sp),
                                            ),
                                            SizedBox(
                                              width: 15.w,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.blueAccent,
                                              size: 15.sp,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Text(
                                  "Select Bank Account",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      "assets/images/bank1.png",
                                      fit: BoxFit.cover,
                                      width: 50.w,
                                    ),
                                    title: Text(
                                      "American Bank",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp),
                                    ),
                                    subtitle: Text("**** **** **** 7868"),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      "assets/images/bank2.png",
                                      fit: BoxFit.cover,
                                      width: 50.w,
                                    ),
                                    title: Text(
                                      "UN Bank",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp),
                                    ),
                                    subtitle: Text("**** **** **** 7868"),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  width: double.infinity,
                                  height: 40.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets
                                          .zero, // Removes default padding to match container size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20
                                            .r), // Optional: Add rounded corners
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(
                                          () => AddBankProfileDetailScreen());
                                    },
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          transform: GradientRotation(-0.3),
                                          colors: [
                                            Color(0xff3D4666),
                                            Color(0xff5C6483)
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(20
                                            .r), // Optional: Match shape radius
                                      ),
                                      child: Container(
                                        alignment: Alignment
                                            .center, // Align text to center
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/add.png",
                                              width: 20.w,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "ADD NEW BANK ACCOUNT",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  width: double.infinity,
                                  height: 40.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets
                                          .zero, // Removes default padding to match container size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20
                                            .r), // Optional: Add rounded corners
                                      ),
                                    ),
                                    onPressed: () {
                                      withdrawCompleteDialog();
                                    },
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          transform: GradientRotation(-0.3),
                                          colors: [
                                            Color(0xff3D4666),
                                            Color(0xff5C6483)
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(20
                                            .r), // Optional: Match shape radius
                                      ),
                                      child: Container(
                                        alignment: Alignment
                                            .center, // Align text to center
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "WITHDRAW",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void withdrawCompleteDialog() {
    Timer(const Duration(seconds: 4), () {
      Get.back();
      Get.back();
    });
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.white,
          ),
          width: Get.width * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                "assets/images/tick.gif",
                width: 100.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Successfully Withdrawn",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Amount will be Received in 24 Hours.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
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

// Model for dropdown items
class DropdownItem {
  final String image;
  final String title;
  final String subtitle;

  DropdownItem(
      {required this.image, required this.title, required this.subtitle});
}
