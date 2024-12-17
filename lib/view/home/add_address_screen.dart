import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final List<String> _items = ['Home', 'Office', 'Work'];

  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Get.theme.primaryColor, Get.theme.secondaryHeaderColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Add Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flat/House Number *".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("Type here", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Apartment/Area/Locality/Road... *".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("Type here", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Pin code *".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("Type here", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "REGION *".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("Type here", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "City *".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        transform: GradientRotation(-0.3),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff2D3358), Color(0xff5C6486)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                    child: Row(
                      children: [
                        Text("Type here", style: TextStyle(fontSize: 15.sp)),
                        const Spacer(),
                      ],
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "TYPE OF ADDRESS *".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      transform: GradientRotation(-0.3),
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff2D3358), Color(0xff5C6486)],
                    ),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    dropdownColor: const Color(0xff2F335A),
                    hint: const Text(
                      'Select one',
                      style: TextStyle(color: Colors.grey),
                    ),
                    value: _selectedItem,
                    items: _items.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedItem = newValue;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets
                        .zero, // Removes default padding to match container size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.r), // Optional: Add rounded corners
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        transform: GradientRotation(-0.3),
                        colors: [Color(0xff3D4666), Color(0xff5C6483)],
                      ),
                      borderRadius: BorderRadius.circular(
                          20.r), // Optional: Match shape radius
                    ),
                    child: Container(
                      alignment: Alignment.center, // Align text to center
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ADD",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
