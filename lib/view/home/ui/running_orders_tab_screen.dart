import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../components/dashed_vertical_line.dart';
import '../../../utility/constants.dart';
import '../get_controllers/running_orders_tab_get_controller.dart';

class RunningOrdersTabScreen extends StatelessWidget {
  RunningOrdersTabScreen({super.key});

  final RunningOrdersTabGetController getController =
      Get.put(RunningOrdersTabGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Card(
                  elevation: 2.h,
                  child: Container(
                    decoration: cardDecoration,
                    padding: EdgeInsets.all(15.w),
                    child: Obx(() {
                      return !getController.viewClicked.value
                          ? Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              color: Colors.white,
                                              fontSize: 10.sp)),
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
                                              color: Colors.white,
                                              fontSize: 10.sp)),
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
                                    Expanded(
                                      child: Text(
                                        "1901, Stockholm Bridge, Sweden",
                                        style: TextStyle(fontSize: 12.sp),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        getController.viewClicked.value = true;
                                      },
                                      child: Text(
                                        "View",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3.w),
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
                                    Expanded(
                                      child: Text(
                                        "1901, Royal Lane, Sweden",
                                        style: TextStyle(fontSize: 12.sp),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        getController.viewClicked.value = true;
                                      },
                                      child: Text(
                                        "View",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.r))),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Start"),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              size: 16.sp,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              color: Colors.white,
                                              fontSize: 10.sp)),
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
                                              color: Colors.white,
                                              fontSize: 10.sp)),
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
                                    Text("Pick Up Location: ",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                          "1901, Stockholm Bridge, Sweden",
                                          style: TextStyle(fontSize: 12.sp)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text("Items from Vendor1: ",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text("Vendor ID: 123",
                                        style: TextStyle(fontSize: 12.sp)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Icon(MdiIcons.phone, size: 14.sp),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text("+919876543210",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text("Grocery Items",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                Table(
                                  children: [
                                    TableRow(children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 2.r,
                                            backgroundColor: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text("Aloo",
                                              style:
                                                  TextStyle(fontSize: 12.sp)),
                                        ],
                                      ),
                                      Text("05 KG",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(fontSize: 12.sp)),
                                    ]),
                                    TableRow(children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 2.r,
                                            backgroundColor: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text("Onion",
                                              style:
                                                  TextStyle(fontSize: 12.sp)),
                                        ],
                                      ),
                                      Text("10 KG",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(fontSize: 12.sp)),
                                    ]),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    Text("Drop Location: ",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                          "1901, Stockholm Bridge, Sweden",
                                          style: TextStyle(fontSize: 12.sp)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text("Item Received By: ",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text("Marley Vetrows",
                                        style: TextStyle(fontSize: 12.sp)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Icon(MdiIcons.phone, size: 14.sp),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text("+919876543210",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Table(
                                  children: [
                                    TableRow(children: [
                                      Text("Payment Status",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                      Text("Pending",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                    TableRow(children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Text("Mode of Payment",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                      Text("Cash on Delivery",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    getController.viewClicked.value = false;
                                  },
                                  child: Text("View Less",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          decoration:
                                              TextDecoration.underline)),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.r))),
                                        ),
                                        child: Text("Reject"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.r))),
                                        ),
                                        child: Text("Accept"),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                    }),
                  ),
                ),
              );
            }));
  }
}
