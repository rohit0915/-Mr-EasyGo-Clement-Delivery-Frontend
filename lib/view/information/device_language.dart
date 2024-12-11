import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeviceLanguage extends StatefulWidget {
  const DeviceLanguage({super.key});

  @override
  State<DeviceLanguage> createState() => _DeviceLanguageState();
}

class _DeviceLanguageState extends State<DeviceLanguage> {
  final List<String> _languages = [
    "English (en)",
    "French (fr)",
    "Spanish (es)",
    "German (de)",
    "Portuguese (pt)",
    "Russian (ru)",
    "Chinese (zh)"
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Get.theme.primaryColor,
                  Get.theme.secondaryHeaderColor
                ],
              ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Device Language",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.solid,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final isSelected = index == _selectedIndex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index; // Update selected index
                });
              },
              child: Container(
                decoration: isSelected
                    ? BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          transform: GradientRotation(-0.3),
                          colors: [Color(0xff2E2F59), Color(0xff4A5174)],
                        ),
                        border: Border.all(color: Colors.white, width: 0.2),
                      )
                    : null, // No gradient when not selected
                child: ListTile(
                  selected: isSelected,
                  selectedColor: Colors.white, // For text color
                  title: Text(
                    _languages[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: _languages.length,
          shrinkWrap: true,
        ),
      ],
    ));
  }
}
