import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.title,
      required this.hintText,
      this.keyboardType,
      this.isEdit = false,
      this.icon});

  final String title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool isEdit;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
        ),
        SizedBox(
          height: 10.h,
        ),
        TextField(
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            suffixIcon:
                isEdit ? Image.asset("assets/images/edit_icon.png") : icon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: const Color(0xffF5F4F0),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
