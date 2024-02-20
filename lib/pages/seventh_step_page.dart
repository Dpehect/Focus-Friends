import 'package:flutter/material.dart';
import 'package:focusfriends/login_pages/before_login_page_1.dart';

class SeventhStepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seventh Step Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 160.0, top: 92),
            child: Image.asset('assets/images/logo.png',
                width: 64.0, height: 64.0),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/ilk.png', width: 32.0, height: 32.0),
                Image.asset('assets/images/iki.png', width: 32.0, height: 32.0),
                Image.asset('assets/images/drei.png',
                    width: 32.0, height: 32.0),
                Image.asset('assets/images/fourth.png',
                    width: 32.0, height: 32.0),
                Image.asset('assets/images/fifth.png',
                    width: 32.0, height: 32.0),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 53.0, left: 40),
            child: Text(
              'Hemen Oynayamaya başlayıp testler ve bir çok pratiği yapabiliriz, eğer hesabın varsa kişiselleştirilmiş hesabına erişebilirsin',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Container(
            width: 353,
            height: 53,
            margin: EdgeInsets.only(left: 30.0, top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage1(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Oynamaya Başla',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Container(
            width: 353,
            height: 53,
            margin: EdgeInsets.only(left: 30.0, top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromRGBO(255, 218, 221, 1),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage1(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Kayıt Ol - Giriş Yap',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SeventhStepPage(),
  ));
}
