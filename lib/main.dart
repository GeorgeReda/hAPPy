import 'package:birthday_1/constants.dart';
import 'package:birthday_1/routes/before_after.dart';
import 'package:birthday_1/routes/tindercard.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: Constants().theme,
      home: TinderCard(),
    );
  }
}
