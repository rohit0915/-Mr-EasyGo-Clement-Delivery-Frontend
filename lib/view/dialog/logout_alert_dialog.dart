import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../intro/lets_get_started_screen.dart';

class LogoutAlertDialog extends StatelessWidget {
  const LogoutAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Are You sure Want\nTo Log Out ?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.r),
                          ),
                        ),
                      ),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.all(0),
                      ),
                      backgroundColor: const WidgetStatePropertyAll(
                        Color(0xff2A2E55),
                      ),
                    ),
                    onPressed: () {
                      Get.offAll(() => LetsGetStartedScreen());
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            side: const BorderSide(
                              width: 1,
                              color: Color(0xff2A2E55),
                            )))),
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      "No",
                      style: TextStyle(
                        color: Color(0xff2A2E55),
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
