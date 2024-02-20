import 'package:flutter/material.dart';
import 'package:focusfriends/pages/second_step_page.dart';
import 'package:focusfriends/pages/first_step_page.dart';
import 'package:focusfriends/pages/fourth_step_page.dart';
import 'package:focusfriends/pages/fifth_step_page.dart';
import 'package:focusfriends/pages/sixth_step_page.dart';
import 'package:focusfriends/pages/seventh_step_page.dart';

class ThirdStepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F2),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! < 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SecondStepPage(),
              ),
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 40,
                margin: EdgeInsets.only(top: 71, left: 311),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SeventhStepPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFEEEF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Center(
                    child: Expanded(
                      child: Text(
                        'Atla',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF4955),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                child: Image.asset(
                  'assets/images/stepthree.png',
                  width: 800,
                  height: 200,
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Text(
                  'Zihinsel Maceranıza Davet:',
                  style: TextStyle(
                    color: Color(0xFF686868),
                    fontSize: 24,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: Text(
                  'Bilgiye adım adım yaklaş! Uygulamamız,\n'
                  ' zeka oyunları aracılığıyla bilgi ve strateji\n'
                  '  becerilerini geliştirmene yardımcı olur',
                  style: TextStyle(
                    color: Color(0xFF686868),
                    fontSize: 14,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 140),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FirstStepPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/whitedot.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SecondStepPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/whitedot.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  Container(
                    child: Image.asset(
                      'assets/images/reddot.png',
                      width: 12,
                      height: 12,
                    ),
                  ),
                  SizedBox(width: 9),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FourthStepPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/whitedot.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FifthStepPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/whitedot.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SixthStepPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/whitedot.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9),
              Container(
                child: Text(
                  'Yana Kaydır',
                  style: TextStyle(
                    color: Color(0xFF8A8A8A),
                    fontSize: 16,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
