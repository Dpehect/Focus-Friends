import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool voiceeffect = false;
  bool musiceffect = false;
  bool notifications = false;
  bool vibrations = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ayarlar',
          style: TextStyle(
            fontFamily: 'Switzer',
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildSwitchTile('Ses Efekleri', voiceeffect, (value) {
              setState(() {
                voiceeffect = value;
              });
            }, 159),
            buildSwitchTile('Müzik', musiceffect, (value) {
              setState(() {
                musiceffect = value;
              });
            }, 209),
            buildSwitchTile('Bildirimler', notifications, (value) {
              setState(() {
                notifications = value;
              });
            }, 173),
            buildSwitchTile('Titreşimler', vibrations, (value) {
              setState(() {
                vibrations = value;
              });
            }, 166),
          ],
        ),
      ),
    );
  }

  Widget buildSwitchTile(
      String title, bool value, ValueChanged<bool> onChanged, double spacing) {
    return Container(
      width: 357,
      height: 46,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          SizedBox(width: 25),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Switzer',
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(width: spacing),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Color(0xFF5092F9),
            inactiveThumbColor: Color(0xFFD9D9D9),
          ),
        ],
      ),
    );
  }
}
