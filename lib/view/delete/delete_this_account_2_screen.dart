import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'delete_this_account_2_get_controller.dart';
import 'delete_this_account_3_screen.dart';

class DeleteThisAccount2Screen extends StatelessWidget {
  DeleteThisAccount2Screen({super.key});

  final DeleteThisAccount2GetController getController =
      Get.put(DeleteThisAccount2GetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
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
                "Delete This Account",
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "We have to see you leave. Tell us why you are deleting this account.",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14.sp, color: Colors.white54),
              ),
              SizedBox(
                height: 20.h,
              ),
              Obx(() => DropdownButton<String>(
                    isExpanded: true,
                    value: getController.chosenReason.value.isEmpty
                        ? null
                        : getController.chosenReason.value,
                    hint: const Text("Select a reason",
                        style: TextStyle(color: Colors.white54)),
                    items: getController.reasonsToLeave.map((String reason) {
                      return DropdownMenuItem<String>(
                        value: reason,
                        child: Text(reason,
                            style: const TextStyle(color: Colors.black)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      getController.chosenReason.value = newValue!;
                    },
                  )),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "How can we improve? (optional)",
                    filled: true,
                    fillColor: Color(0xff2B2E55),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    )),
                keyboardType: TextInputType.phone,
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => DeleteThisAccount3Screen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffC40505),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.w, vertical: 15.h),
                      ),
                      child: const Text("Delete Account"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ));
  }
}
