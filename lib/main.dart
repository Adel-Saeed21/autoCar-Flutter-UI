import 'package:autocar/constant.dart';
import 'package:autocar/screen/HomeScreen.dart';
import 'package:autocar/screen/SearchScreen.dart';
import 'package:autocar/screen/profilescreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> Pages = [HomeScreen(), SearchScreen(), profile()];
  int current = 0;

  // This widget is the root of your application.HomeScreen()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              currentIndex: current,
              onTap: (value) {
                setState(() {
                  current = value;
                });
              },
              backgroundColor: mainColor,
              selectedLabelStyle:
                  TextStyle(color: Colors.white, decorationColor: Colors.white),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 25,
                      color: const Color.fromARGB(255, 219, 211, 211),
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: const Color.fromARGB(255, 219, 211, 211),
                  ),
                  label: "search",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: const Color.fromARGB(255, 219, 211, 211),
                      size: 25,
                    ),
                    label: "Profile")
              ],
            ),
          ),
          body: Pages[current],
        ));
  }
}
