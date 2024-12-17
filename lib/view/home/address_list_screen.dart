import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'add_address_screen.dart';
import 'edit_address_screen.dart';

class AddressListScreen extends StatefulWidget {
  const AddressListScreen({super.key});

  @override
  State<AddressListScreen> createState() => _AddressListScreenState();
}

class _AddressListScreenState extends State<AddressListScreen> {
  bool isToday = true;

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
            title: Text(
              "Add or Edit Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontSize: 17.sp,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  transform: GradientRotation(-0.3),
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2D3358), Color(0xff5C6486)],
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Shreya Joseph",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " (User Name)",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            Get.to(() => const EditAddressScreen());
                          },
                          child: const Icon(Icons.edit_outlined,
                              color: Colors.grey)),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(Icons.delete_outline, color: Colors.grey),
                      SizedBox(
                        width: 20.w,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    "House Number, Road Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    "Region, City, Pin",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: const Color(0xff05E600),
                          checkColor: Colors.white,
                          value: isToday,
                          onChanged: (val) {
                            isToday = val!;
                            setState(() {});
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                      Text(
                        "Default Delivering Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isToday ? Colors.white : Colors.grey,
                            fontSize: 12.sp),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 1,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.black, size: 40),
        onPressed: () {
          Get.to(() => const AddAddressScreen());
        },
      ),
    );
  }
}
