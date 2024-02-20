import 'dart:async';

import 'package:flutter/material.dart';
import 'package:focusfriends/pages/first_step_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstStepPage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(width: 16),
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: Image.asset(
                'assets/images/friends.png',
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
