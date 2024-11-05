import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uiHelper.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Uihelper.customText(
              name: "Enter Your Phone Number",
              height: 20,
              fontweight: FontWeight.bold,
              color: Color(0xFF00A884),
            ),
          ),
        ],
      ),
    );
  }
}
