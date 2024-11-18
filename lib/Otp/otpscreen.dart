import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uiHelper.dart';

class Otpscreen extends StatelessWidget {
  final String phonenumber;
  Otpscreen({super.key, required this.phonenumber});
  final TextEditingController otp1 = TextEditingController();
  final TextEditingController otp2 = TextEditingController();
  final TextEditingController otp3 = TextEditingController();
  final TextEditingController otp4 = TextEditingController();
  final TextEditingController otp5 = TextEditingController();
  final TextEditingController otp6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Uihelper.customText(
              name: "Verifying Your Phone Number",
              height: 20,
              fontweight: FontWeight.bold,
              color: Color(0xFF00A884),
            ),
            SizedBox(
              height: 20,
            ),
            Uihelper.customText(
              name: "You’ve tried to register +91${phonenumber}",
              height: 17,
            ),
            Uihelper.customText(
              name: "recently. Wait before requesting an sms or a call.",
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  name: " with your code. ",
                  height: 17,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Uihelper.customText(
                    name: "Wrong Number?",
                    height: 17,
                    color: Color(0xFF00A884),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Uihelper.Customcontainer(
                  otp1,
                ),
                Uihelper.Customcontainer(
                  otp2,
                ),
                Uihelper.Customcontainer(
                  otp3,
                ),
                Uihelper.Customcontainer(
                  otp4,
                ),
                Uihelper.Customcontainer(
                  otp5,
                ),
                Uihelper.Customcontainer(
                  otp6,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Uihelper.customText(
              name: "Didn’t receive code?",
              height: 17,
              color: Color(0xFF00A884),
              fontweight: FontWeight.w400,
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        name: "Continue",
        onTap: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
