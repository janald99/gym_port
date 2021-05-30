import 'package:flutter/material.dart';
import 'package:gym_port/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Gym \'Port';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primaryColor: Colors.lightGreen,
    ),
    home: HomePage(),
  );
}