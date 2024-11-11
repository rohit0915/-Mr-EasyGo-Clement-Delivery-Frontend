import 'package:flutter/material.dart';

import 'intro_screen.dart';
import 'loader_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoadingScreen = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      isLoadingScreen = true;
      setState(() {});
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const IntroScreen()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoadingScreen
        ? const LoaderScreen()
        : Scaffold(
            body: Center(
              child: Image.asset("assets/images/splash.png"),
            ),
          );
  }
}
