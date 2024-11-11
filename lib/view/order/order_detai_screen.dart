import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';
import 'package:muvit_driver/components/dialog/timer_alert_dialog.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:permission_handler/permission_handler.dart';

import '../chat/chat_screen.dart';
import 'order_working_process_screen.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  GoogleMapController? googleMapController;
  late LatLng currentLocation;
  bool isLoading = true;

  HomeController homeController = Get.find();

  @override
  initState() {
    getLocation();
    super.initState();
  }

  @override
  void dispose() {
    googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: "Order Detail",
              onTap: () {
                Get.back();
              },
            ),
            const Divider(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    Text("00.00 Mile",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    Text("00:00 hrs",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    Text("\$ 00,000",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: Get.height * 0.65,
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      children: [
                        // Add Map
                        GoogleMap(
                          zoomControlsEnabled: false,
                          initialCameraPosition: CameraPosition(
                            target: currentLocation,
                            zoom: 15.0,
                          ),
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController = controller;
                            setState(() {});
                          },
                          onCameraMove: (CameraPosition position) {
                            // Update the selected location as the map is moved
                            currentLocation = position.target;
                          },
                        ),
                        Positioned(
                            bottom: 10.h,
                            right: 20.w,
                            left: 20.w,
                            child: Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    side: WidgetStatePropertyAll(BorderSide(
                                        color: Colors.black, width: 0.5.w)),
                                    padding: WidgetStatePropertyAll(
                                        EdgeInsets.symmetric(
                                            vertical: 10.h, horizontal: 20.h)),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    backgroundColor:
                                        const WidgetStatePropertyAll(
                                      Colors.amber,
                                    )),
                                onPressed: () {
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) => TimerAlertDialog(
                                            callback: () {
                                              Get.to(() =>
                                                  const OrderWorkingProcessScreen());
                                            },
                                          ));
                                },
                                child: Text(
                                  homeController.isHelper.isFalse
                                      ? "I am With the Helper"
                                      : "I am With the Driver",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                              ),
                            )),
                        Positioned(
                          top: 10.h,
                          right: 10.h,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(Icons.gps_fixed),
                          ),
                        )
                      ],
                    ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Text(
                    "Chat With Customer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: const Color(0xffF8005E)),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0xff4C9C2E),
                          ),
                        ),
                        onPressed: () {
                          Get.to(
                              () => const ChatScreen(title: "Chat With Owner"));
                        },
                        label: Text(
                          "WhatsApp".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        icon: Image.asset("assets/images/Wap.png")),
                    ElevatedButton.icon(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0xff6390FF),
                          ),
                        ),
                        onPressed: () {
                          Get.to(
                              () => const ChatScreen(title: "Chat With Owner"));
                        },
                        label: Text(
                          "Message".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        icon: Image.asset("assets/images/Mes.png")),
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  Future<void> getLocation() async {
    if (!await Permission.location.isGranted) {
      await Permission.location.request();
      getLocation();
    } else {
      var position = await Geolocator.getCurrentPosition();
      currentLocation = LatLng(position.latitude, position.longitude);
      isLoading = false;
      setState(() {});
    }
  }
}
