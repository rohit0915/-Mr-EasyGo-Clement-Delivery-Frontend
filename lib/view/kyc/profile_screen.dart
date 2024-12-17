import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:muvit_driver/components/custom_textfield.dart';
import 'package:muvit_driver/components/first_btn.dart';
import 'package:muvit_driver/utility/constants.dart';
import 'package:muvit_driver/view/kyc/kyc_info_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // List of items in the dropdown
  final List<String> _items = ['Pick up', 'Cargo van', 'Sprinter van', 'Box truck'];

  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(child: SvgPicture.asset("assets/svg/logo_mini.svg")),
              SizedBox(
                height: 40.h,
              ),
              Center(child: Image.asset("assets/images/profile_image.png")),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Upload Profile Picture",
                    style: TextStyle(
                      color: textMiniColor,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Icon(
                    Icons.file_upload_outlined,
                    color: textMiniColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextfield(
                title: "Plate Number",
                hintText: "eg AB 12XY 0000",
                keyboardType: TextInputType.number,
              ),
              const CustomTextfield(
                title: "Vehicle Owner Name",
                hintText: "Full name",
              ),
              const CustomTextfield(
                title: "Mobile Number",
                hintText: "+1 (000) 0000-000",
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Vehicle Type",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffF5F4F0),
                ),
                width: Get.width,
                child: DropdownButton<String>(
                  hint: const Text('Type'),
                  value: _selectedItem,
                  isExpanded: true,
                  focusColor: Colors.amber,
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
              SizedBox(
                width: Get.width,
                child: FirstBtn(
                    text: "Submit",
                    onTap: () {
                      Get.to(() => const KycInfoScreen(
                            imageDone: false,
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
