import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondBtn extends StatelessWidget {
  const SecondBtn({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10.h)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(
            Color(0xffFFEDE0),
          )),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 15.sp),
      ),
    );
  }
}
