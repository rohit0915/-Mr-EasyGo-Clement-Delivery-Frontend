import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/home/ui/completed_orders_tab_screen.dart';
import 'package:muvit_driver/view/home/ui/pending_orders_tab_screen.dart';
import 'package:muvit_driver/view/home/ui/running_orders_tab_screen.dart';

import '../../../utility/constants.dart';
import '../get_controllers/orders_tab_get_controller.dart';

class OrdersTabScreen extends StatelessWidget {
  OrdersTabScreen({super.key});

  final OrdersTabGetController getController =
      Get.put(OrdersTabGetController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.h),
              child: Container(
                height: Get.height * 0.1,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      secondaryColor,
                      mainColor,
                    ],
                    transform: GradientRotation(-0.2),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/logo.svg"),
                    ],
                  ),
                ),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TabBar(
                      indicatorWeight: 3.h,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          text: "Pending",
                        ),
                        Tab(
                          text: "Running",
                        ),
                        Tab(
                          text: "Completed",
                        ),
                      ]),
                ),
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
