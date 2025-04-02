import 'package:flutter/material.dart';

import '../constants/appColors.dart';

class CustomInputDecoration {
  static InputDecoration getDecoration({String labelText = ''}) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: AppColors.white,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.white, // لون الحواف عند عدم التركيز
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.white, // لون الحواف عند التركيز
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.white, // لون الحواف الافتراضي
          width: 2,
        ),
      ),
    );
  }
}