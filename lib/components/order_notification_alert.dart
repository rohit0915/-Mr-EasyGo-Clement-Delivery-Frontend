import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muvit_driver/components/dialog/accept_order_dialog.dart';
import 'package:muvit_driver/view/order/order_information_screen.dart';

import '../controller/home_controller.dart';

class OrderNotificationAlert extends StatefulWidget {
  const OrderNotificationAlert({super.key});

  @override
  State<OrderNotificationAlert> createState() => _OrderNotificationAlertState();
}

class _OrderNotificationAlertState extends State<OrderNotificationAlert> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
                onTap: () {
                  homeController.isNotification.value = false;
                },
                child: Icon(Icons.close, size: 20.sp)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.r),
                  ),
                  gradient: const LinearGradient(colors: [
                    Color(0xffFE7C4F),
                    Color(0xffD21767),
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Order Available!",
                    style: TextStyle(
                        fontFamily: GoogleFonts.fjallaOne().fontFamily,
                        color: Colors.white,
                        fontSize: 20.sp),
                  ),
                  const Row(
                    children: [
                      Text(
                        "(Furniture Move)",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        " 19 Aug 2023, 05:00 PM",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w200),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset("assets/images/location.png"),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2464 Royal Ln. Mesa, New Jersey 45463",
                        style: TextStyle(fontSize: 13.sp, color: Colors.grey)),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text("6391 Elgin St. Celina, Delaware 10299",
                        style: TextStyle(fontSize: 13.sp, color: Colors.grey))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {
                  homeController.isNotification.value = false;
                  Get.to(() => const OrderInformationScreen());
                },
                child: Text(
                  "View Details",
                  style: TextStyle(
                      fontSize: 13.sp,
                      decoration: TextDecoration.underline,
                      color: Colors.grey,
                      decorationColor: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {
                  homeController.isNotification.value = false;
                  showDialog(
                      context: context,
                      builder: (context) => const AcceptOrderDialog());
                },
                child: Text(
                  "Accept Order".toUpperCase(),
                  style: TextStyle(fontSize: 13.sp, color: Colors.green),
                ),
              ),
            ])
          ],
        ));
  }
}
