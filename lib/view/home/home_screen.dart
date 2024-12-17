import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:muvit_driver/controller/home_controller.dart';
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
                          // SizedBox(
                          //   width: Get.width,
                          //   height: Get.height * 0.5,
                          //   child: GridView.builder(
                          //       gridDelegate:
                          //           SliverGridDelegateWithFixedCrossAxisCount(
                          //         crossAxisCount: 2,
                          //       ),
                          //       itemCount: 5,
                          //       itemBuilder: (context, index) {
                          //         return Container(
                          //           padding:
                          //               EdgeInsets.symmetric(horizontal: 20.w),
                          //           child: Card(
                          //             elevation: 2.h,
                          //             child: Container(
                          //               decoration: cardDecoration,
                          //               child: Padding(
                          //                 padding: EdgeInsets.all(15.w),
                          //                 child: Column(
                          //                   children: [
                          //                     Row(
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment
                          //                               .spaceBetween,
                          //                       children: [
                          //                         RichText(
                          //                             text: TextSpan(children: [
                          //                           TextSpan(
                          //                               text: "21 Aug 2024: ",
                          //                               style: TextStyle(
                          //                                   color: Colors.white,
                          //                                   fontSize: 12.sp,
                          //                                   fontWeight:
                          //                                       FontWeight.bold)),
                          //                           TextSpan(
                          //                               text: "16:00",
                          //                               style: TextStyle(
                          //                                   color: Colors.white,
                          //                                   fontSize: 10.sp)),
                          //                         ])),
                          //                         RichText(
                          //                             text: TextSpan(children: [
                          //                           TextSpan(
                          //                               text: "Booking ID, ",
                          //                               style: TextStyle(
                          //                                   color: Colors.white,
                          //                                   fontSize: 12.sp,
                          //                                   fontWeight:
                          //                                       FontWeight.bold)),
                          //                           TextSpan(
                          //                               text: "123456",
                          //                               style: TextStyle(
                          //                                   color: Colors.white,
                          //                                   fontSize: 10.sp)),
                          //                         ])),
                          //                         RichText(
                          //                             text: TextSpan(children: [
                          //                           TextSpan(
                          //                               text: "\$100",
                          //                               style: TextStyle(
                          //                                   color: Colors.white,
                          //                                   fontSize: 12.sp,
                          //                                   fontWeight:
                          //                                       FontWeight.bold)),
                          //                         ])),
                          //                       ],
                          //                     ),
                          //                     SizedBox(
                          //                       height: 10.h,
                          //                     ),
                          //                     Row(
                          //                       children: [
                          //                         Container(
                          //                           width: 6.h,
                          //                           height: 6.h,
                          //                           decoration: BoxDecoration(
                          //                             color: Colors.green,
                          //                             shape: BoxShape.circle,
                          //                           ),
                          //                         ),
                          //                         SizedBox(
                          //                           width: 5.w,
                          //                         ),
                          //                         Text(
                          //                           "1901, Stockholm Bridge, Sweden",
                          //                           style: TextStyle(
                          //                               fontSize: 12.sp),
                          //                         )
                          //                       ],
                          //                     ),
                          //                     Row(
                          //                       children: [
                          //                         Padding(
                          //                           padding: EdgeInsets.symmetric(
                          //                               horizontal: 3.w),
                          //                           child: DashedVerticalLine(
                          //                             height: 20.h,
                          //                             dashHeight: 3.5.h,
                          //                             dashWidth: 1.w,
                          //                             color: Colors.green,
                          //                           ),
                          //                         ),
                          //                       ],
                          //                     ),
                          //                     Row(
                          //                       children: [
                          //                         Container(
                          //                           width: 6.h,
                          //                           height: 6.h,
                          //                           decoration: BoxDecoration(
                          //                             color: Colors.green,
                          //                             shape: BoxShape.circle,
                          //                           ),
                          //                         ),
                          //                         SizedBox(
                          //                           width: 5.w,
                          //                         ),
                          //                         Text(
                          //                           "1901, Royal Lane, Sweden",
                          //                           style: TextStyle(
                          //                               fontSize: 12.sp),
                          //                         )
                          //                       ],
                          //                     ),
                          //                     SizedBox(
                          //                       height: 10.h,
                          //                     ),
                          //                     Table(
                          //                       border: TableBorder.all(
                          //                           color: Colors.white),
                          //                       children: [
                          //                         TableRow(children: [
                          //                           Padding(
                          //                             padding:
                          //                                 EdgeInsets.symmetric(
                          //                                     horizontal: 10.w,
                          //                                     vertical: 5.h),
                          //                             child: Column(
                          //                               crossAxisAlignment:
                          //                                   CrossAxisAlignment
                          //                                       .start,
                          //                               children: [
                          //                                 Text("ITEMS DIMENSIONS",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize: 12.sp,
                          //                                         fontWeight:
                          //                                             FontWeight
                          //                                                 .bold)),
                          //                                 Text("10x10x10",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize:
                          //                                             10.sp)),
                          //                               ],
                          //                             ),
                          //                           ),
                          //                           Padding(
                          //                             padding:
                          //                                 EdgeInsets.symmetric(
                          //                                     horizontal: 10.w,
                          //                                     vertical: 5.h),
                          //                             child: Column(
                          //                               crossAxisAlignment:
                          //                                   CrossAxisAlignment
                          //                                       .start,
                          //                               children: [
                          //                                 Text("PAYMENT METHODS",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize: 12.sp,
                          //                                         fontWeight:
                          //                                             FontWeight
                          //                                                 .bold)),
                          //                                 Text("Cash",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize:
                          //                                             10.sp)),
                          //                               ],
                          //                             ),
                          //                           ),
                          //                         ]),
                          //                         TableRow(children: [
                          //                           Padding(
                          //                             padding:
                          //                                 EdgeInsets.symmetric(
                          //                                     horizontal: 10.w,
                          //                                     vertical: 5.h),
                          //                             child: Column(
                          //                               crossAxisAlignment:
                          //                                   CrossAxisAlignment
                          //                                       .start,
                          //                               children: [
                          //                                 Text("MARILYN STANTON",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize: 12.sp,
                          //                                         fontWeight:
                          //                                             FontWeight
                          //                                                 .bold)),
                          //                                 Text("+919876543210",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize:
                          //                                             10.sp)),
                          //                               ],
                          //                             ),
                          //                           ),
                          //                           Padding(
                          //                             padding:
                          //                                 EdgeInsets.symmetric(
                          //                                     horizontal: 10.w,
                          //                                     vertical: 5.h),
                          //                             child: Column(
                          //                               crossAxisAlignment:
                          //                                   CrossAxisAlignment
                          //                                       .start,
                          //                               children: [
                          //                                 Text("SHIPMENT STATUS",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize: 12.sp,
                          //                                         fontWeight:
                          //                                             FontWeight
                          //                                                 .bold)),
                          //                                 Text("Pending",
                          //                                     style: TextStyle(
                          //                                         color: Colors
                          //                                             .white,
                          //                                         fontSize:
                          //                                             10.sp)),
                          //                               ],
                          //                             ),
                          //                           ),
                          //                         ]),
                          //                       ],
                          //                     ),
                          //                     SizedBox(
                          //                       height: 10.h,
                          //                     ),
                          //                     Row(
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment
                          //                               .spaceBetween,
                          //                       children: [
                          //                         Expanded(
                          //                           child: ElevatedButton(
                          //                             onPressed: () {},
                          //                             style: ElevatedButton
                          //                                 .styleFrom(
                          //                               backgroundColor:
                          //                                   Colors.red,
                          //                               foregroundColor:
                          //                                   Colors.white,
                          //                               shape: RoundedRectangleBorder(
                          //                                   borderRadius:
                          //                                       BorderRadius.all(
                          //                                           Radius.circular(
                          //                                               10.r))),
                          //                             ),
                          //                             child: Text("Reject"),
                          //                           ),
                          //                         ),
                          //                         SizedBox(
                          //                           width: 10.w,
                          //                         ),
                          //                         Expanded(
                          //                           child: ElevatedButton(
                          //                             onPressed: () {},
                          //                             style: ElevatedButton
                          //                                 .styleFrom(
                          //                               backgroundColor:
                          //                                   Colors.green,
                          //                               foregroundColor:
                          //                                   Colors.white,
                          //                               shape: RoundedRectangleBorder(
                          //                                   borderRadius:
                          //                                       BorderRadius.all(
                          //                                           Radius.circular(
                          //                                               10.r))),
                          //                             ),
                          //                             child: Text("Accept"),
                          //                           ),
                          //                         ),
                          //                       ],
                          //                     )
                          //                   ],
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         );
                          //       }),
                          // )

                          height: Get.height * 0.4,
                          width: Get.width,
                          child: FutureBuilder(
                            future: rootBundle
                                .loadString('assets/json/map_style.json'),
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
                                  homeController.googleMapController =
                                      controller;
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
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}
