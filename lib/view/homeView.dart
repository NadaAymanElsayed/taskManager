import 'package:flutter/material.dart';
import 'package:news/constants/appColors.dart';
import 'package:provider/provider.dart';
import '../viewModel/taskProvider.dart';
import '../widgets/addTaskButton.dart';
import '../widgets/header.dart';
import '../widgets/taskInputField.dart';
import '../widgets/taskListView.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            const SizedBox(height: 50),
            Header(),
            const SizedBox(height: 30),
            TaskInputField(),
            const SizedBox(height: 20),
            AddTaskButton(),
            const SizedBox(height: 20),
            Expanded(child: TaskListView()),
          ],
        ),
      ),
    );
  }
}