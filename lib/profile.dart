import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:focusfriends/stat.dart';
import 'package:focusfriends/game_pages/games.dart';
import 'package:focusfriends/profilinfo.dart';
import 'package:focusfriends/settings.dart';
import 'package:focusfriends/about.dart';
import 'package:focusfriends/contact.dart';
import 'package:focusfriends/trophy.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 3;
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
              margin: EdgeInsets.only(top: 61),
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
              child: Text(
                'Hoşgeldin Merve',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 33, left: 19),
              width: 358,
              height: 94,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Image.asset(
                'assets/images/premiumgec.png',
                fit: BoxFit.cover,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilInfoPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 61, top: 61),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/paket.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: Text(
                        'Profil Bilgileri',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 61, top: 61),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/paket.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: Text(
                        'Ayarlar',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 61, top: 61),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/paket.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Text(
                      'İstatistikler',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 61, top: 61),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/paket.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: Text(
                        'Hakkımızda',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 61, top: 61),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/paket.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: Text(
                        'İletişime Geçin',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 52),
            Container(
              width: 315,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Image.asset(
                          'assets/images/paket.png',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Text(
                          'Çıkış',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 52),
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
