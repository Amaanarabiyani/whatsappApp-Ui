import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/Login/Login.dart';
import 'package:whatsapp_ui_clone/widgets/uiHelper.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image 1.png'),
            SizedBox(
              height: 40,
            ),
            Uihelper.customText(
              name: "Welcome To WhatsApp",
              height: 20,
              color: Color(0xFF000000),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  name: "Read Out ",
                  height: 14,
                ),
                Uihelper.customText(
                  name: "Privacy Policy. ",
                  height: 14,
                  color: Color(0xFF0C42CC),
                ),
                Uihelper.customText(
                  name: "Tap ''Agree and Continue''",
                  height: 14,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  name: 'to Accept the ',
                  height: 14,
                ),
                Uihelper.customText(
                  name: "Teams Of Services.",
                  height: 14,
                  color: Color(0xFF0C42CC),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        name: 'Agree and Continue',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
