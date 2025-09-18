import 'package:flutter/material.dart';
import 'package:travel_ui_design/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/HomePage', home: HomePage());
  }
}
