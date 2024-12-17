import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/my_bottom_bar_widget.dart';
import 'package:muvit_driver/view/home/home_screen.dart';
import 'package:muvit_driver/view/home/ui/map_screen.dart';
import 'package:muvit_driver/view/home/ui/orders_tab_screen.dart';
import 'package:muvit_driver/view/home/ui/wallet_tab_screen.dart';

import '../../controller/home_controller.dart';
import 'home_profile_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  HomeController homeController = Get.find();

  bool isLoadingScreen = false;

  final List<Widget> _list = [
    const HomeScreen(),
    OrdersTabScreen(),
    const MapScreen(),
    WalletTabScreen(),
    const HomePageScreen()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Obx(() => SafeArea(child: _list[homeController.currentIndex.value])),
      bottomNavigationBar: const MyBottomBarWidget(),
    );
  }
}
