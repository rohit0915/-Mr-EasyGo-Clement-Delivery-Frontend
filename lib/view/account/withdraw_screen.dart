import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/account/bank_detail_screen.dart';
import 'package:muvit_driver/view/payment/payment_success_page.dart';

import '../../components/custom_app_bar.dart';
import '../../controller/home_controller.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  HomeController homeController = Get.find();

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      homeController.isBankAccountUploaded.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFD),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          CustomAppBar(
              title: 'Withdraw Money',
              onTap: () {
                Get.back();
              }),
          SizedBox(
            height: 10.h,
          ),
          Obx(
            () => Card(
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        flex: 1, child: Image.asset("assets/images/blank.png")),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              homeController.isBankAccountUploaded.isTrue
                                  ? "Indian Bank"
                                  : "Bank Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                            homeController.isBankAccountUploaded.isTrue
                                ? const Text("Sanju***on\n299***901")
                                : const SizedBox()
                          ],
                        )),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {
                          Get.to(() => const BankDetailScreen());
                        },
                        child: Text(
                          homeController.isBankAccountUploaded.isTrue
                              ? "Edit"
                              : "Add",
                          style: const TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 10.w,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.2,
          ),
          SizedBox(
            width: Get.width * 0.9,
            child: Card(
              elevation: 10,
              color: Colors.white,
              margin: EdgeInsets.all(10.h),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Amount",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon:
                            Image.asset("assets/images/amount_icon.png"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none),
                        hintText: "20,000.00",
                        hintStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: const Color(0xffF5F4F0),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: Get.width * 0.8,
                      height: Get.height * 0.05,
                      child: InkWell(
                        onTap: () {
                          if (homeController.isBankAccountUploaded.isTrue) {
                            Get.to(() => const PaymentSuccessPage());
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xffFB812F),
                                Color(0xffF8005E),
                                Color(0xffD5018F)
                              ]),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text(
                              "Withdraw Money".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      )),
    );
  }
}
