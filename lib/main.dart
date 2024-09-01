import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_managment_app/screens/addTask.dart';
import 'package:tasks_managment_app/screens/home.dart';
import 'package:tasks_managment_app/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen()
    );
  }
}

