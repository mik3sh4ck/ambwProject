import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project2ambw/dataclass.dart';
import 'reusable_card.dart';
import 'constrants.dart';
import 'bottom_nav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dbconnect.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

String name = "michael";

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: StreamBuilder<QuerySnapshot>(
                  stream: DatabaseUser.getData(),
                  builder: (context, snapshot) {
                    return Text(
                      "Welcome, $name",
                      style: ktNumberLabelTextStyle,
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Colors.green,
                    cardChild: Column(
                      children: [
                        Text(
                          'WALLET',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rp. ',
                              style: moneyText,
                            ),
                            Text(
                              '20.000',
                              style: moneyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Colors.blue,
                    cardChild: Column(
                      children: [
                        Text(
                          'Income',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rp. ',
                              style: moneyText,
                            ),
                            Text(
                              '20.000',
                              style: moneyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Colors.red,
                    cardChild: Column(
                      children: [
                        Text(
                          'Outcome',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rp. ',
                              style: moneyText,
                            ),
                            Text(
                              '20.000',
                              style: moneyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "History",
                style: ktNumberLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ReusableCard(
                        color: Colors.orange,
                        cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text("tanggal"),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text("notes"),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "data",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    ReusableCard(
                      color: Colors.orange,
                      cardChild: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("tanggal"),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("notes"),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "data",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNav()
        ],
      ),
    );
  }
}
