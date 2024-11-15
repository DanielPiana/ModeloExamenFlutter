import 'package:flutter/material.dart';

class Widgets {

  static AppBar buildAppBar() {
    return AppBar(
      title: const Text("Calculadora IMC",
          style: TextStyle(fontSize: 40, color: Colors.white)),
      backgroundColor: Colors.deepPurple,
    );
  }
}