import 'package:get/get.dart';
import 'package:muvit_driver/view/intro/intro_main_screen.dart';

class SplashScreenGetController extends GetxController {
  RxBool isLoadingScreen = false.obs;

  @override
  void onInit() {
    Future.delayed(Duration.zero, () {
      isLoadingScreen.value = true;
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(() => IntroMainScreen());
      });
    });
    super.onInit();
  }
}
