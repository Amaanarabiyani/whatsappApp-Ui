import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uiHelper.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String selectedCountry = "India";

  List<String> countries = [
    'America',
    'Africa',
    'Italy',
    'Germany',
    'London',
    'India',
    'Japan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Uihelper.customText(
              name: "Enter Your Phone Number",
              height: 20,
              fontweight: FontWeight.bold,
              color: Color(0xFF00A884),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Uihelper.customText(
            name: 'WhatsApp will need to verify your phone',
            height: 16,
          ),
          SizedBox(
            height: 4,
          ),
          Uihelper.customText(
            name: 'number. Carrier charges may apply.',
            height: 16,
          ),
          SizedBox(
            height: 4,
          ),
          Uihelper.customText(
            name: " What's my number?",
            height: 16,
            color: Color(0xFF00A884),
            // fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: DropdownButtonFormField(
              items: countries.map(
                (String country) {
                  return DropdownMenuItem(
                    child: Text(country),
                    value: country,
                  );
                },
              ).toList(),
              onChanged: (newvalue) {
                setState(() {
                  selectedCountry = newvalue!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF00A884),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF00A884),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "+91",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Uihelper.CustomButton(
        name: 'Next',
        onTap: () {},
      ),
    );
  }
}
