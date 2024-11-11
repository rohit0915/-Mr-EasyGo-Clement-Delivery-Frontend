import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/view/kyc/upload_document_screen.dart';

import '../../components/custom_textfield.dart';

class HomeProfileScreen extends StatefulWidget {
  const HomeProfileScreen({super.key});

  @override
  State<HomeProfileScreen> createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {
  String isActive = "Active";
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                title: "Profile",
                onTap: () {
                  homeController.currentIndex.value = 0;
                }),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 90.h,
                        width: 90.h,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.white, width: 2),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/user.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset("assets/images/edit_icon.png")),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                      isActive == "Active"
                          ? Colors.green
                          : isActive == "Inactive"
                              ? Colors.red
                              : Colors.amber,
                    )),
                    onPressed: () {
                      if (isActive == "Active") {
                        isActive = "Inactive";
                      } else if (isActive == "Inactive") {
                        isActive = "Break";
                      } else {
                        isActive = "Active";
                      }
                      setState(() {});
                    },
                    child: Text(
                      isActive,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "John Deo",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomTextfield(
                      title: "Plate Number",
                      hintText: "eg AB 12XY 0000",
                      keyboardType: TextInputType.number,
                      isEdit: true),
                  const CustomTextfield(
                      title: "Mobile Number",
                      hintText: "+1 (000) 0000-000",
                      keyboardType: TextInputType.number,
                      isEdit: true),
                  const CustomTextfield(
                      title: "Vehicle Type",
                      hintText: "Type",
                      keyboardType: TextInputType.number,
                      isEdit: true),
                  const CustomTextfield(
                      title: "Email",
                      hintText: "Email",
                      isEdit: true),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Documents",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13.h),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const UploadDocumentScreen());
                        },
                        child: Container(
                          width: Get.width * 0.9,
                          padding: EdgeInsets.all(10.h),
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5.w,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Vehicle RC, Driver’s License"),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
