import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_nav.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body:
      Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.white),),
            ),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.person, color: Colors.white,),
                SizedBox(width: 15.0,),
                Text("Profile", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.white),),
            ),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.powerOff, color: Colors.white,),
                SizedBox(width: 15.0,),
                Text("Log Out", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
