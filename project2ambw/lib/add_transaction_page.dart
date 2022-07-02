import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';


class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  String dropdownValue = 'Income';
  DateTime _dateTime = DateTime.now();
  int money = 0;
  String note = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add Transaction"),
      ),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            margin: EdgeInsets.only(bottom: 15.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    color: Color(0xFF0A0E21),
                  ),
                  padding: EdgeInsets.all(
                    12.0,
                  ),
                  child: Icon(
                    Icons.attach_money,
                    size: 24.0,
                    // color: Colors.grey[700],
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "0",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    color: Color(0xFF0A0E21),
                  ),
                  padding: EdgeInsets.all(
                    12.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.noteSticky,
                    size: 24.0,
                    // color: Colors.grey[700],
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "note",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(bottom: 20.0),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.white),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Income', 'Expense']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            margin: EdgeInsets.only(bottom: 20.0),
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(_dateTime == null ? 'pick a date' : DateUtils.dateOnly(_dateTime).toString()),
                Spacer(),
                RaisedButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2222),
                    ).then((value){
                      setState((){
                        _dateTime = value!;
                      });
                    });
                  },
                  child: Text("pick a date"),
                )
              ],
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          )
        ],
      ),
    );
  }
}
