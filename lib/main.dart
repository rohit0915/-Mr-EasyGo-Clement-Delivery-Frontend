import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';
import 'view/intro/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => HomeController(), fenix: true);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //status bar color

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //status bar color
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Color(0xff404469),
    //   statusBarIconBrightness: Brightness.light,
    // ));
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'EasyGo',
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xff292e55),
              appBarTheme: const AppBarTheme(
                backgroundColor:
                    Color(0xff3F4469), // Set your default AppBar color here
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
            home: const SplashScreen());
        // home: const TabScreen());
      },
    );
  }
}
