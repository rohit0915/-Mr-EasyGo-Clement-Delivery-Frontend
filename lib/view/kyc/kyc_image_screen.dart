import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/components/second_btn.dart';
import 'package:muvit_driver/view/kyc/kyc_info_screen.dart';

import '../../components/image_tile_widget.dart';

class KycImageScreen extends StatefulWidget {
  const KycImageScreen({super.key});

  @override
  State<KycImageScreen> createState() => _KycImageScreenState();
}

class _KycImageScreenState extends State<KycImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.white,
                elevation: 10,
                margin: EdgeInsets.all(10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        "assets/svg/logo_mini.svg",
                        height: 60.h,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                    const ImageTileWidget(
                      text: "Vehicle Registration",
                    ),
                    const ImageTileWidget(
                      text: "Driver’s License",
                    ),
                    const ImageTileWidget(
                      text: "Vehicle Insurance",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "Email Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13.h),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintText: "Email",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: const Color(0xffF5F4F0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              SizedBox(
                width: Get.width * 0.9,
                child: FirstBtn(
                  text: "Upload",
                  onTap: () {
                    Get.to(() => const KycInfoScreen(imageDone: true));
                  },
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SizedBox(
                width: Get.width * 0.9,
                child: SecondBtn(
                    text: "Back",
                    onTap: () {
                      Get.back();
                    }),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
