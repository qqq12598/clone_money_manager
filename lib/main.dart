import 'package:flutter/material.dart';
import 'package:project1/src/ui/ui_home.dart';

void main() {
  runApp(MoneyMangerCloneApp());
}

class MoneyMangerCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money manager clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeUI(),
    );
  }
}
