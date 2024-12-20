import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:muvit_driver/utility/constants.dart';
import 'package:muvit_driver/view/home/withdraw_screen.dart';

import '../../../controller/home_controller.dart';

class WalletTabScreen extends StatefulWidget {
  const WalletTabScreen({super.key});

  @override
  State<WalletTabScreen> createState() => _WalletTabScreenState();
}

class _WalletTabScreenState extends State<WalletTabScreen> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Card(
              elevation: 7.h,
              child: Container(
                decoration: cardDecoration,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wallet Balance",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    //rich text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "\$",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            children: [
                              TextSpan(
                                text: "1000",
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => WithdrawScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                MdiIcons.download,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Withdraw",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: cardDecoration.copyWith(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Recent Transactions",
                        style: TextStyle(fontSize: 15.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: Get.height * 0.51,
                    width: Get.width,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            leading: Image.asset(
                              "assets/images/easy_go_logo.png",
                              color: Colors.blue,
                              width: 50.w,
                            ),
                            title: Text(
                              "Amount Received",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "30 Sep 2024 | 12:50 pm",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey.shade400),
                            ),
                            trailing: Text(
                              "\$ 500",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color(0xff00E917),
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
