import 'package:flutter/material.dart';
import 'package:news/view/homeView.dart';
import 'package:news/viewModel/taskProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes:{
        '/home': (context) => Home(),
      },
    );
  }
}
