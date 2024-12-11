import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
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
              "Notification",
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // if (index % 2 == 0) {
              //   Get.to(() => NotificationsDetailsTrackingScreen());
              // } else {
              //   Get.to(() => NotificationDetailsSuccessScreen());
              // }
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Get.theme.primaryColor,
                      Get.theme.secondaryHeaderColor
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/notification_bell_icon.png",
                          height: 20.h,
                        )),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            "You have booked lerem studio 23/10/2023 and the time being schedule is 11:00 AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
