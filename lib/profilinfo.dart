import 'package:flutter/material.dart';

class ProfilInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Color.fromARGB(255, 232, 157, 227),
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 40),
            ClipOval(
              child: Container(
                child: Image.asset(
                  'assets/images/profilstat.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Merve Güvenç',
                    style: TextStyle(
                      fontFamily: 'Switzer',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF4B4B4B),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Text(
                    'Hoşgeldiniz, bilgilerinize ve\nraporlarınıza buradan erişebilirsiniz',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xFF4B4B4B),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 60),
            Column(
              children: [
                ClipOval(
                  child: Container(
                    child: Image.asset(
                      'assets/images/edit.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Düzenle',
                    style: TextStyle(
                      fontFamily: 'Switzer',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 38, top: 37),
              child: Text(
                'Profil Bilgileri',
                style: TextStyle(
                  fontFamily: 'Switzer',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 9),
              width: 315,
              height: 45,
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
                        hintText: 'İsim Soyisim',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF989898),
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 9),
              width: 315,
              height: 45,
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
                        hintText: 'E-posta',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF989898),
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 9),
              width: 315,
              height: 45,
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
                        hintText: 'Telefon',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF989898),
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 16),
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
                  'Profili Güncelle',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
            ),
            //Şifre
            Container(
              margin: EdgeInsets.only(left: 38, top: 37),
              child: Text(
                'Şifremi Değiştir',
                style: TextStyle(
                  fontFamily: 'Switzer',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 9),
              width: 315,
              height: 45,
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
                        hintText: 'Mevcut Şifren',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF989898),
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 9),
              width: 315,
              height: 45,
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
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 9),
              width: 315,
              height: 45,
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
                        hintText: 'Şifreyi tekrar gir',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF989898),
                          fontFamily: 'Switzer',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 38, top: 16),
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
                  'Profili Güncelle',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
