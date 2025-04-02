import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/appColors.dart';
import '../viewModel/taskProvider.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();

    return ListView.builder(
      itemCount: taskProvider.tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            taskProvider.tasks[index],
            style: TextStyle(color: AppColors.white),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: AppColors.white),
            onPressed: () => taskProvider.removeTask(index),
          ),
        );
      },
    );
  }
}