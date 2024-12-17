import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/view/home/tab_screen.dart';

class SubmitScreen extends StatefulWidget {
  const SubmitScreen({super.key});

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  int currentIndex = 0;

  bool isPassport = false;

  List<String> title = [
    "Enter National ID Card details",
    "Enter Driving license details",
    "Enter Passbook details",
    "Enter Passport details"
  ];

  List<String> firstSubtitle = [
    "Front side of National ID card",
    "Front side of Driving license",
    "Front side of Passbook",
    "Front side of Passport"
  ];
  List<String> secondSubtitle = [
    "Back side of National ID card",
    "Back side of Driving license",
    "Back side of Passbook",
    "Back side of Passport"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/easy_go_logo.png",
          height: 30.h,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Submit Documents",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 2.h,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.green,
                    )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                        child: Container(
                      color: currentIndex >= 1 ? Colors.green : Colors.white,
                    )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                        child: Container(
                      color: currentIndex >= 2 ? Colors.green : Colors.white,
                    )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                        child: Container(
                      color: currentIndex >= 3 ? Colors.green : Colors.white,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                title[currentIndex],
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(firstSubtitle[currentIndex],
                  style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 130.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 45.h),
                child: Image.asset(
                  "assets/images/click_upload.png",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "and",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(secondSubtitle[currentIndex],
                  style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 130.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 45.h),
                child: Image.asset(
                  "assets/images/click_upload.png",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              currentIndex != 1
                  ? SizedBox()
                  : Column(
                      children: [
                        Text(
                          "Enter expiry date of your driving license",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter here",
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10.h),
                            border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
              currentIndex != 3
                  ? SizedBox()
                  : Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              value: isPassport,
                              onChanged: (value) {
                                setState(() {
                                  isPassport = value!;
                                });
                              }),
                          Text(
                            "I dont't have a passport",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                      child: FirstBtn(
                        text: currentIndex != 3 ? "NEXT" : "SAVE",
                        onTap: () {
                          if (currentIndex != 3) {
                            setState(() {
                              currentIndex++;
                            });
                          } else {
                            Get.offAll(() => TabScreen());
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
