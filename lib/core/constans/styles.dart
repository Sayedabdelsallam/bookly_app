import 'package:bookly_app/res/font_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_pattele.dart';

abstract class Styles {
  static TextStyle textStyle18 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle30 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    fontFamily: FontRes.GT_SECTRA_FINE_REGULAR,
  );
  static TextStyle textStyle14 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle textStyle16 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle20 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
    fontFamily: FontRes.GT_SECTRA_FINE_REGULAR,
  );
}
