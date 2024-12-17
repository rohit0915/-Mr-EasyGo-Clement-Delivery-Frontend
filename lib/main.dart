import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/intro/splash_screen.dart';

import 'view/home/tab_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => HomeController(), fenix: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Color(0xff292e55),
          statusBarIconBrightness: Brightness.light,
        ));
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mufti User',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xff292e55),
            appBarTheme: const AppBarTheme(
              backgroundColor:
                  Color(0xff292e55), // Set your default AppBar color here
              foregroundColor: Colors.white,
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  // fontSize: 20.sp,
                  color: Colors.white,
                  decorationColor: Colors.white),
              bodyMedium: TextStyle(
                  // fontSize: 15.sp,
                  color: Colors.white,
                  decorationColor: Colors.white),
              bodySmall: TextStyle(
                  // fontSize: 10.sp,
                  color: Colors.white,
                  decorationColor: Colors.white),
            ),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xff292e55),
              secondary: const Color(0xFF403c5c),
            ),
            cardColor: const Color(0xFF207cdc),
            secondaryHeaderColor: const Color(0xFF403c5c),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: const Color(0xFF403c5c),
              // Set your default fillColor here
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xFF1D7BD8),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xFF1D7BD8), // Default enabled border color
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF1D7BD8), // Default focused border color
                  )),
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            useMaterial3: true,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
