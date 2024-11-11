import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muvit_driver/components/custom_app_bar.dart';
import 'package:muvit_driver/view/chat/chat_driver_screen.dart';
import 'package:muvit_driver/view/order/order_detai_screen.dart';

import '../chat/chat_screen.dart';

class OrderInformationScreen extends StatefulWidget {
  const OrderInformationScreen({super.key});

  @override
  State<OrderInformationScreen> createState() => _OrderInformationScreenState();
}

class _OrderInformationScreenState extends State<OrderInformationScreen> {
  final List<String> _images1 = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
  ];

  final List<String> _images2 = [
    "assets/images/image4.png",
    "assets/images/image5.png",
    "assets/images/image6.png",
  ];

  bool isAccept = false;

  bool isNext = false;
  bool isHandled = false;

  final GlobalKey _expandedKey = GlobalKey();

  double _expandedHeight = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((time) {
      _expandedHeight = _expandedKey.currentContext!.size!.height;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppBar(
              title: "Load ID: 2234202",
              onTap: () {
                Get.back();
              }),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  width: double.infinity,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff62C862),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/truck.png",
                        height: 60.h,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$ 00,000",
                              style: TextStyle(
                                fontWeight: GoogleFonts.fjallaOne().fontWeight,
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontFamily: GoogleFonts.fjallaOne().fontFamily,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: Get.width * 0.5,
                              child: RichText(
                                text: const TextSpan(
                                  text: '(Furniture Move) ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '19 Aug 2023, 05:00 PM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(),
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
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("120.0 Mile",
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
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("32:00 hrs",
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
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("\$ 700",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(),
          SizedBox(
            width: Get.width * 0.9,
            height: Get.height * 0.2,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      margin: EdgeInsets.all(5.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          !isNext ? _images1[index] : _images2[index],
                          height: 90.h,
                          width: 95.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    !isNext && index == 2
                        ? Positioned(
                            right: 0,
                            top: 40.h,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isNext = !isNext;
                                });
                              },
                              child: Image.asset(
                                "assets/images/next.png",
                                height: 20.h,
                              ),
                            ),
                          )
                        : const SizedBox(),
                    isNext && index == 0
                        ? Positioned(
                            left: 0,
                            top: 40.h,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isNext = !isNext;
                                });
                              },
                              child: Image.asset(
                                "assets/images/back.png",
                                height: 20.h,
                              ),
                            ),
                          )
                        : const SizedBox()
                  ],
                );
              },
              itemCount: 3,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 2.h),
                          child: Column(
                            children: [
                              Image.asset("assets/images/dot.png"),
                              SizedBox(
                                height: _expandedHeight + 9.h,
                                child: const VerticalDivider(),
                              ),
                              Image.asset("assets/images/dot.png")
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => const ChatDriverScreen(
                                        title: "Sender",
                                      ));
                                },
                                child: Column(
                                  key: _expandedKey,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "PiCkUp (Sender Detail)",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontFamily: GoogleFonts.fjallaOne()
                                              .fontFamily),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      "John Doe",
                                      style:
                                          TextStyle(color: Color(0xff6B38A4)),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      "+1(000)000-0000",
                                      style:
                                          TextStyle(color: Color(0xff6B38A4)),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      "2464 Royal Ln. Mesa, New Jersey 45463",
                                      style:
                                          TextStyle(color: Color(0xff6B38A4)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.035,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => const ChatDriverScreen(
                                        title: "Receiver",
                                      ));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "DropOff (Receiver Detail)",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontFamily: GoogleFonts.fjallaOne()
                                              .fontFamily),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      "John Doe",
                                      style:
                                          TextStyle(color: Color(0xff6B38A4)),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      "+1(000)000-0000",
                                      style:
                                          TextStyle(color: Color(0xff6B38A4)),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    const Text(
                                      "2464 Royal Ln. Mesa, New Jersey 45463",
                                      style:
                                          TextStyle(color: Color(0xff6B38A4)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 15.h,
                  right: 10.w,
                  child: GestureDetector(
                      onTap: () {
                        Get.to(() => const OrderDetailScreen());
                      },
                      child: Image.asset("assets/images/map.png")))
            ],
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: GoogleFonts.fjallaOne().fontFamily),
                ),
                const Text(
                    "Total 8 - Parcels ,2-King size Beds 2-Cuboards, 1-Dining Tabel , 2-Big Size Boxes with fully load glass items , 1-Fridge Note : Please , take proper helpers to Pickup & Drop Services as all are most expensive things"),
                SizedBox(
                  height: 20.h,
                ),
                const Text(
                  "Sprinter Van",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("vehicle number: AB-22-XY-2222"),
                SizedBox(
                  height: 20.h,
                ),
                const Text(
                  "Equipment",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("No equipment"),
                SizedBox(
                  height: 10.h,
                ),
                const Row(
                  children: [
                    Text(
                      "Start Time:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(" fri, may3 2024 8:31AM")
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "End Time:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(" fri, may3 2024 8:31PM")
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              children: [
                Checkbox(
                    visualDensity: VisualDensity.compact,
                    activeColor: Colors.amber,
                    value: isHandled,
                    onChanged: (value) {
                      setState(() {
                        isHandled = value!;
                      });
                    }),
                const Text(
                  "Handlers Required",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: Get.width,
            height: Get.height * 0.1,
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Estimated Reachout Timing",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      fontFamily: GoogleFonts.fjallaOne().fontFamily),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "19 Aug 2023, 05:00 PM",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          !isAccept
              ? SizedBox(
                  width: Get.width * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 8.h)),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        backgroundColor: const WidgetStatePropertyAll(
                          Colors.amber,
                        )),
                    onPressed: () {
                      setState(() {
                        isAccept = true;
                      });
                    },
                    child: Text(
                      "Accept Load".toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                  ),
                )
              : Row(
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
                ),
          SizedBox(
            height: 10.h,
          ),
        ],
      )),
    ));
  }
}
