import 'package:flutter/material.dart';

class CategoryGamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F2),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 71, left: 80),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(width: 15),
              Container(
                margin: EdgeInsets.only(top: 71),
                child: Image.asset(
                  'assets/images/gamesfriends.png',
                  width: 183,
                  height: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              'Oyun Kategorileri',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Switzer',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 19, left: 30),
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
                margin: EdgeInsets.only(top: 9, left: 35),
                child: Text(
                  'Nesneleri Birleştir',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9, left: 65),
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
                margin: EdgeInsets.only(top: 19, left: 30),
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
                margin: EdgeInsets.only(top: 9, left: 35),
                child: Text(
                  'Poşetleri At',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9, left: 105),
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 19, left: 30),
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
                margin: EdgeInsets.only(top: 9, left: 35),
                child: Text(
                  'Bellek Yarışı',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9, left: 105),
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
                margin: EdgeInsets.only(top: 19, left: 30),
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
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 9, left: 35),
                child: Text(
                  'Poşetleri At',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
        ],
      )),
    );
  }
}
