import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_textfield.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/controller/home_controller.dart';

import '../../components/custom_app_bar.dart';

class BankDetailScreen extends StatefulWidget {
  const BankDetailScreen({super.key});

  @override
  State<BankDetailScreen> createState() => _BankDetailScreenState();
}

class _BankDetailScreenState extends State<BankDetailScreen> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                title: "Account Details",
                onTap: () {
                  Get.back();
                }),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const CustomTextfield(
                      title: "User Name", hintText: "Sanju Samson"),
                  const CustomTextfield(
                      title: "Account Number", hintText: "290908901"),
                  const CustomTextfield(
                      title: "IFSC Code", hintText: "IDBI8900"),
                  const CustomTextfield(
                    title: "Bank Name",
                    hintText: "Indian Bank",
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                  const CustomTextfield(
                    title: "Branch Name",
                    hintText: "Bangalore",
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                  SizedBox(
                    height: Get.height * 0.2,
                  ),
                  SizedBox(
                    width: Get.width * 0.8,
                    child: FirstBtn(
                      text: "SAVE",
                      onTap: () {
                        homeController.isBankAccountUploaded.value = true;
                        Get.back();
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
