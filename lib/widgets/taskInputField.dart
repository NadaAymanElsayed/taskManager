import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/appColors.dart';
import '../viewModel/taskProvider.dart';

class TaskInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.read<TaskProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: taskProvider.taskController,
        decoration: InputDecoration(
          labelText: 'Enter task details',
          labelStyle: TextStyle(color: AppColors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.white, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.yellow, width: 2),
          ),
        ),
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}
