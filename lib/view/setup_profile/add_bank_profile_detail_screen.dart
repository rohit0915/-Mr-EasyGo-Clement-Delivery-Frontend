import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddBankProfileDetailScreen extends StatefulWidget {
  const AddBankProfileDetailScreen({super.key});

  @override
  State<AddBankProfileDetailScreen> createState() =>
      _AddBankProfileDetailScreenState();
}

class _AddBankProfileDetailScreenState
    extends State<AddBankProfileDetailScreen> {
  bool isBank = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New Bank Account",
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff484A5E),
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Add Bank Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.h),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Enter your bank account details",
                style: TextStyle(fontSize: 17.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your bank name",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Branch",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Account holder name",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Account number",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Re-enter account number",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "IFSC code",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
