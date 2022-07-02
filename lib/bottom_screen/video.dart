import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);
  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {

   Widget build(BuildContext context) {
      return Text("Video");
   }
}