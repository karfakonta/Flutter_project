// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/home/home_screen.dart';
//import 'package:flutter_launcher_icons/ios.dart';
//import 'package:flutter_launcher_icons/android.dart' ;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

