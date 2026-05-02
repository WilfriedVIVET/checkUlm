import 'package:flutter/material.dart';
import 'package:ulm_app/site/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'jetBrains',scaffoldBackgroundColor: const Color(0xFF111827)),
      home: const HomePage(),
    );
      
  }
}



