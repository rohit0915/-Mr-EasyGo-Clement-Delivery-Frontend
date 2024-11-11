import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentItemWidget extends StatelessWidget {
  const PaymentItemWidget(
      {super.key,
      required this.isActive,
      required this.title,
      required this.image,
      required this.onClick,
      required this.isShadow});

  final bool isActive;
  final String title;
  final Function() onClick;
  final String image;
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          Expanded(flex: 1, child: Image.asset(image)),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: isActive
                      ? const WidgetStatePropertyAll(Colors.green)
                      : const WidgetStatePropertyAll(Colors.white)),
              onPressed: () {
                onClick();
              },
              child: Text(
                "Select",
                style: TextStyle(color: isActive ? Colors.white : Colors.black),
              )),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
    );
  }
}
