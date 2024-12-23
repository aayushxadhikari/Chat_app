import 'package:flutter/material.dart';
import 'package:flutterproducts/chat_page.dart';
import 'package:flutterproducts/core/theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const ChatPage(),
    );
  }
}
