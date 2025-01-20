import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/views/home/bottom_screen/bottomscreen.dart';
import 'package:ui_task/views/home/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BottomScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
