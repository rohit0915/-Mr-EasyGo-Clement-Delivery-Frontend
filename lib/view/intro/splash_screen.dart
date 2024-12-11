import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/intro/intro_main_screen.dart';
import 'package:muvit_driver/view/intro/loader_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  RxBool isLoadingScreen = false.obs;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      isLoadingScreen.value = true;
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(() => IntroMainScreen());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return isLoadingScreen.value
          ? const LoaderScreen()
          : Scaffold(
              body: Center(
                child: Image.asset("assets/images/easy_go_mini_logo.png"),
              ),
            );
    });
  }
}
