import 'package:flutter/material.dart';
import 'package:whatsapp_2/homescreen.dart';
import 'package:whatsapp_2/ui/screens/chat_detail_screen.dart';

void main() {
  runApp(const whatsApp());
}

class whatsApp extends StatelessWidget {
  const whatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          tabBarTheme: TabBarTheme(
              unselectedLabelColor: Colors.white,
              labelColor: const Color.fromARGB(255, 246, 245, 245),
              dividerColor: Colors.white),
          primaryColor: Color.fromARGB(255, 249, 253, 253),
          indicatorColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
