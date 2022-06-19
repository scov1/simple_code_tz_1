import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';

class AppStyles{
  static const s16w400gray = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textFiledMain
  );
  static const s10w500green = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.statusTextGreen
  );
  static const s10w500red = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.statusTextRed
  );
  static const s16w500main = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText
  );
  static const s12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.descText
  );
  static const s10w500gray = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.descText,
    
  );
  static const s25gray = TextStyle(
    fontSize: 25,
    color: AppColors.textFiledMain
  );
}