import 'package:flutter/material.dart';
import 'package:ui_assig/pages/homePage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui Assig',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
