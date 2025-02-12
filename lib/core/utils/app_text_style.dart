import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static TextStyle pacifico400style64 = TextStyle(
    fontFamily: "Pacifico",
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deebBrown,
  );

  static TextStyle poppins500style24 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle poppins400style12 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.deebGrey,
  );

  static TextStyle poppins600style28 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static TextStyle poppins300style16 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );
}
