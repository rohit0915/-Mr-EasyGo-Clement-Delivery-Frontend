import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';
import 'package:muvit_driver/controller/home_controller.dart';

import '../../components/first_btn.dart';
import '../../components/image_tile_widget.dart';

class UploadDocumentScreen extends StatefulWidget {
  const UploadDocumentScreen({super.key});

  @override
  State<UploadDocumentScreen> createState() => _UploadDocumentScreenState();
}

class _UploadDocumentScreenState extends State<UploadDocumentScreen> {
  HomeController homeController = Get.find();
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
              CustomAppBar(
                  title: "Upload Documents",
                  onTap: () {
                    Get.back();
                  }),
              SizedBox(
                height: Get.height * 0.1,
              ),
              const ImageTileWidget(
                text: "Add Vehicle Rc",
              ),
              const ImageTileWidget(
                text: "Add Driver’s License",
              ),
              const ImageTileWidget(
                text: "Add Vehicle Insurance",
              ),
              // const ImageTileWidget(
              //   text: "Add Aadhar Card/Voter ID",
              // ),
              SizedBox(
                height: Get.height * 0.2,
              ),
              SizedBox(
                width: Get.width * 0.9,
                child: FirstBtn(
                  text: "Upload",
                  onTap: () {
                    homeController.currentIndex.value = 3;
                    Get.back();
                  },
                ),
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
