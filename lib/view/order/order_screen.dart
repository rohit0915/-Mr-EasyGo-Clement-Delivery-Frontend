import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muvit_driver/view/order/order_list_screen.dart';

import '../../components/custom_app_bar.dart';
import '../../controller/home_controller.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: "All Orders",
                onTap: () {
                  homeController.currentIndex.value = 0;
                },
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const OrderListScreen(status: "Pending"));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20.h,
                    left: 10.h,
                    right: 10.h,
                  ),
                  padding: EdgeInsets.all(20.h),
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.amber, width: 3.w),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/order.png"),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Orders !!!",
                            style: TextStyle(
                                fontFamily: GoogleFonts.fjallaOne().fontFamily,
                                fontSize: 20.sp,
                                color: const Color(0xffCB9904)),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: Get.width * 0.55,
                            child: const Text(
                              "Please accept new order and pending order requests!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffD5AC31)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const OrderListScreen(status: "Running"));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20.h,
                    left: 10.h,
                    right: 10.h,
                  ),
                  padding: EdgeInsets.all(20.h),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFE6EE),
                    borderRadius: BorderRadius.circular(25),
                    border:
                        Border.all(color: const Color(0xffF20168), width: 3.w),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/order.png"),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Running Orders",
                            style: TextStyle(
                                fontFamily: GoogleFonts.fjallaOne().fontFamily,
                                fontSize: 20.sp,
                                color: const Color(0xffF20168)),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: Get.width * 0.55,
                            child: const Text(
                              "Please complete running or ongoing orders on time!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF20168)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const OrderListScreen(status: "Completed"));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20.h,
                    left: 10.h,
                    right: 10.h,
                  ),
                  padding: EdgeInsets.all(20.h),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.green, width: 3.w),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/order.png"),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Orders Completed!",
                            style: TextStyle(
                                fontFamily: GoogleFonts.fjallaOne().fontFamily,
                                fontSize: 20.sp,
                                color: Colors.green[400]),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: Get.width * 0.55,
                            child: Text(
                              "Yay! You have completed these orders.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[400]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const OrderListScreen(status: "Cancelled"));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20.h,
                    left: 10.h,
                    right: 10.h,
                  ),
                  padding: EdgeInsets.all(20.h),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey, width: 3.w),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/order.png"),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cancelled Orders!",
                            style: TextStyle(
                                fontFamily: GoogleFonts.fjallaOne().fontFamily,
                                fontSize: 20.sp,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: Get.width * 0.55,
                            child: const Text(
                              "See your cancelled order list here.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
