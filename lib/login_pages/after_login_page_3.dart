import 'package:flutter/material.dart';
import 'package:focusfriends/game_pages/games.dart';

class AfterLoginPage3 extends StatefulWidget {
  @override
  _AfterLoginPage3State createState() => _AfterLoginPage3State();
}

class _AfterLoginPage3State extends State<AfterLoginPage3> {
  int selectedTimeIndex = -1;
  int selectedTimeIndex2 = -1;
  int selectedTimeIndex3 = -1;
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
                EllipseWidget(ellipseColor: Colors.blue, text: '3'),
              ],
            ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: Text(
                'Bize Biraz Çocuğunuzdan\nBahsedert Misiniz?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 48, right: 30),
              child: Text(
                'Günün hangi saatinde en verimli oluyor?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(height: 16),
            EllipsRow(
              index: 0,
              labelText: 'Kesinlikle sabah',
              selectedEllipseIndex: selectedTimeIndex,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 1,
              labelText: 'Akşamdan ziyade sabah',
              selectedEllipseIndex: selectedTimeIndex,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 2,
              labelText: 'Sabahtan çok akşam',
              selectedEllipseIndex: selectedTimeIndex,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 3,
              labelText: 'Kesinlikle akşam',
              selectedEllipseIndex: selectedTimeIndex,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex = index;
                });
              },
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.only(top: 48, right: 100),
              child: Text(
                'Ne sıklıkla egzersiz yapabilir?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(height: 16),
            EllipsRow(
              index: 4,
              labelText: 'Nadiren veya asla',
              selectedEllipseIndex: selectedTimeIndex2,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex2 = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 5,
              labelText: 'Yaklaşık haftada bir',
              selectedEllipseIndex: selectedTimeIndex2,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex2 = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 6,
              labelText: 'Haftada 2-3 kez',
              selectedEllipseIndex: selectedTimeIndex2,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex2 = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 7,
              labelText: 'Haftada 4 veya daha fazla kez',
              selectedEllipseIndex: selectedTimeIndex2,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex2 = index;
                });
              },
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.only(top: 48, right: 60),
              child: Text(
                'Genellikle her gece ne kadar uyur?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(height: 16),
            EllipsRow(
              index: 8,
              labelText: '4 saat veya daha az',
              selectedEllipseIndex: selectedTimeIndex3,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex3 = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 9,
              labelText: '5-6 saat',
              selectedEllipseIndex: selectedTimeIndex3,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex3 = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 10,
              labelText: '7-8 saat',
              selectedEllipseIndex: selectedTimeIndex3,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex3 = index;
                });
              },
            ),
            SizedBox(height: 12),
            EllipsRow(
              index: 11,
              labelText: '9 saat veya daha fazla',
              selectedEllipseIndex: selectedTimeIndex3,
              onSelected: (index) {
                setState(() {
                  selectedTimeIndex3 = index;
                });
              },
            ),
            SizedBox(height: 62),
            Container(
              width: 322,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamesPage(),
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
                  'Eğitim Programımı Oluştur',
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

class EllipsRow extends StatefulWidget {
  final int index;
  final String labelText;
  final int selectedEllipseIndex;
  final ValueChanged<int> onSelected;

  EllipsRow({
    required this.index,
    required this.labelText,
    required this.selectedEllipseIndex,
    required this.onSelected,
  });

  @override
  _EllipsRowState createState() => _EllipsRowState();
}

class _EllipsRowState extends State<EllipsRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 37,
      decoration: BoxDecoration(
        color: Color(0xFFFEF2F2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.selectedEllipseIndex == widget.index) {
                  widget.onSelected(-1);
                } else {
                  widget.onSelected(widget.index);
                }
              });
            },
            child: Container(
              width: 25.0,
              margin: EdgeInsets.only(left: 13),
              height: 25.0,
              decoration: BoxDecoration(
                color: widget.selectedEllipseIndex == widget.index
                    ? Colors.red
                    : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            widget.labelText,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
