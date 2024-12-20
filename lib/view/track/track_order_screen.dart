import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/utility/constants.dart';
import 'package:muvit_driver/view/track/o_t_p_verification_dialog.dart';

import '../notification/notification_screen.dart';
import 'call_screen.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  HomeController homeController = Get.find();

  @override
  void initState() {
    super.initState();
    homeController.orderStart.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: GestureDetector(
            onTap: () {
              homeController.scaffoldKey.value.currentState!.openDrawer();
            },
            child: Image.asset(
              "assets/images/drawer_menu.png",
              width: 20.h,
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/easy_go_logo.png",
            width: 100.h,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => const NotificationScreen());
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Image.asset(
                "assets/images/notification_bell_icon.png",
                height: 20.h,
              ),
            ),
          )
        ],
      ),
      body: Obx(
        () => Stack(
          children: [
            SizedBox(
              height: Get.height,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.6,
                    child: FutureBuilder(
                      future:
                          rootBundle.loadString('assets/json/map_style.json'),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        return GoogleMap(
                          zoomControlsEnabled: false,
                          initialCameraPosition: CameraPosition(
                            target: homeController.currentLocation.value!,
                            zoom: 15.0,
                          ),
                          style: snapshot.data,
                          onMapCreated: (GoogleMapController controller) {
                            homeController.googleMapController = controller;
                            // controller.setMapStyle(snapshot.data);
                          },
                          onCameraMove: (CameraPosition position) {
                            // Update the selected location as the map is moved
                            homeController.currentLocation.value =
                                position.target;
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    decoration: cardDecoration,
                    height: Get.height * 0.28,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              homeController.orderStart.value == 0
                                  ? "Start"
                                  : homeController.orderStart.value == 1
                                      ? "Pick Up"
                                      : "In Transit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => CallScreen());
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 5.h),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Call",
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text("sector 66, lane no 2, Noida\nUttar Pradesh"),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (homeController.orderStart.value == 1) {
                              showPickUpDialog();
                            } else if (homeController.orderStart.value == 3) {
                              verificationMethod();
                              // showOTPVerificationDialog();
                              // cardPaymentDialog();
                            } else {
                              homeController.orderStart.value++;
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                              color: Color(0xff309637),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Text(
                              homeController.orderStart.value == 0
                                  ? "Click here when you start"
                                  : homeController.orderStart.value == 1
                                      ? "Click here when Pick up is done "
                                      : homeController.orderStart.value == 2
                                          ? "Click here when you Reach"
                                          : "Click here to Enter OTP or Scan QR",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.h),
                              child: Divider(
                                color: Colors.white,
                                height: 10.h,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: homeController.orderStart.value * 20.w),
                              child: Container(
                                height: 25.h,
                                width: 25.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: Text(
                                    (homeController.orderStart.value + 1)
                                        .toString(),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 20.h,
                left: 20.w,
                child:
                    Image.asset("assets/images/drop_menui.png", width: 100.w)),
            Positioned(
              bottom: Get.height * 0.29,
              left: 5.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                ),
                child: Text(
                  homeController.orderStart.value == 0
                      ? "12:00 Min"
                      : homeController.orderStart.value == 1
                          ? "06:00 Min"
                          : "01:00 Min",
                  style: TextStyle(
                      color: homeController.orderStart.value == 0
                          ? Colors.green
                          : homeController.orderStart.value == 1
                              ? Colors.amber
                              : Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 14.sp),
                ),
              ),
            ),
            Positioned(
              bottom: Get.height * 0.29,
              right: 10.w,
              child: GestureDetector(
                onTap: () {
                  showIssueDialog();
                },
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.warning_amber_rounded)),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showIssueDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: Image.asset("assets/images/issue.png", width: Get.width * 0.8),
      ),
    );
  }

  void showPickUpDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              showSecondPickUpDialog();
            },
            child: Image.asset("assets/images/pickup1.png",
                width: Get.width * 0.8)),
      ),
    );
  }

  void showSecondPickUpDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              showThirdPickUpDialog();
            },
            child: Image.asset("assets/images/pickup2.png",
                width: Get.width * 0.8)),
      ),
    );
  }

  void showThirdPickUpDialog() {
    Timer(const Duration(seconds: 4), () {
      Get.back();
      homeController.orderStart.value++;
    });
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              width: Get.width * 0.6,
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
                    "Your parcel has been dispatched from the \nlocation.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void verificationMethod() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              homeController.orderStart.value++;
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              width: Get.width * 0.6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Verification Method",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          showOTPVerificationDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff1D7BD8)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Text(
                          "OTP Verification",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          showQrDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xffE0AC28)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Text(
                          "Scan QR",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void showQrDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              showSecondPickUpDialog();
            },
            child: Image.asset("assets/images/scanqr.png",
                width: Get.width * 0.8)),
      ),
    );
    Timer(Duration(seconds: 3), () {
      Get.back();
      showDialog(
        context: context,
        builder: (context) => Dialog(
          backgroundColor: Colors.transparent, // Remove the white border
          elevation: 0, // Remove shadow
          insetPadding: EdgeInsets.zero, // Remove default dialog padding
          child: GestureDetector(
              onTap: () {
                Get.back();
                paymentDialog();
              },
              child: Image.asset("assets/images/time_image.png",
                  width: Get.width * 0.8)),
        ),
      );
    });
  }

  void showOTPVerificationDialog() {
    showDialog(
      context: context,
      builder: (context) =>
          OTPVerificationDialog(homeController: homeController),
    ).then((value) {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          backgroundColor: Colors.transparent, // Remove the white border
          elevation: 0, // Remove shadow
          insetPadding: EdgeInsets.zero, // Remove default dialog padding
          child: GestureDetector(
              onTap: () {
                Get.back();
                paymentDialog();
              },
              child: Image.asset("assets/images/time_image.png",
                  width: Get.width * 0.8)),
        ),
      );
    });
  }

  void paymentDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              homeController.orderStart.value++;
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              width: Get.width * 0.6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Receive Payment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          qrPaymentDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff1D7BD8)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/qr_o.png"),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "QR",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          cardPaymentDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xffE0AC28)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/card_o.png"),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Card",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          cashPaymentDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff309637)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/cash_o.png"),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Cash",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void qrPaymentDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              homeController.currentIndex.value = 0;
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              width: Get.width * 0.6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Show QR to accept\nPayment",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/second_qr.png",
                    width: 100.w,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          deliveryCompleteDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff309637)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void cardPaymentDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              homeController.currentIndex.value = 0;
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              width: Get.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Please Accept\nPayment through card",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "\$424",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1778F2)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/card.gif",
                    width: 100.w,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          deliveryCompleteDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff309637)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void cashPaymentDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              Get.back();
              homeController.currentIndex.value = 0;
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              width: Get.width * 0.6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Collect Cash",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "\$424",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1778F2)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/cash.gif",
                    width: 100.w,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          deliveryCompleteDialog();
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff309637)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                        ),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void deliveryCompleteDialog() {
    Timer(const Duration(seconds: 4), () {
      Get.back();
      homeController.currentIndex.value = 0;
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
          width: Get.width * 0.6,
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
                "Delivery Completed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
