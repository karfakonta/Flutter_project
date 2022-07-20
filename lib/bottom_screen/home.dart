import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Image.asset("/Users/karfakonta/AndroidStudioProjects/Flutter/loginpage/images/image1.png"),

        );
   }
}