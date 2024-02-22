import 'package:flutter/material.dart';

class TrophyPage extends StatefulWidget {
  @override
  _TrophyPageState createState() => _TrophyPageState();
}

class _TrophyPageState extends State<TrophyPage> {
  int powerhatpoint = 0;
  int magicmirrorpoint = 0;
  int futureballpoint = 0;
  int hidemaskpoint = 0;
  int point = 0;
  void updatePoints(int powerhat, int magicmirror, int futureball, int hideMask,
      int totalPoints) {
    setState(() {
      powerhatpoint = powerhat;
      magicmirrorpoint = magicmirror;
      futureballpoint = futureball;
      hidemaskpoint = hideMask;
      point = totalPoints;
    });
  }

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
                  margin: EdgeInsets.only(left: 145, top: 50),
                  child: Text(
                    'Ödül Odası',
                    style: TextStyle(
                        fontFamily: 'Switzer',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 50),
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFFFCF4D9),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Image.asset('assets/images/odulellipse.png'),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: Text(
                          '' + point.toString(),
                          style: TextStyle(
                              fontFamily: 'Switzer',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 205, top: 21),
              child: Text(
                'Sahip Olduğum Ödüller',
                style: TextStyle(
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 5),
            (powerhatpoint == 0 &&
                    magicmirrorpoint == 0 &&
                    futureballpoint == 0)
                ? Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2F2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 358,
                    height: 147,
                    child: Container(
                      margin: EdgeInsets.only(left: 73, top: 63),
                      child: Text(
                        'Henüz bir şey satın almadınız',
                        style: TextStyle(
                          fontFamily: 'Switzer',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 17),
                        (powerhatpoint > 0)
                            ? buildTrophyContainer('Güç Şapkası', powerhatpoint)
                            : Container(),
                        SizedBox(width: 8),
                        (magicmirrorpoint > 0)
                            ? buildTrophyContainer(
                                'Sihirli El Aynası', magicmirrorpoint)
                            : Container(),
                        SizedBox(width: 8),
                        (magicmirrorpoint > 0)
                            ? buildTrophyContainer(
                                'Görünmezlik Maskesi', hidemaskpoint)
                            : Container(),
                        SizedBox(width: 8),
                        (futureballpoint > 0)
                            ? buildTrophyContainer(
                                'Gelecek Küresi', futureballpoint)
                            : Container(),
                      ],
                    ),
                  ),
            Container(
              margin: EdgeInsets.only(right: 314, top: 28),
              child: Text(
                'Mağaza',
                style: TextStyle(
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 9),
            Row(
              children: [
                Container(
                  child: StoreItemCard(
                    imagePath: 'assets/images/kartellipse.png',
                    itemName: 'Güç Şapkası',
                    pointType: powerhatpoint,
                    itemPrice: 350,
                    point: point,
                    onTap: () {
                      point = point + 350;
                      powerhatpoint = powerhatpoint + 1;
                      updatePoints(powerhatpoint, magicmirrorpoint,
                          futureballpoint, hidemaskpoint, point);
                    },
                  ),
                ),
                Container(
                  child: StoreItemCard(
                    imagePath: 'assets/images/kartellipse.png',
                    itemName: 'Görünmezlik Maskesi',
                    pointType: hidemaskpoint,
                    point: point,
                    itemPrice: 250,
                    onTap: () {
                      print('onTap triggered for Görünmezlik Maskesi');
                      hidemaskpoint = hidemaskpoint + 1;
                      point = point + 250;
                      updatePoints(powerhatpoint, magicmirrorpoint,
                          futureballpoint, hidemaskpoint, point);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  child: StoreItemCard(
                    imagePath: 'assets/images/kartellipse.png',
                    itemName: 'Gelecek Küresi',
                    pointType: futureballpoint,
                    itemPrice: 350,
                    point: point,
                    onTap: () {
                      futureballpoint = futureballpoint + 1;
                      point = point + 350;
                      updatePoints(powerhatpoint, magicmirrorpoint,
                          futureballpoint, hidemaskpoint, point);
                    },
                  ),
                ),
                Container(
                  child: StoreItemCard(
                    imagePath: 'assets/images/kartellipse.png',
                    itemName: 'Sihirli El Aynası',
                    pointType: magicmirrorpoint,
                    point: point,
                    itemPrice: 250,
                    onTap: () {
                      magicmirrorpoint = magicmirrorpoint + 1;
                      point = point + 250;
                      updatePoints(powerhatpoint, magicmirrorpoint,
                          futureballpoint, hidemaskpoint, point);
                    },
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

Widget buildTrophyContainer(String trophyName, int trophyCount) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(width: 17),
        Container(
          width: 133,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: Color(0xFFDCDCDC)),
            boxShadow: [
              BoxShadow(
                color: Color(0x1F000000),
                offset: Offset(0, 0),
                blurRadius: 18,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Image.asset('assets/images/kartellipse.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  trophyName,
                  style: TextStyle(
                      fontFamily: 'Switzer',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Text(
                  '$trophyCount Adet',
                  style: TextStyle(
                      fontFamily: 'Switzer',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFFF8BB60)),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

class StoreItemCard extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final int itemPrice;
  final Function onTap;
  dynamic point;
  dynamic pointType;

  StoreItemCard({
    Key? key,
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    required this.onTap,
    required this.pointType,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      width: 173,
      height: 227,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Color(0xFFDCDCDC)),
        boxShadow: [
          BoxShadow(
            color: Color(0x1F000000),
            offset: Offset(0, 0),
            blurRadius: 18,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 17),
            child: Image.asset(imagePath),
          ),
          Container(
            margin: EdgeInsets.only(top: 29),
            child: Text(
              itemName,
              style: TextStyle(
                fontFamily: 'Switzer',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xFFFCF4D9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Image.asset('assets/images/odulellipse.png'),
                ),
                SizedBox(width: 8),
                Container(
                  child: Text(
                    '$itemPrice',
                    style: TextStyle(
                      fontFamily: 'Switzer',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              onTap();
              pointType = pointType + 1;
              point = point + itemPrice;
            },
            child: Container(
              width: 143,
              height: 29,
              decoration: BoxDecoration(
                color: Color(0xFFE1F2FD),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 44, top: 4),
                child: Text(
                  'Satın Al',
                  style: TextStyle(
                    color: Color(0xFF0A5982),
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
