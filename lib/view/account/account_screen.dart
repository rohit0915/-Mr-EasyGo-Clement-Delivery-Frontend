import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/account/account_history_screen.dart';
import 'package:muvit_driver/view/account/deposit_screen.dart';
import 'package:muvit_driver/view/account/withdraw_screen.dart';
import 'package:muvit_driver/view/order/order_list_screen.dart';

import '../../components/gradient_button.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                  title: "My Accounts",
                  onTap: () {
                    homeController.currentIndex.value = 0;
                  }),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wallet Balance",
                                style: TextStyle(
                                  color: const Color(0xff4D1092),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "\$ 20,000.00",
                                style: TextStyle(
                                  color: const Color(0xff4D1092),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              GradientButton(
                                onTap: () {
                                  Get.to(() => const DepositScreen());
                                },
                                text: "Deposit Online",
                              )
                            ]),
                        const Spacer(),
                        Container(
                            margin: EdgeInsets.only(right: 20.h),
                            child: Image.asset("assets/images/wallet.png")),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 10.h,
                    right: 10.h,
                  ),
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.amber, width: 2.w),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Total Delivered",
                        style: TextStyle(
                          fontFamily: GoogleFonts.fjallaOne().fontFamily,
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "00,000",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const OrderListScreen(status: "Cancelled"));
                },
                child: Container(
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 10.h,
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.13),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Canceled Orders",
                          style: TextStyle(
                            fontFamily: GoogleFonts.fjallaOne().fontFamily,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "00",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "\$00,000.00",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const OrderListScreen(status: "Completed"));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 10.h,
                    right: 10.h,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.13),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Completed Orders",
                        style: TextStyle(
                          fontFamily: GoogleFonts.fjallaOne().fontFamily,
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "00",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$00,000.00",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10.h,
                  right: 10.h,
                ),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      "Total Trips",
                      style: TextStyle(
                        fontFamily: GoogleFonts.fjallaOne().fontFamily,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "00",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10.h,
                  right: 10.h,
                ),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      "Total Time",
                      style: TextStyle(
                        fontFamily: GoogleFonts.fjallaOne().fontFamily,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "00:00 hrs",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10.h,
                  right: 10.h,
                ),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      "Gross Sales",
                      style: TextStyle(
                        fontFamily: GoogleFonts.fjallaOne().fontFamily,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$00,000.00",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.to(() => const AccountHistoryScreen());
            },
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset("assets/images/history.png"),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const WithdrawScreen());
            },
            child: Container(
              height: 40.h,
              margin: EdgeInsets.only(top: 10.h, right: 10.w, left: 40.w),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xffFB812F),
                    Color(0xffF8005E),
                    Color(0xffD5018F)
                  ]),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text(
                  "Withdraw Money",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar:
    );
  }
}
