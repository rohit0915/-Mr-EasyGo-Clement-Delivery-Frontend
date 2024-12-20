import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/home/ui/completed_orders_tab_screen.dart';
import 'package:muvit_driver/view/home/ui/pending_orders_tab_screen.dart';
import 'package:muvit_driver/view/home/ui/running_orders_tab_screen.dart';

import '../../notification/notification_screen.dart';

class OrdersTabScreen extends StatefulWidget {
  const OrdersTabScreen({super.key});

  @override
  State<OrdersTabScreen> createState() => _OrdersTabScreenState();
}

class _OrdersTabScreenState extends State<OrdersTabScreen> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: GestureDetector(
                  onTap: () {
                    homeController.scaffoldKey.value.currentState!.openDrawer();
                  },
                  child: Image.asset(
                    "assets/images/drawer_menu.png",
                    width: 20.h,
                  ),
                ),
              ),
              title: Text("My Orders",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  )),
              centerTitle: true,
              actions: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const NotificationScreen());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Image.asset(
                      "assets/images/notification_bell_icon.png",
                      height: 20.h,
                    ),
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                TabBar(
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Color(0xff76787E),
                    indicatorWeight: 3.h,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        text: "Pending",
                      ),
                      Tab(
                        text: "Running Orders",
                      ),
                      Tab(
                        text: "Completed",
                      ),
                    ]),
                Expanded(
                  child: TabBarView(children: [
                    PendingOrdersTabScreen(),
                    RunningOrdersTabScreen(),
                    CompletedOrdersTabScreen(),
                  ]),
                ),
              ],
            )));
  }
}
