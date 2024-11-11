import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptOrderDialog extends StatelessWidget {
  const AcceptOrderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      content: SizedBox(
        width: Get.width * 0.7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/accept.gif"),
            Text("Order Accepted!".toUpperCase(),
                style: TextStyle(
                  fontFamily: GoogleFonts.fjallaOne().fontFamily,
                  fontSize: 19.sp,
                  color: Colors.grey.shade700,
                )),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              "Order for furniture move on 19th Aug 2023 has been accepted",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
