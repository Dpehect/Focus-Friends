import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:focusfriends/profile.dart';
import 'package:focusfriends/game_pages/games.dart';
import 'package:focusfriends/trophy.dart';

class StatPage extends StatefulWidget {
  @override
  _StatPageState createState() => _StatPageState();
}

class _StatPageState extends State<StatPage> {
  int _currentIndex = 1;
  void onTabTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GamesPage(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StatPage(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrophyPage(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(),
          ),
        );
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F2),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 61, left: 25),
              child: ClipOval(
                child: Container(
                  margin: EdgeInsets.all(0),
                  child: Image.asset(
                    'assets/images/profilstat.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'Hoşgeldin Merve',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 29, top: 19),
                width: 332,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 175, top: 19),
                      child: Text(
                        'Mantık Bölümü',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 200, top: 19),
                      child: Text(
                        'Doğru Sayısı: 14 ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 208, top: 6),
                      child: Text(
                        'Yanlış Sayısı: 3',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 210, top: 6),
                      child: Text(
                        'Boş Sayısı: 3  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 21),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: LinearPercentIndicator(
                        width: 296.0,
                        lineHeight: 24.0,
                        percent: 0.8,
                        center: Text(
                          "Başarı oranı %77,7",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Color(0xFF29981E),
                          ),
                        ),
                        progressColor: Color.fromARGB(255, 88, 222, 92),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                      ),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 29, top: 19),
                width: 332,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 145, top: 19),
                      child: Text(
                        'Odaklanma Bölümü',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 200, top: 19),
                      child: Text(
                        'Doğru Sayısı: 14 ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 208, top: 6),
                      child: Text(
                        'Yanlış Sayısı: 3',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 210, top: 6),
                      child: Text(
                        'Boş Sayısı: 3  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 21),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: LinearPercentIndicator(
                        width: 296.0,
                        lineHeight: 24.0,
                        percent: 0.5,
                        center: Text(
                          "Başarı oranı %57,7",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Color(0xFFBA5C05),
                          ),
                        ),
                        progressColor: Color(0xFFFFBC7E),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                      ),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 29, top: 19),
                width: 332,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xFFFFC9C9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 145, top: 19),
                      child: Text(
                        'Dinleme Egzersizleri',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 200, top: 19),
                      child: Text(
                        'Doğru Sayısı: 14 ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 208, top: 6),
                      child: Text(
                        'Yanlış Sayısı: 3',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 210, top: 6),
                      child: Text(
                        'Boş Sayısı: 3  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 21),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: LinearPercentIndicator(
                        width: 296.0,
                        lineHeight: 24.0,
                        percent: 0.5,
                        center: Text(
                          "Başarı oranı %57,7",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Switzer',
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                        progressColor: Color(0xFFFF7E7E),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                      ),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 29, top: 19),
                width: 332,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 175, top: 19),
                      child: Text(
                        'Mantık Bölümü',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 200, top: 19),
                      child: Text(
                        'Doğru Sayısı: 14 ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 208, top: 6),
                      child: Text(
                        'Yanlış Sayısı: 3',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 210, top: 6),
                      child: Text(
                        'Boş Sayısı: 3  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Switzer',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 21),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(102),
                      ),
                      child: LinearPercentIndicator(
                        width: 296.0,
                        lineHeight: 24.0,
                        percent: 0.8,
                        center: Text(
                          "Başarı oranı %77,7",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Color(0xFF29981E),
                          ),
                        ),
                        progressColor: Color.fromARGB(255, 88, 222, 92),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/logo1bottom.png',
              width: 30,
              height: 30,
            ),
            label: 'Oyunlar',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/sıralama.png',
              width: 30,
              height: 30,
            ),
            label: 'İstatistik',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/trophy.png',
              width: 30,
              height: 30,
            ),
            label: 'Ödüllerim',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              width: 30,
              height: 30,
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
