import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  RxBool isNotification = true.obs;
  RxBool isImageUploaded = false.obs;

  RxBool isBankAccountUploaded = false.obs;
  RxBool isHelper= false.obs;

  RxBool isOnlyHelper = false.obs;

}
