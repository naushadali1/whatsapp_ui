import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); // Corrected the constructor

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whatsapp Ui',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MyHome(),
    );
  }
}
