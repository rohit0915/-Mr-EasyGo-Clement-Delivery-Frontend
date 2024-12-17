import 'package:get/get.dart';

class DeleteThisAccount2GetController extends GetxController {
  List<String> reasonsToLeave = [
    "I am changing my device",
    "I am changing my Phone Number",
    "I am deleting my account temporarily",
    "This app is missing a feature",
    "This app is not working",
    "Others"
  ];

  RxString chosenReason = "".obs;
}
