import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muvit_driver/utility/constants.dart';

class InviteAndReferPage extends StatefulWidget {
  const InviteAndReferPage({super.key});

  @override
  State<InviteAndReferPage> createState() => _InviteAndReferPageState();
}

class _InviteAndReferPageState extends State<InviteAndReferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Get.theme.primaryColor,
                    Get.theme.secondaryHeaderColor
                  ],
                ),
              ),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  "Invite & Refer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          transform: GradientRotation(-0.3),
                          colors: [Color(0xff2E2F59), Color(0xff4A5174)],
                        ),
                        border: Border.all(color: Colors.white, width: 0.2),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 20.h),
                      child: Column(children: [
                        Image.asset("assets/images/invite.png"),
                        Text(
                          "Invite Friends & Get Referral Points",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              fontFamily: GoogleFonts.fjallaOne().fontFamily),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Invite your friends and earn\nwith Easygo and get upto \$20",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          decoration: cardDecoration.copyWith(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          child: Text(
                            "Invite Friends",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        // GradientButton(
                        //   text: "Invite Friends",
                        //   onTap: () {
                        //     Share.share('Testing');
                        //   },
                        // )
                      ]),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
