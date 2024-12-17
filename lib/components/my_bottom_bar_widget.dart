import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';

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
      () => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff75798B), Color(0xff67748F), Color(0xff67748F)],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.h),
            topRight: Radius.circular(20.h),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xffB3B3BF),
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
                    ? Colors.white
                    : Color(0xffB2B6BF),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/bottom2.png",
                  color: homeController.currentIndex.value == 1
                      ? Colors.white
                      : Color(0xffB2B6BF),
                ),
                label: 'Orders',
                activeIcon: Image.asset(
                  "assets/images/bottom2_open.png",
                  color: Colors.white,
                )),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/bottom3.png",
                color: homeController.currentIndex.value == 2
                    ? Colors.white
                    : Color(0xffB2B6BF),
              ),
              activeIcon: Image.asset("assets/images/bottom3_open.png"),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/bottom4.png",
                color: homeController.currentIndex.value == 3
                    ? Colors.white
                    : Color(0xffB2B6BF),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/bottom5.png",
                color: homeController.currentIndex.value == 4
                    ? Colors.white
                    : Color(0xffB2B6BF),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
