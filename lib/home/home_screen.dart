// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginpage/bottom_screen/calendrier.dart';
import 'package:loginpage/bottom_screen/home.dart';
import 'package:loginpage/bottom_screen/menu.dart';
import 'package:loginpage/bottom_screen/video.dart';
import 'package:loginpage/config/palette.dart';
import 'package:loginpage/home/showPopupMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  final _widgetOptions = [
    // do not change the order of this section.
    Home(),
    Video(),
    Calendrier(),
    Menu(),
    ShowPopupMenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Palette.appBarColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(
                () {
                  //NavigateToAccount();
                },
              );
            },
            icon: const Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: "Home",
            backgroundColor: Palette.bottomBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection,
              color: Colors.red,
            ),
            label: "Video",
            backgroundColor: Palette.bottomBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.red,
            ),
            label: "Calendrier",
            backgroundColor: Palette.bottomBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.red,
            ),
            label: "Menu",
            backgroundColor: Palette.bottomBarColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
