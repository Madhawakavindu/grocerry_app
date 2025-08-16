import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page/category_page/category_page.dart';
import 'package:grocery_app/pages/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "grocery app",
      home: CategoryPage(),
    );
  }
}
