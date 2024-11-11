import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSuccessAlertDialog extends StatefulWidget {
  const SecondSuccessAlertDialog({super.key});

  @override
  State<SecondSuccessAlertDialog> createState() =>
      _SecondSuccessAlertDialogState();
}

class _SecondSuccessAlertDialogState extends State<SecondSuccessAlertDialog> {
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
            SizedBox(
              height: 10.h,
            ),
            Image.asset("assets/images/success.png"),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Earned: \$ 500",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontFamily: GoogleFonts.fjallaOne().fontFamily),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Miles Covered : 40",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.sp,
                  fontFamily: GoogleFonts.fjallaOne().fontFamily),
            )
          ],
        ),
      ),
    );
  }
}
