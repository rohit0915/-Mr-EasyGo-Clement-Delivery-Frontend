import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
              "Contact Us",
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
        child: const SingleChildScrollView(
          child: Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet tellus id massa suscipit aliquam. Curabitur tortor eros, consectetur sed dictum a, varius sit amet risus. Aliquam sapien sem, rhoncus non ligula at, auctor ullamcorper felis. Integer bibendum velit turpis, vel faucibus ipsum dapibus et. Quisque pharetra ex ac odio tempus consectetur. Morbi magna ipsum, dictum vitae hendrerit vel, lacinia eu dolor. Sed auctor volutpat sem, eu elementum elit pharetra sit amet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vitae gravida magna. Suspendisse laoreet, justo vel interdum faucibus, sapien nisl scelerisque quam, non malesuada ligula justo ut lacus. Cras a ornare est. Pellentesque finibus lectus sit amet libero elementum porttitor. Etiam ac turpis nec nulla convallis consectetur eu a lacus. Cras pretium eros tellus, nec hendrerit enim pretium eget. In vestibulum, augue at suscipit facilisis, ex justo feugiat massa, ac dictum est eros eu mi. Cras blandit velit in orci vestibulum, in luctus ex vestibulum.
                  
                  Nunc sed eros leo. Etiam at leo erat. Etiam rhoncus placerat ante, a sagittis ipsum aliquet sed. Vestibulum tempor, ligula a rhoncus molestie, eros quam tincidunt arcu, a rutrum urna quam vel urna. Sed interdum, urna vitae ultrices placerat, nulla ex iaculis leo, et laoreet quam ligula quis urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse dapibus elit mi, quis sagittis lorem blandit sed. Suspendisse vehicula iaculis dolor ut pulvinar. Phasellus venenatis nisi turpis.
                  
                  Praesent ut dolor in ante finibus ultricies. Proin arcu odio, interdum scelerisque lectus et, lacinia tincidunt sem. Aenean aliquam nisl at posuere efficitur. Fusce lacinia nisi metus, at vestibulum est molestie nec. Etiam laoreet ex ut turpis convallis, sit amet sagittis nibh ultrices. Donec convallis lobortis blandit. Maecenas consequat, purus sed tristique ultricies, velit lectus aliquam risus, et semper justo dolor ac eros. Maecenas neque diam, imperdiet ac aliquam nec, facilisis non metus. Pellentesque ornare metus ac rutrum malesuada. Curabitur purus sem, molestie sed hendrerit id, accumsan ut tortor."""),
        ),
      ),
    );
  }
}
