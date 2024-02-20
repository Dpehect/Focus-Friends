import 'package:flutter/material.dart';
import 'package:focusfriends/premium.dart';
import 'package:focusfriends/stat.dart';
import 'package:focusfriends/premium.dart';
import 'package:focusfriends/profile.dart';
import 'package:focusfriends/game_pages/all_games.dart';
import 'package:focusfriends/game_pages/category_games.dart';
import 'package:focusfriends/trophy.dart';

class GamesPage extends StatefulWidget {
  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  int _currentIndex = 0;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 50),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/gamesfriends.png',
                    width: 183,
                    height: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllGamesPage(),
                          ),
                        );
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 19, left: 30),
                          width: 165,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F9FF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 22),
                                child:
                                    Image.asset('assets/images/all_games.png'),
                              ),
                              SizedBox(width: 8),
                              Container(
                                child: Text(
                                  'Tüm Oyunlar',
                                  style: TextStyle(
                                    color: Color(0xFF0783C2),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryGamesPage(),
                            ),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 19, left: 30),
                            width: 165,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F9FF),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 22),
                                  child:
                                      Image.asset('assets/images/category.png'),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  child: Text(
                                    'Kategoriler',
                                    style: TextStyle(
                                      color: Color(0xFF0783C2),
                                    ),
                                  ),
                                ),
                              ],
                            )))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 38),
                    Container(
                      margin: EdgeInsets.only(top: 37),
                      child: Text(
                        'Ücretsiz Oyunlar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    SizedBox(width: 13),
                    Container(
                      margin: EdgeInsets.only(top: 37),
                      width: 185,
                      height: 1,
                      color: Color(0xFFFD9D9D9),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19, left: 22),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/nesneleribirlestir.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 19),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/kızgıntren.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9, left: 28),
                  child: Text(
                    'Nesneleri Birleştir',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9, left: 60),
                  child: Text(
                    'Kızgın Tren',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19, left: 22),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/birlestirresimleri.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 19),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/hızlıhesap.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9, left: 28),
                  child: Text(
                    'Poşetleri At',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9, left: 100),
                  child: Text(
                    'Hızlı Hesap',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
            //OdaklanmaKısmı
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 38),
                    Container(
                      margin: EdgeInsets.only(top: 37),
                      child: Text(
                        'Odaklanma',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    SizedBox(width: 13),
                    Container(
                      margin: EdgeInsets.only(top: 37),
                      width: 232,
                      height: 1,
                      color: Color(0xFFFD9D9D9),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19, left: 22),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/bellekyarısı.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 19),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/bellekyarısı.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9, left: 28),
                  child: Text(
                    'Bellek Yarışı',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9, left: 100),
                  child: Text(
                    'Sürekli Dikkat',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19, left: 22),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/bellekyarısı.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 19),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/bellekyarısı.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9, left: 28),
                  child: Text(
                    'Anı Kartları',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9, left: 100),
                  child: Text(
                    'Hafıza Çiçeği',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PremiumPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 19),
                width: 358,
                height: 94,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33000000),
                      offset: Offset(0, 0),
                      blurRadius: 18,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/premiumgec.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //Dinleme Egzersizleri
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 28),
                    Container(
                      margin: EdgeInsets.only(top: 37),
                      child: Text(
                        'Dinleme Egzersizleri',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    SizedBox(width: 13),
                    Container(
                      margin: EdgeInsets.only(top: 37),
                      width: 151,
                      height: 1,
                      color: Color(0xFFFD9D9D9),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19, left: 22),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/nesneleribirlestir.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 19),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/kızgıntren.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9, left: 28),
                  child: Text(
                    'Nesneleri Birleştir',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9, left: 60),
                  child: Text(
                    'Kızgın Tren',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19, left: 22),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/birlestirresimleri.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 19),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  width: 157,
                  height: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                        blurRadius: 18,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/hızlıhesap.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9, left: 28),
                  child: Text(
                    'Poşetleri At',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9, left: 100),
                  child: Text(
                    'Hızlı Hesap',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
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
