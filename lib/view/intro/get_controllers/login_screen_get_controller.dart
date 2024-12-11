import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenGetController extends GetxController {
  RxBool isLoginWithNumber = true.obs;

  RxBool isViewPassword = true.obs;

  RxBool isOtp = false.obs;

  @override
  void onInit() {
    isLoginWithNumber.listen((value) {
      //hide the keyboard
      FocusScope.of(Get.context!).unfocus();
    });
    super.onInit();
  }
}
