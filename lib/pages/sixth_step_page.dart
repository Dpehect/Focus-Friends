import 'package:flutter/material.dart';
import 'package:focusfriends/pages/second_step_page.dart';
import 'package:focusfriends/pages/first_step_page.dart';
import 'package:focusfriends/pages/third_step_page.dart';
import 'package:focusfriends/pages/fourth_step_page.dart';
import 'package:focusfriends/pages/fifth_step_page.dart';
import 'package:focusfriends/pages/seventh_step_page.dart';

class SixthStepPage extends StatelessWidget {
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
              SizedBox(height: 50),
              Container(
                child: Image.asset(
                  'assets/images/stepsix.png',
                  width: 800,
                  height: 200,
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Text(
                  'Strateji ve Bilgi İle Tanışın:',
                  style: TextStyle(
                    color: Color(0xFF686868),
                    fontSize: 24,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Text(
                  '  Düşünme yeteneklerini keşfet!\n'
                  'oyunuyla seni meşgul ederek düşünme\n'
                  '      becerilerini güçlendirmeni sağlar.',
                  style: TextStyle(
                    color: Color(0xFF686868),
                    fontSize: 14,
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 40),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ThirdStepPage(),
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
                  Container(
                    child: Image.asset(
                      'assets/images/reddot.png',
                      width: 12,
                      height: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SeventhStepPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    'Hadi Başlayalım!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
