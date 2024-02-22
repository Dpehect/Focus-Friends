import 'package:flutter/material.dart';
import 'package:focusfriends/login_pages/after_login_page_3.dart';

class AfterLoginPage2 extends StatefulWidget {
  @override
  _AfterLoginPage2State createState() => _AfterLoginPage2State();
}

class _AfterLoginPage2State extends State<AfterLoginPage2> {
  String selectedGender = 'male';
  String educationDropdownValue = 'Eğitim Durumu';
  String otherDropdownValue = 'İşiniz';
  String infoDropdownValue = 'Bizi Nereden Duydunuz';
  List<String> educationDropdownValues = [
    'Eğitim Durumu',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<String> otherDropdownValues = [
    'İşiniz',
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];
  List<String> infoDropdownValues = [
    'Bizi Nereden Duydunuz',
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

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
                EllipseWidget(ellipseColor: Colors.blue, text: '2'),
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
            SizedBox(height: 56),
            Container(
              child: Text(
                'Çocuğunuz Hakkınızda\n        biraz daha bilgi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 60),
                Text(
                  'Cinsiyet:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = 'male';
                    });
                  },
                  child: EllipseWidget(
                    ellipseColor: selectedGender == 'male'
                        ? Colors.red
                        : Color(0xFFFFE1E1),
                    text: 'M',
                    showText: false,
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  'Erkek',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(width: 12),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = 'female';
                    });
                  },
                  child: EllipseWidget(
                    ellipseColor: selectedGender == 'female'
                        ? Colors.red
                        : Color(0xFFFFE1E1),
                    text: 'F',
                    showText: false,
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  'Kız',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 157,
                  height: 45,
                  margin: EdgeInsets.only(left: 34, top: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color(0xFFDCDCDC),
                      width: 1.0,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        value: educationDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: educationDropdownValues.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            educationDropdownValue = newValue!;
                          });
                        },
                        style: TextStyle(
                          color: Color(0xFF989898),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 157,
                  height: 45,
                  margin: EdgeInsets.only(left: 8, top: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color(0xFFDCDCDC),
                      width: 1.0,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        value: otherDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: otherDropdownValues.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            otherDropdownValue = newValue!;
                          });
                        },
                        style: TextStyle(
                          color: Color(0xFF989898),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 322,
              height: 45,
              margin: EdgeInsets.only(top: 40, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Color(0xFFDCDCDC),
                  width: 1.0,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton(
                    value: infoDropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: infoDropdownValues.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        infoDropdownValue = newValue!;
                      });
                    },
                    style: TextStyle(
                      color: Color(0xFF989898),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            Container(
              width: 322,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AfterLoginPage3(),
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
            SizedBox(height: 222),
          ],
        ),
      ),
    );
  }
}

class EllipseWidget extends StatelessWidget {
  final Color ellipseColor;
  final String text;
  final bool showText;

  EllipseWidget({
    required this.ellipseColor,
    required this.text,
    this.showText = true,
  });

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
        child: showText
            ? Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}
