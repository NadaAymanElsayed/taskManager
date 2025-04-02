import 'package:flutter/material.dart';
import '../constants/appAssets.dart';
import '../constants/appColors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.logo,
          height: 80,
          width: 80,
        ),
        const SizedBox(width: 20),
        const Text(
          'Tasks',
          style: TextStyle(color: AppColors.yellow, fontSize: 50),
        ),
      ],
    );
  }
}