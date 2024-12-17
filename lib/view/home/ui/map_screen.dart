import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:muvit_driver/utility/utillity.dart';

import '../../../controller/home_controller.dart';
import '../../notification/notification_screen.dart';
import '../home_drawer.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  HomeController homeController = Get.find();

  final Utility utility = Utility();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await homeController.getLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: GestureDetector(
            onTap: () {
              homeController.scaffoldKey.value.currentState!.openDrawer();
            },
            child: Image.asset(
              "assets/images/drawer_menu.png",
              width: 20.h,
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/easy_go_logo.png",
            width: 100.h,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => const NotificationScreen());
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Image.asset(
                "assets/images/notification_bell_icon.png",
                height: 20.h,
              ),
            ),
          )
        ],
      ),
      drawer: const HomeDrawer(),
      key: homeController.scaffoldKey.value,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => homeController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                  : SizedBox(
                      height: Get.height * 0.8,
                      
                      child: FutureBuilder(
                        future:
                            rootBundle.loadString('assets/json/map_style.json'),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                          return GoogleMap(
                            zoomControlsEnabled: false,
                            initialCameraPosition: CameraPosition(
                              target: homeController.currentLocation.value!,
                              zoom: 15.0,
                            ),
                            style: snapshot.data,
                            onMapCreated: (GoogleMapController controller) {
                              homeController.googleMapController = controller;
                              // controller.setMapStyle(snapshot.data);
                            },
                            onCameraMove: (CameraPosition position) {
                              // Update the selected location as the map is moved
                              homeController.currentLocation.value =
                                  position.target;
                            },
                          );
                        },
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
