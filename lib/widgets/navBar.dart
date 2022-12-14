// ignore: file_names
// ignore_for_file: file_names

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:xconcordia/views/linksPage.dart';

import '../views/home_page.dart';
import '../views/discordPage.dart';

// ignore: camel_case_types
class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

// ignore: camel_case_types
class _navBarState extends State<navBar> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const DiscordPage(),
    const notesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // dark mode button in app bar:
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.dark_mode),
        //     onPressed: () {
        //       toggleMode();
        //     },
        //   ),
        // ],

        title: const Text('xConcordia'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(223, 57, 25, 163),
                offset: Offset(0, 0),
                blurRadius: 20,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 46, 154, 243),
                Color.fromARGB(255, 175, 67, 194)
              ],
            ),
          ),
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        animationDuration: const Duration(milliseconds: 250),
        curve: Curves.ease,
        showElevation: true,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: const Color.fromARGB(255, 20, 143, 199),
            activeColor: const Color.fromARGB(255, 5, 176, 255),
            textAlign: TextAlign.center,
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          BottomNavyBarItem(
            inactiveColor: const Color.fromARGB(255, 20, 143, 199),
            activeColor: const Color.fromARGB(255, 5, 176, 255),
            textAlign: TextAlign.center,
            icon: const Icon(Icons.discord),
            title: const Text('Social'),
          ),
          // BottomNavyBarItem(
          //   inactiveColor: const Color.fromARGB(255, 20, 143, 199),
          //   activeColor: const Color.fromARGB(255, 5, 176, 255),
          //   textAlign: TextAlign.center,
          //   icon: const Icon(Icons.school),
          //   title: const Text('Examotron'),
          // ),
          BottomNavyBarItem(
            inactiveColor: const Color.fromARGB(255, 20, 143, 199),
            activeColor: const Color.fromARGB(255, 5, 176, 255),
            textAlign: TextAlign.center,
            icon: const Icon(Icons.document_scanner),
            title: const Text('Links'),
          ),
        ],
      ),
    );
  }
}
