import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';
import 'package:muvit_driver/components/dialog/first_success_alert_dialog.dart';
import 'package:muvit_driver/components/dialog/open_camera_sheet.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';
import 'package:signature/signature.dart';

import '../../components/dialog/second_success_alert_dialog.dart';
import '../../components/dialog/timer_alert_dialog.dart';

class OrderWorkingProcessScreen extends StatefulWidget {
  const OrderWorkingProcessScreen(
      {super.key, this.isPickupImagesUploaded = false});

  final bool isPickupImagesUploaded;

  @override
  State<OrderWorkingProcessScreen> createState() =>
      _OrderWorkingProcessScreenState();
}

class _OrderWorkingProcessScreenState extends State<OrderWorkingProcessScreen> {
  HomeController homeController = Get.find();

  late final SignatureController _controller;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      homeController.isImageUploaded.value = false;
      _controller = SignatureController(
        penStrokeWidth: 5,
        penColor: Colors.black,
        exportBackgroundColor: Colors.white,
      );
    });
  }

  final List<String> _images1 = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
  ];

  final List<String> _images2 = [
    "assets/images/image4.png",
    "assets/images/image5.png",
    "assets/images/image6.png",
  ];

  bool isNext = false;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              CustomAppBar(
                title: "Working Process",
                onTap: () {
                  Get.back();
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Card(
                color: Colors.white,
                elevation: 10,
                margin: EdgeInsets.all(10.h),
                child: Padding(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (builder) => const OpenCameraSheet());
                        },
                        child: SvgPicture.asset(
                          "assets/svg/upload.svg",
                          height: 60.h,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Upload Work Images",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 250.w,
                        child: const Text(
                          "Note : Please Upload the work images , because it proof’s of your work",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      homeController.isImageUploaded.value
                          ? Colors.green
                          : Colors.red),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  !widget.isPickupImagesUploaded
                      ? "Task : Upload Pickup Images"
                      : "Task : Upload Dropoff Images",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      decorationColor: Colors.white,
                      fontSize: 15.sp),
                ),
              ),
              homeController.isImageUploaded.isTrue
                  ? Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          "Upload Work Images",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 16.sp,
                              color: Colors.amber,
                              decorationColor: Colors.amber),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: Get.width * 0.9,
                          height: Get.height * 0.2,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    margin: EdgeInsets.all(5.h),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.asset(
                                        !isNext
                                            ? _images1[index]
                                            : _images2[index],
                                        height: 90.h,
                                        width: 95.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  !isNext && index == 2
                                      ? Positioned(
                                          right: 0,
                                          top: 40.h,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isNext = !isNext;
                                              });
                                            },
                                            child: Image.asset(
                                              "assets/images/next.png",
                                              height: 20.h,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                                  isNext && index == 0
                                      ? Positioned(
                                          left: 0,
                                          top: 40.h,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isNext = !isNext;
                                              });
                                            },
                                            child: Image.asset(
                                              "assets/images/back.png",
                                              height: 20.h,
                                            ),
                                          ),
                                        )
                                      : const SizedBox()
                                ],
                              );
                            },
                            itemCount: 3,
                          ),
                        ),
                        widget.isPickupImagesUploaded
                            ? Column(
                                children: [
                                  Text(
                                    "Client Signature",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        fontSize: 16.sp,
                                        color: Colors.amber,
                                        decorationColor: Colors.amber),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Signature(
                                    controller: _controller,
                                    width: Get.width * 0.9,
                                    height: 150.h,
                                    backgroundColor: Colors.grey.shade400,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  TextButton(
                                      style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.amber),
                                      ),
                                      onPressed: () {
                                        _controller.clear();
                                      },
                                      child: const Text(
                                        "Clear",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    )
                  : const SizedBox(),
              SizedBox(
                height: homeController.isImageUploaded.isTrue
                    ? Get.height * 0.05
                    : Get.height * 0.42,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.h),
                width: Get.width * 0.9,
                child: FirstBtn(
                  text: !homeController.isImageUploaded.value
                      ? "Next >"
                      : "SUBMIT",
                  onTap: () {
                    if (!homeController.isImageUploaded.value) {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) => const OpenCameraSheet());
                    } else if (!widget.isPickupImagesUploaded) {
                      showDialog(
                              context: context,
                              builder: (builder) =>
                                  const FirstSuccessAlertDialog(isPickup: true))
                          .then((value) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => TimerAlertDialog(
                                  callback: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const OrderWorkingProcessScreen(
                                        isPickupImagesUploaded: true,
                                      );
                                    }));
                                  },
                                ));
                      });
                    } else {
                      // Dropoff
                      if (_controller.isEmpty) {
                        Get.snackbar("Signature", "Please Add Signature",
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                            snackPosition: SnackPosition.BOTTOM);
                        return;
                      }

                      showDialog(
                          context: context,
                          builder: (builder) => const FirstSuccessAlertDialog(
                                isPickup: false,
                              )).then((value) {
                        showDialog(
                            context: context,
                            builder: (builder) =>
                                const SecondSuccessAlertDialog()).then((value) {
                          Get.offAll(() => const TabScreen());
                        });
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
