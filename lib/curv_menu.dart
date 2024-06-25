import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_2024/camera_page.dart';
import 'package:flutter_2024/contact_page.dart';
import 'package:flutter_2024/home_page.dart';
import 'package:flutter_2024/profile_page.dart';

class CurvMenu extends StatelessWidget {
  const CurvMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CurvPage(),
    );
  }
}

class CurvPage extends StatefulWidget {
  @override
  _CurvPage createState() => _CurvPage();
}

class _CurvPage extends State<CurvPage> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curved Navigation Bar'),
        backgroundColor: const Color.fromARGB(255, 255, 240, 219),
        foregroundColor: Colors.black,
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          HomePage(),
          CameraPage(),
          ProfilePage(),
          ContactPage()
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        buttonBackgroundColor: Colors.white,
        color: const Color.fromARGB(255, 255, 240, 219),
        height: 65,
        items: const <Widget>[
          Icon(Icons.home, size: 35, color: Colors.red),
          Icon(Icons.camera, size: 35, color: Colors.deepPurpleAccent),
          Icon(Icons.person, size: 35, color: Colors.green),
          Icon(Icons.phone, size: 35, color: Colors.blue),
        ],
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(microseconds: 300),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
