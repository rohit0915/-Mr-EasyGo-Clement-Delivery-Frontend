import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/utility/constants.dart';

import '../../../components/dashed_vertical_line.dart';
import '../get_controllers/completed_orders_tab_get_controller.dart';

class CompletedOrdersTabScreen extends StatelessWidget {
  CompletedOrdersTabScreen({super.key});

  final CompletedOrdersTabGetController getController =
      Get.put(CompletedOrdersTabGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Card(
              elevation: 2.h,
              child: Container(
                decoration: cardDecoration,
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "21 Aug 2024: ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "16:00",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.sp)),
                        ])),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Booking ID, ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "123456",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.sp)),
                        ])),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "\$100",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold)),
                        ])),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 6.h,
                          height: 6.h,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "1901, Stockholm Bridge, Sweden",
                          style: TextStyle(fontSize: 12.sp),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: DashedVerticalLine(
                            height: 20.h,
                            dashHeight: 3.5.h,
                            dashWidth: 1.w,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 6.h,
                          height: 6.h,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "1901, Royal Lane, Sweden",
                          style: TextStyle(fontSize: 12.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Table(
                      border: TableBorder.all(color: Colors.white),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ITEMS DIMENSIONS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("10x10x10",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("PAYMENT METHODS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("Cash",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp)),
                              ],
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shipment Completed ON".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("+919876543210",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("SHIPMENT STATUS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("Pending",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp)),
                              ],
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("MARILYN STANTON",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("+919876543210",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rating".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                                RatingBar(
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                  onRatingChanged: (value) =>
                                      debugPrint('$value'),
                                  size: 12.sp,
                                  initialRating: 3,
                                  maxRating: 5,
                                )
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
