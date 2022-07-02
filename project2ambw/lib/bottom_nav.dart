import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class bottomNav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      height: 80.0,
      width: double.infinity,
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80.0,
              child: Icon(
                FontAwesomeIcons.house,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/addTransaction');
              },
              child: Container(
                child: Icon(FontAwesomeIcons.plus),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/setting');
              },
              child: Container(
                child: Icon(Icons.settings),
              ),
            ),
          ),
        ],
      ),
    );
  }
}