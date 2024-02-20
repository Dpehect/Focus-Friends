import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İletişim',
          style: TextStyle(
            fontFamily: 'Switzer',
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/images/contact.png',
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  '     Merhaba bize example@gmail.com\nhesabından ulaşabilir soru ve önerilerinizi\n                         iletebilirsiniz',
                  style: TextStyle(
                      fontFamily: 'Switzer',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 100, top: 50),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/friends.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
