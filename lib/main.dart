import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui_clone/screens/Splash/splashscreen.dart';
// import 'package:whatsapp_ui_clone/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF00A884),
        ),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
