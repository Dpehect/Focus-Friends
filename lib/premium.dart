import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 145.0, top: 50),
                  child: Image.asset(
                    'assets/images/premiumstar.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Container(
              child: Text(
                '      Premium Plana Geçin\nSınırsız Oynun Keyfini Çıkarın',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 35),
            Container(
              width: 344,
              height: 358,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Image.asset(
                          'assets/images/tick.png',
                          width: 23,
                          height: 23,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Text(
                          'Her gün yeni zeka oyunlarına erişim',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Image.asset(
                          'assets/images/tick.png',
                          width: 23,
                          height: 23,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Text(
                          'Öncelikli müşteri desteği',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Image.asset(
                          'assets/images/tick.png',
                          width: 23,
                          height: 23,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Text(
                          'Kişiselleştirilmiş öneriler ve istatistikler',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Image.asset(
                          'assets/images/tick.png',
                          width: 23,
                          height: 23,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Text(
                          'Haftalık güncellemeler ve yeni oyun\nduyuruları',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Image.asset(
                          'assets/images/tick.png',
                          width: 23,
                          height: 23,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 34),
                        child: Text(
                          'Haftalık güncellemeler ve yeni oyun\nduyuruları',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              child: Text(
                'Aylık 24 TL’den Başlayan Planlar',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
            ),
            SizedBox(height: 9),
            Container(
              width: 322,
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
                  'Size Uygun Planı Seçin',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 41),
          ],
        ),
      ),
    );
  }
}
