import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muvit_driver/utility/constants.dart';

class ImageTileWidget extends StatefulWidget {
  const ImageTileWidget({super.key, required this.text});
  final String text;

  @override
  State<ImageTileWidget> createState() => _ImageTileWidgetState();
}

class _ImageTileWidgetState extends State<ImageTileWidget> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              widget.text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            )),
        GestureDetector(
          onTap: () {
            setState(() {
              isClick = !isClick;
            });
          },
          child: Container(
            padding: EdgeInsets.all(10.h),
            margin: EdgeInsets.only(
              top: 10.h,
              left: 10.h,
              right: 10.h,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isClick ? "Image Uploaded" : "Upload Image",
                  style: TextStyle(color: textMiniColor, fontSize: 14.sp),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(isClick ? Icons.edit : Icons.file_upload,
                    color: textMiniColor)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
