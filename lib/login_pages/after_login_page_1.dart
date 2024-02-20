import 'package:flutter/material.dart';
import 'package:focusfriends/login_pages/after_login_page_2.dart';

class AfterLoginPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 120.0, top: 50),
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
            SizedBox(height: 41),
            Row(
              children: [
                SizedBox(width: 69),
                EllipseWidget(ellipseColor: Colors.blue, text: '1'),
                SizedBox(width: 6),
                Container(
                  width: 84,
                  height: 1,
                  color: Color(0xFFFD9D9D9),
                ),
                SizedBox(width: 6),
                EllipseWidget(ellipseColor: Color(0xFFD9D9D9), text: '2'),
                SizedBox(width: 6),
                Container(
                  width: 84,
                  height: 1,
                  color: Color(0xFFFD9D9D9),
                ),
                SizedBox(width: 6),
                EllipseWidget(ellipseColor: Color(0xFFD9D9D9), text: '3'),
              ],
            ),
            SizedBox(height: 50),
            Container(
              child: Text(
                'Harika!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
            ),
            Container(
              child: Text(
                'Google hesabınızla Giriş Yaptınız',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: Text(
                'Kaydınızı tamamlamak için lütfen doğum\n        tarihinizi belirtin. Bu, puanlarınızı\n    yaşınızdaki diğer beyin eğitmenleriyle\n         karşılaştırmanıza olanak tanır.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF9F9F9F),
                    fontFamily: 'Roboto'),
              ),
            ),
            SizedBox(height: 62),
            Container(
              margin: EdgeInsets.only(right: 240),
              child: Text(
                'Doğum Tarihiniz:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF989898),
                    fontFamily: 'Roboto'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TarihSecmeWidget(
                    label: 'Gün', width: 120.0, height: 41.0, maxValue: 31),
                TarihSecmeWidget(
                    label: 'Ay', width: 120.0, height: 41.0, isMonth: true),
                TarihSecmeWidget(
                    label: 'Yıl', width: 120.0, height: 41.0, isInput: true),
              ],
            ),
            SizedBox(height: 52),
            Container(
              width: 322,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AfterLoginPage2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF44A4A),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  'Kaydet',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              child: Text(
                'Kaydolarak Hizmet Koşullarımızı ve Gizlilik Politikamızı\nkabul etmiş olursunuz .',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF989898),
                    fontFamily: 'Roboto'),
              ),
            ),
            SizedBox(height: 107),
          ],
        ),
      ),
    );
  }
}

class TarihSecmeWidget extends StatefulWidget {
  final String label;
  final bool isInput;
  final double width;
  final double height;
  final int? maxValue;
  final bool isMonth;

  TarihSecmeWidget({
    required this.label,
    this.isInput = false,
    this.width = 75.0,
    this.height = 41.0,
    this.maxValue,
    this.isMonth = false,
  });

  @override
  _TarihSecmeWidgetState createState() => _TarihSecmeWidgetState();
}

class _TarihSecmeWidgetState extends State<TarihSecmeWidget> {
  int? selectedValue;
  List<String> ayListesi = [
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFDCDCDC), width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (!widget.isInput)
              DropdownButton<String>(
                items: widget.isMonth
                    ? ayListesi.map((String ay) {
                        return DropdownMenuItem<String>(
                          value: ay,
                          child: Text(ay),
                        );
                      }).toList()
                    : List.generate(widget.maxValue!, (index) => index + 1)
                        .map((value) {
                        return DropdownMenuItem<String>(
                          value: value.toString(),
                          child: Text(value.toString()),
                        );
                      }).toList(),
                onChanged: (String? selected) {
                  setState(() {
                    if (widget.isMonth) {
                      selectedValue = ayListesi.indexOf(selected!);
                    } else {
                      selectedValue = int.parse(selected!);
                    }
                  });
                },
                hint: Text(
                  widget.label,
                  style: TextStyle(
                    color: Color(0xFF989898),
                  ),
                ),
                underline: SizedBox.shrink(),
                icon: widget.label == 'Ay' ? Icon(Icons.arrow_drop_down) : null,
              ),
            if (widget.isInput)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    onChanged: (value) {
                      // Girilen değeri kullanın veya başka bir şey yapın
                      print("Girilen Değer: $value");
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: widget.label,
                      border: InputBorder.none,
                      suffixIcon: widget.label == 'Yıl'
                          ? null
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_drop_down),
                            ),
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

class EllipseWidget extends StatelessWidget {
  final Color ellipseColor;
  final String text;
  EllipseWidget({required this.ellipseColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ellipseColor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
