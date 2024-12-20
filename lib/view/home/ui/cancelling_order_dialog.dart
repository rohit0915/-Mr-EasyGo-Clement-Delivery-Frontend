import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/controller/home_controller.dart';

class CancellingOrderDialog extends StatefulWidget {
  const CancellingOrderDialog({
    super.key,
  });

  @override
  State<CancellingOrderDialog> createState() => _CancellingOrderDialogState();
}

class _CancellingOrderDialogState extends State<CancellingOrderDialog> {
  final List<String> _items = [
    'Wrong Address',
    'No Payment Received',
    'Taking lot of Time',
    'False Information'
  ];

  String? _selectedItem;

  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              child: Icon(
                Icons.close,
                size: 30.h,
              ),
              onTap: () => Get.back(),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Reason for Cancelling Order",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Container(
            color: Color(0xffD9D9D9),
            child: DropdownButton<String>(
              isExpanded: true,
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                ),
              ),
              borderRadius: BorderRadius.circular(20.r),
              hint: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Select your Reason')),
              dropdownColor: Color(0xffD9D9D9),
              value: _selectedItem,
              items: _items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue;
                });
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Any Comments?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              fillColor: Color(0xffD9D9D9),
              hintText: "Write your comment here...",
              filled: true,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: Get.width,
            child: TextButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.r),
                      ),
                    ),
                  ),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 10.h),
                  ),
                  backgroundColor: const WidgetStatePropertyAll(
                    Color(0xff2A2E55),
                  ),
                ),
                onPressed: () {
                  homeController.currentIndex.value = 0;
                  Get.back();
                },
                child: const Text(
                  "Submit & Reject",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
