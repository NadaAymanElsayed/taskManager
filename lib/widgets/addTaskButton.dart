import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/appColors.dart';
import '../viewModel/taskProvider.dart';

class AddTaskButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.read<TaskProvider>();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: taskProvider.addTask,
          child: const Text(
            'Add Task',
            style: TextStyle(color: AppColors.balck, fontSize: 35),
          ),
        ),
      ),
    );
  }
}