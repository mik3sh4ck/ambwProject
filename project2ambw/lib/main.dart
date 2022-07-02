import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home_page.dart';
import 'setting_page.dart';
import 'add_transaction_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MoneyManagement());
}

class MoneyManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/setting': (context) => Settings(),
        '/addTransaction': (context) => AddTransaction()
      },
    );
  }
}
