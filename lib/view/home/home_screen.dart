import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:muvit_driver/components/dashed_vertical_line.dart';
import 'package:muvit_driver/controller/home_controller.dart';
import 'package:muvit_driver/utility/constants.dart';
import 'package:muvit_driver/utility/utillity.dart';
import 'package:muvit_driver/view/home/home_drawer.dart';

import '../notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.find();

  final Utility utility = Utility();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // showDeliveryDialog();
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
      drawer: HomeDrawer(),
      key: homeController.scaffoldKey.value,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => homeController.isLoading.value
                  ? Container(
                      margin: EdgeInsets.only(top: 100.h),
                      child: const Center(
                          child: CircularProgressIndicator(
                        color: Colors.white,
                      )),
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.4,
                          width: Get.width,
                          child: Stack(
                            children: [
                              homeController.isOnline.isFalse
                                  ? SizedBox()
                                  : FutureBuilder(
                                      future: rootBundle.loadString(
                                          'assets/json/map_style.json'),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return const Center(
                                              child:
                                                  CircularProgressIndicator());
                                        }
                                        return GoogleMap(
                                          zoomControlsEnabled: false,
                                          initialCameraPosition: CameraPosition(
                                            target: homeController
                                                .currentLocation.value!,
                                            zoom: 15.0,
                                          ),
                                          style: snapshot.data,
                                          onMapCreated:
                                              (GoogleMapController controller) {
                                            homeController.googleMapController =
                                                controller;
                                            // controller.setMapStyle(snapshot.data);
                                          },
                                          onCameraMove:
                                              (CameraPosition position) {
                                            // Update the selected location as the map is moved
                                            homeController.currentLocation
                                                .value = position.target;
                                          },
                                        );
                                      },
                                    ),
                              Positioned(
                                top: 20.h,
                                left: 10.h,
                                right: 10.h,
                                child: SizedBox(
                                  width: Get.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          homeController.isOnline.value =
                                              !homeController.isOnline.value;
                                        },
                                        child: homeController.isOnline.isTrue
                                            ? Image.asset(
                                                "assets/images/online.png",
                                                height: 25.h,
                                              )
                                            : Image.asset(
                                                "assets/images/offline.png",
                                                height: 25.h,
                                              ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        homeController.isOnline.isFalse
                            ? SizedBox()
                            : Container(
                                padding: EdgeInsets.only(top: 20.h),
                                height: Get.height * 0.5,
                                decoration: cardDecoration,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "New Orders",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.sp),
                                            ),
                                            Text(
                                              "Orders after 4 PM, will be delivered next day.",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Container(
                                          decoration: cardDecoration.copyWith(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w, vertical: 10.h),
                                          child: Text(
                                            "Refresh",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      width: Get.width,
                                      height: Get.height * 0.3,
                                      child: GridView.builder(
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisExtent: 180.h),
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Card(
                                              elevation: 2.h,
                                              child: Container(
                                                decoration: cardDecoration,
                                                child: Padding(
                                                  padding: EdgeInsets.all(15.w),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        "21 Aug 2024: ",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize: 11
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight.bold)),
                                                                TextSpan(
                                                                    text:
                                                                        "16:00",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            9.sp)),
                                                              ])),
                                                          RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        "\$100",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize: 12
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight.bold)),
                                                              ])),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: 6.h,
                                                            height: 6.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.green,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            "1901, Stockholm Bridge, Sweden",
                                                            style: TextStyle(
                                                                fontSize: 8.sp),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        3.w),
                                                            child:
                                                                DashedVerticalLine(
                                                              height: 10.h,
                                                              dashHeight: 3.5.h,
                                                              dashWidth: 1.w,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: 6.h,
                                                            height: 6.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.green,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            "1901, Royal Lane, Sweden",
                                                            style: TextStyle(
                                                                fontSize: 8.sp),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Table(
                                                        border: TableBorder.all(
                                                            color:
                                                                Colors.white),
                                                        children: [
                                                          TableRow(children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          10.w,
                                                                      vertical:
                                                                          5.h),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "ITEMS DIMENSIONS",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize: 7
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      "10x10x10",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              7.sp)),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          10.w,
                                                                      vertical:
                                                                          5.h),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "PAYMENT METHODS",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize: 7
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text("Cash",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              7.sp)),
                                                                ],
                                                              ),
                                                            ),
                                                          ]),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Color(
                                                                        0xff59607F),
                                                                foregroundColor:
                                                                    Colors.red,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .all(
                                                                    Radius.circular(
                                                                        10.r),
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Text(
                                                                  "Reject",
                                                                  maxLines: 1,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10.sp)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 10.w,
                                                          ),
                                                          Expanded(
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {
                                                                homeController
                                                                    .currentIndex
                                                                    .value = 1;
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .green,
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(10.r))),
                                                              ),
                                                              child: Text(
                                                                  "Accepted",
                                                                  maxLines: 1,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10.sp)),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              )
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }

  void showDeliveryDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent, // Remove the white border
        elevation: 0, // Remove shadow
        insetPadding: EdgeInsets.zero, // Remove default dialog padding
        child: GestureDetector(
            onTap: () {
              homeController.currentIndex.value = 1;
              Get.back();
            },
            child: Image.asset("assets/images/new_delivery_pop.png")),
      ),
    );
  }
}
