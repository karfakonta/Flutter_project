import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Courses',
      theme: ThemeData(
        primaryColor: Colors.white70,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page in Flutter"),
        ),
        body: Column(
          children: <Widget> [
            Image.asset("images/hotel1.jpg", width: 300, height: 300,),
            Image.asset("images/hotel2.jpg", width: 300, height: 300,)
          ],
        )
    );
  }
}


