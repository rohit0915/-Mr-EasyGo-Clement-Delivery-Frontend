import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const mainColor = Color(0xffF40062);
const secondaryColor = Color(0xffF9813A);
const thirdColor = Color(0xffD12794);
const textMiniColor = Color(0xff0F4C82);

final cardDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    transform: GradientRotation(-0.3),
    colors: [Color(0xff383A61), Color(0xff5B6482)],
  ),
  borderRadius: BorderRadius.circular(5.r),
);
