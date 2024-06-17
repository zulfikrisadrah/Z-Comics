import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/z_icon1.png',
              width: 180,
              height: 180,
            ),
            SizedBox(height: 20),
            Container(
              width: 120, 
              height: 50, 
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavouriteScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 180, 73, 219),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavouriteScreen extends StatelessWidget {
  final List<String> actionImages = [
    'assets/images/action 1.jpg',
    'assets/images/action 2.jpg',
    'assets/images/action 3.jpg',
    'assets/images/action4.jpg',
    'assets/images/action 5.png',
    'assets/images/action 7.jpg',
    'assets/images/action 8.jpg',
    'assets/images/action 9.jpg',
  ];

  final List<String> gameImages = [
    'assets/images/game 1.jpg',
    'assets/images/game 2.jpg',
    'assets/images/game 3.jpg',
    'assets/images/game 4.jpg',
    'assets/images/game 5.jpg',
    'assets/images/game 6.jpg',
    'assets/images/game 7.jpg',
    'assets/images/game 8.jpg',
    'assets/images/game 9.jpg',
  ];

  final List<String> murimImages = [
    'assets/images/murim 1.jpg',
    'assets/images/murim 2.jpg',
    'assets/images/murim 3.jpg',
    'assets/images/murim.jpg',
    'assets/images/murim 6.jpg',
    'assets/images/murim 7.jpg',
    'assets/images/murim 8.jpg',
    'assets/images/murim 9.jpg',
  ];

  final List<String> schoolImages = [
    'assets/images/school 1.jpg',
    'assets/images/school 2.png',
    'assets/images/school 3.jpg',
    'assets/images/school 4.jpg',
    'assets/images/school 6.jpg',
    'assets/images/school 7.jpg',
    'assets/images/school 8.jpg',
    'assets/images/school 9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 245, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 208, 104, 246),
        title: Text('Z-Comics', style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView(
          children: [
            categorySection('Action', actionImages),
            categorySection('Game', gameImages),
            categorySection('Murim', murimImages),
            categorySection('School', schoolImages),
          ],
        ),
    );
  }
  
  Widget categorySection(String title, List<String> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 15, top: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15.0, left: 15.0, right: 15.0),
          height: 230,
          decoration: BoxDecoration(
            color: Color.fromARGB(120, 208, 104, 246),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            scrollDirection: Axis.horizontal,
            children: images.map((image) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              child: Image.asset(image, width: 150, height: 200),
            )).toList(),
          ),
        ),
      ],
    );
  }
}
