import 'package:flutter/material.dart';
import 'package:news/constants/appColors.dart';

import '../constants/appAssets.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.logo,
                height: 150,
                width: 150,),
              ],
            ),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Manage \nyour \nTask with',
                  style: TextStyle(
                    fontSize: 60,
                    color: AppColors.white
                  ),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Day Task',
                    style: TextStyle(
                        fontSize: 60,
                        color: AppColors.yellow
                    ),),
                ],
              ),
            ),
            const SizedBox(height: 100,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text(
                  'Lets Start',
                  style: TextStyle(
                    color: AppColors.balck,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
