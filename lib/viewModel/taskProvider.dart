import 'package:flutter/material.dart';


class TaskProvider extends ChangeNotifier {
  final TextEditingController taskController = TextEditingController();
  final List<String> _tasks = [];

  List<String> get tasks => _tasks;

  void addTask() {
    String task = taskController.text.trim();
    if (task.isNotEmpty) {
      _tasks.add(task);
      taskController.clear();
      notifyListeners();
    }
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }
}