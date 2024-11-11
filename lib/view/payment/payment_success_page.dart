import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';

import '../../components/first_btn.dart';
import '../../controller/home_controller.dart';

class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "Success Payment",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.amber),
              ),
            ),
            SizedBox(
              height: Get.height * 0.08,
            ),
            Image.asset("assets/images/success.gif", height: Get.height * 0.4),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "₹20,000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Withdraw has\nSuccessfully Completed",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Transaction reference ID : 1234567890",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.sp),
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: FirstBtn(
                  text: "BACK >",
                  onTap: () {
                    Get.offAll(() => const TabScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
