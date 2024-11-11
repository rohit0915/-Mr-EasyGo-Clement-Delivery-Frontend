import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';
import 'package:muvit_driver/view/kyc/kyc_image_screen.dart';

import '../intro/loader_screen.dart';

class KycInfoScreen extends StatefulWidget {
  const KycInfoScreen({super.key, required this.imageDone});

  final bool imageDone;

  @override
  State<KycInfoScreen> createState() => _KycInfoScreenState();
}

class _KycInfoScreenState extends State<KycInfoScreen> {
  bool isLoadingScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoadingScreen
          ? const LoaderScreen()
          : SafeArea(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.9,
                        child: InkWell(
                          onTap: () {
                            widget.imageDone
                                ? null
                                : Get.to(() => const KycImageScreen());
                          },
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 20.h),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SvgPicture.asset("assets/svg/logo_mini.svg"),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    "Glad you are becoming a Delivery Partner with us!\nFew Steps Away to join us>",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 20.h),
                                    decoration: BoxDecoration(
                                      color: !widget.imageDone
                                          ? Colors.amber
                                          : Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      border: Border.all(
                                          color: !widget.imageDone
                                              ? Colors.amber
                                              : Colors.grey),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/1.png",
                                          color: !widget.imageDone
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Upload Documents",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.sp,
                                                  color: !widget.imageDone
                                                      ? Colors.white
                                                      : Colors.grey),
                                            ),
                                            Text(
                                              "Driving License, Aadhar card etc.",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: !widget.imageDone
                                                      ? Colors.white
                                                      : Colors.grey),
                                            ),
                                          ],
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                            color: !widget.imageDone
                                                ? Colors.white
                                                : Colors.grey),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      widget.imageDone
                          ? SizedBox(
                              width: Get.width * 0.9,
                              child: FirstBtn(
                                  text: "Start using the app".toUpperCase(),
                                  onTap: () {
                                    isLoadingScreen = true;
                                    setState(() {});
                                    Future.delayed(const Duration(seconds: 3),
                                        () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TabScreen()));
                                    });
                                  }),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
