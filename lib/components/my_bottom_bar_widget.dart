import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';

import '../utility/constants.dart';

class MyBottomBarWidget extends StatefulWidget {
  const MyBottomBarWidget({super.key, this.isOut = false});

  final bool isOut;

  @override
  State<MyBottomBarWidget> createState() => _MyBottomBarWidgetState();
}

class _MyBottomBarWidgetState extends State<MyBottomBarWidget> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: mainColor,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14.sp,
        unselectedFontSize: 14.sp,
        currentIndex: homeController.currentIndex.value,
        onTap: (value) {
          if (widget.isOut) {
            Get.offAll(() => const TabScreen());
          }
          setState(() {
            homeController.currentIndex.value = value;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/bottom1.png",
              color: homeController.currentIndex.value == 0
                  ? mainColor
                  : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/bottom2.png",
              color: homeController.currentIndex.value == 1
                  ? mainColor
                  : Colors.grey,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/bottom3.png",
              color: homeController.currentIndex.value == 2
                  ? mainColor
                  : Colors.grey,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/bottom4.png",
              color: homeController.currentIndex.value == 3
                  ? mainColor
                  : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
