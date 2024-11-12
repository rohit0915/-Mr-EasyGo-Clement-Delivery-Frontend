import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../get_controllers/wallet_tab_get_controller.dart';

class WalletTabScreen extends StatelessWidget {
  WalletTabScreen({super.key});

  final WalletTabGetController getController =
      Get.put(WalletTabGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.h),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.h,
                  blurRadius: 5.h,
                  offset: Offset(0, 1.h),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Wallet",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold))
              ],
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Card(
              color: Colors.white,
              elevation: 7.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wallet Balance",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold)),
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
                            text: "₹",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700),
                            children: [
                              TextSpan(
                                text: "14,500",
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade700),
                              ),
                              TextSpan(
                                text: ".00",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade700),
                              ),
                            ],
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
                        Column(
                          children: [Icon(MdiIcons.upload), Text("Top Up")],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          height: 30.h,
                          width: 1.w,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [Icon(MdiIcons.download), Text("Redeem")],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5.h,
                  blurRadius: 7.h,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Recent Transactions",
                        style: TextStyle(fontSize: 15.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(2)
                    },
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Image.asset(
                            "assets/images/user.jpg",
                            height: 50.h,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "30 Sept 2021 | 10:30 AM",
                              style: TextStyle(fontSize: 10.sp),
                            )
                          ],
                        ),
                        Text("₹ 500.00",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700))
                      ]),
                      TableRow(children: [
                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Image.asset(
                            "assets/images/user.jpg",
                            height: 50.h,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "30 Sept 2021 | 10:30 AM",
                              style: TextStyle(fontSize: 10.sp),
                            )
                          ],
                        ),
                        Text("₹ 500.00",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade700))
                      ]),TableRow(children: [
                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Image.asset(
                            "assets/images/user.jpg",
                            height: 50.h,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "30 Sept 2021 | 10:30 AM",
                              style: TextStyle(fontSize: 10.sp),
                            )
                          ],
                        ),
                        Text("₹ 500.00",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700))
                      ]),TableRow(children: [
                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Image.asset(
                            "assets/images/user.jpg",
                            height: 50.h,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "30 Sept 2021 | 10:30 AM",
                              style: TextStyle(fontSize: 10.sp),
                            )
                          ],
                        ),
                        Text("₹ 500.00",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade700))
                      ]),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
