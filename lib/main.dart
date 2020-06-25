import 'dart:async';

import 'package:flutter/material.dart';

import 'DemoDrawer.dart';
import 'Login.dart';
import 'Registration.dart';

void main() {
  runApp(MaterialApp(
    home: DemoDrawer(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Container(
            child: Login(),
          )
        ],
      )),
    );
  }
}
