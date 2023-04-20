import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:assignment/ui/screens/coming_soon_screen..dart';
import 'package:assignment/ui/screens/courses_screens.dart';
import 'package:assignment/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CipherSchools',
      home: AnimatedSplashScreen(splash: Image.asset('assets/icons/appIcon.png'),duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      nextScreen: const MainPage()),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const CoursesPage(),
    const ComingSoonPage(),
    const ComingSoonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: secondaryColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.menu_book_sharp),
              title: const Text("Courses"),
              selectedColor: secondaryColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.compass_calibration),
              title: const Text("Trending"),
              selectedColor: secondaryColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text(" My Profile"),
              selectedColor: secondaryColor,
            ),
          ],
        ),
    );
  }
}