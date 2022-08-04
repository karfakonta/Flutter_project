// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginpage/config/palette.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  int videoIndex = 0;
  List<String> langues = [
    "Français",
    "Anglais",
    "Portugais",
    "Arabe",
    "Wolof",
    "Socé",
    "Peulh",
    "Djola",
    "Espagnol",
    "Russe",
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
        _title("Latests events :"),
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
    return SizedBox(
      height: 70,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: lang.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {
              setState(
                () => {selectedIndex = index},
              ),
            },
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Column(
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: selectedIndex == index ?  Colors.red : Colors.white,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(width: 1, color: Colors.grey),
                    ),
                    onPressed: null,
                    child: Text(
                      lang[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

    Widget _videos(List <String> nameVideo, List <String> description) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: nameVideo.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {
              setState(
                () => {videoIndex = index},
              ),
            },
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Column(
                children: <Widget>[
                  Card(
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {
                        print("card taped"),
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 300,
                        child: Column(
                          children: <Widget>[
                            Image.asset(nameVideo[index]),
                            Container(
                              child: Text(
                                description[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
