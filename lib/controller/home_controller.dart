import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxBool isLoading = true.obs;
  RxBool isNotification = true.obs;
  RxBool isImageUploaded = false.obs;

  RxBool isBankAccountUploaded = false.obs;
  RxBool isHelper = false.obs;
  RxBool isOnline = true.obs;

  RxBool isOnlyHelper = false.obs;

  RxInt orderStart = 0.obs;

  Rx<GlobalKey<ScaffoldState>> scaffoldKey = GlobalKey<ScaffoldState>().obs;

  GoogleMapController? googleMapController;
  Rxn<LatLng> currentLocation = Rxn<LatLng>();

  Future<void> getLocation() async {
    // Check if location permission is granted
    if (!await Permission.location.isGranted) {
      // Request permission if not already granted
      final status = await Permission.location.request();

      if (status == PermissionStatus.permanentlyDenied) {
        // Handle the permanently denied case
        isLoading.value = false;
        await _showPermissionDialog();
        return;
      }

      if (status != PermissionStatus.granted) {
        // Exit if permission is denied
        isLoading.value = false;
        return;
      }
    }

    try {
      // Fetch the current position
      var position = await Geolocator.getCurrentPosition();
      print(position);
      currentLocation.value = LatLng(position.latitude, position.longitude);
    } catch (e) {
      // Handle any errors, such as location services being disabled
      print("Error fetching location: $e");
    } finally {
      // Ensure isLoading is set to false regardless of the outcome
      isLoading.value = false;
    }
  }

// Show a dialog to guide the user to the app's settings
  Future<void> _showPermissionDialog() async {
    await Get.defaultDialog(
      title: "Permission Required",
      middleText:
          "Location permission is permanently denied. Please enable it in the app settings.",
      textCancel: "Cancel",
      textConfirm: "Open Settings",
      onConfirm: () async {
        await openAppSettings(); // Open app settings
        Get.back(); // Close the dialog
      },
    );
  }
}
