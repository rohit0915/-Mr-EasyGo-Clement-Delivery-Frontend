import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/order_item_widget.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/utility/utillity.dart';
import 'package:muvit_driver/view/home/home_drawer.dart';

import '../../components/order_notification_alert.dart';
import '../../utility/constants.dart';
import '../notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.find();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> ordersStatus = [
    "Pending",
    "Running",
    "Completed",
    "Running",
  ];

  String _selectedFlitter = 'All';
  String _selectedOrder = 'RECENT';
  final GlobalKey _menuFilterKey = GlobalKey();
  final GlobalKey _menuSortKey = GlobalKey();

  final Utility utility = Utility();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      key: scaffoldKey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                // Add Custom AppBar
                Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () => scaffoldKey.currentState?.openDrawer(),
                            child: Image.asset("assets/images/menu.png")),
                        SvgPicture.asset("assets/svg/logo.svg"),
                        InkWell(
                            onTap: () {
                              Get.to(() => const NotificationScreen());
                            },
                            child: Image.asset(
                                "assets/images/octicon_bell-16.png")),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            key: _menuFilterKey,
                            onTap: () => utility.showFilterMenu(
                              context,
                              _menuFilterKey,
                              (value) {
                                setState(() {
                                  _selectedFlitter = value;
                                });
                              },
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/all.png"),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Text("ALL")
                              ],
                            ),
                          ),
                          InkWell(
                            key: _menuSortKey,
                            onTap: () => utility.showSortMenu(
                              context,
                              _menuSortKey,
                              (value) {
                                setState(() {
                                  _selectedOrder = value;
                                });
                              },
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Recent".toUpperCase(),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset("assets/images/all.png"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: Get.height * 0.69,
                        width: Get.width,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return OrderItemWidget(
                              ordersStatus: ordersStatus,
                              index: index,
                              stateSetter: setState,
                            );
                          },
                          itemCount: ordersStatus.length,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              child: Obx(() => homeController.isNotification.isTrue
                  ? const OrderNotificationAlert()
                  : const SizedBox()),
            )
          ],
        ),
      )),
    );
  }
}
