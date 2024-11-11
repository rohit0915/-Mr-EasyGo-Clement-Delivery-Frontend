import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utility/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Notification",
          style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              decorationStyle: TextDecorationStyle.solid,
              decoration: TextDecoration.underline,
              decorationColor: Colors.amber),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
            surfaceTintColor: Colors.white,
            color: Colors.white,
            elevation: 3,
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child:
                        Icon(Icons.notifications, color: mainColor, size: 30)),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                        "You have booked lerem studio 23/10/2023 and the time being schedule is 11:00 AM",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
