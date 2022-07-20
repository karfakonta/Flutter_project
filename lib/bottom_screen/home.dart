// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../config/palette.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> langues = [
    "Français",
    "Anglais",
    "Portugais",
    "Arabe",
    "Wolof",
    "Socé",
    "Peulh",
    "Djola",
  ];
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        _containerVideoYoutube("assets/image1.png",
            "The New Humanitarian | High-profile terror trial speaks to an emerging threat in Senegal"),
        _title("Follow on :"),
        _langues(langues),
      ],
    );
  }

  Widget _containerVideoYoutube(String image, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: <Widget>[
          Image.asset(image),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _langues(List<String> lang) {
    return Expanded(
      //height: 100,
      child: Padding(
        padding: EdgeInsets.only(top: 1.0),
        child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: lang.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Column(
                  children: <Widget>[
                    
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      lang[index],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
