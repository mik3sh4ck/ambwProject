import 'package:flutter/cupertino.dart';

class dataUser {
  final String name;
  final String email;
  final String password;
  final int wallet;

  dataUser(
      {required this.name,
      required this.email,
      required this.password,
      required this.wallet});

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "name": name,
      "password": password,
      "wallet": wallet
    };
  }

  factory dataUser.fromJson(Map<String, dynamic> json) {
    return dataUser(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        wallet: json["wallet"]);
  }
}
