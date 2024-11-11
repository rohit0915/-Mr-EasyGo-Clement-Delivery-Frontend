import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSuccessAlertDialog extends StatefulWidget {
  const FirstSuccessAlertDialog({super.key, required this.isPickup});

  final bool isPickup;

  @override
  State<FirstSuccessAlertDialog> createState() =>
      _FirstSuccessAlertDialogState();
}

class _FirstSuccessAlertDialogState extends State<FirstSuccessAlertDialog> {
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
              "Successfully ${widget.isPickup ? "Pickup" : "DropOff"} Work has been Done"
                  .toUpperCase(),
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                  fontFamily: GoogleFonts.fjallaOne().fontFamily),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "19 Aug 2023, 05:00 PM",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontFamily: GoogleFonts.fjallaOne().fontFamily),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "(1Hr : 32 Mins) Dropoff WOrk",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontFamily: GoogleFonts.fjallaOne().fontFamily),
            )
          ],
        ),
      ),
    );
  }
}
