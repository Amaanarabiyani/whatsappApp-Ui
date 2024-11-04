import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/OnBoarding/onBoarding.dart';
import 'package:whatsapp_ui_clone/widgets/uiHelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            SizedBox(
              height: 20,
            ),
            Uihelper.customText(
              name: 'WhatsApp',
              height: 18,
              fontweight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}