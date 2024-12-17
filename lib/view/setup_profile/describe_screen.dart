import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/view/setup_profile/first_profile_detail_screen.dart';

class DescribeScreen extends StatefulWidget {
  const DescribeScreen({super.key});

  @override
  State<DescribeScreen> createState() => _DescribeScreenState();
}

class _DescribeScreenState extends State<DescribeScreen> {
  bool isTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/easy_go_logo.png",
          height: 30.h,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Which describes you?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => FirstProfileDetailScreen());
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    transform: GradientRotation(-0.3),
                    colors: [Color(0xff383A61), Color(0xff5B6482)],
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    SvgPicture.asset(
                      "assets/svg/vehicle1.svg",
                      height: 70.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: Text(
                      "Admin’s Driver",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    )),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 28.sp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.w,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => FirstProfileDetailScreen());
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    transform: GradientRotation(-0.3),
                    colors: [Color(0xff383A61), Color(0xff5B6482)],
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset(
                      "assets/images/vehicle 1.png",
                      height: 70.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: Text(
                      "Freelancer Driver",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    )),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 28.sp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    value: isTerms,
                    onChanged: (value) {
                      setState(() {
                        isTerms = value!;
                      });
                    }),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By proceeding further you agree to our",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        const Text(
                          " Terms & conditions",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("and", style: TextStyle(fontSize: 10.sp)),
                        const Text(
                          " Privacy Policy",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
