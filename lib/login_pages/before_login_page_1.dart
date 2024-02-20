import 'package:flutter/material.dart';
import 'package:focusfriends/login_pages/after_login_page_1.dart';

class LoginPage1 extends StatefulWidget {
  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  bool isButton1Selected = true;
  bool isButton2Selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 120.0, top: 100),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/images/friends.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isButton1Selected = true;
                          isButton2Selected = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isButton1Selected ? Colors.red : Colors.white,
                        onPrimary:
                            isButton1Selected ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text('Giriş Yap'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isButton1Selected = false;
                          isButton2Selected = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isButton2Selected ? Colors.red : Colors.white,
                        onPrimary:
                            isButton2Selected ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text('Üyelik Oluştur'),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isButton1Selected,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 14),
                        Icon(Icons.mail_outline, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'E-Posta veya Telefon ',
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 45,
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 14),
                        Image.asset(
                          'assets/images/password.png',
                          width: 24,
                          height: 24,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Şifreniz',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.only(right: 180),
                    child: Text(
                      'Şifremi unuttum',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 315,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF44A4A),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 38),
                      Container(
                        margin: EdgeInsets.only(top: 37),
                        width: 132,
                        height: 1,
                        color: Color(0xFFFD9D9D9),
                      ),
                      SizedBox(width: 13),
                      Container(
                        margin: EdgeInsets.only(top: 37),
                        child: Text(
                          'veya',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      SizedBox(width: 13),
                      Container(
                        margin: EdgeInsets.only(top: 37),
                        width: 132,
                        height: 1,
                        color: Color(0xFFFD9D9D9),
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AfterLoginPage1(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 50.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFFDCDCDC),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 69),
                          Image.asset(
                            'assets/images/google.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              'Google ile giriş yap',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AfterLoginPage1(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 50.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFFDCDCDC),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 69),
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              'Facebook ile giriş yap',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isButton2Selected,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'İsim',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 45,
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Soyisim',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 45,
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'E-posta veya Telefon',
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 45,
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Şifre oluştur',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 45,
                    margin: EdgeInsets.symmetric(horizontal: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFFDCDCDC),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Şifreyi tekrar gir',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF989898),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 315,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF44A4A),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 38),
                      Container(
                        margin: EdgeInsets.only(top: 37),
                        width: 132,
                        height: 1,
                        color: Color(0xFFFD9D9D9),
                      ),
                      SizedBox(width: 13),
                      Container(
                        margin: EdgeInsets.only(top: 37),
                        child: Text(
                          'veya',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      SizedBox(width: 13),
                      Container(
                        margin: EdgeInsets.only(top: 37),
                        width: 132,
                        height: 1,
                        color: Color(0xFFFD9D9D9),
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AfterLoginPage1(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 50.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFFDCDCDC),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 69),
                          Image.asset(
                            'assets/images/google.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              'Google ile giriş yap',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AfterLoginPage1(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 50.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFFDCDCDC),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 69),
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              'Facebook ile giriş yap',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
