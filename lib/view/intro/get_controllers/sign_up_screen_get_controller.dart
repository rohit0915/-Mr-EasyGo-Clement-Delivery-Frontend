import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUpScreenGetController extends GetxController {
  RxBool isLoginWithNumber = true.obs;

  RxBool isViewPassword = true.obs;
  RxBool isViewReEnterPassword = true.obs;

  @override
  void onInit() {
    isLoginWithNumber.listen((value) {
      //hide the keyboard
       FocusScope.of(Get.context!).unfocus();
    });
    super.onInit();
  }
}
