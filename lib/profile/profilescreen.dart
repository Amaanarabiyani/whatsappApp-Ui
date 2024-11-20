import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui_clone/widgets/uiHelper.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  final TextEditingController namecontroller = TextEditingController();

  File? pickedimage;

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
              name: "Profile Info",
              height: 20,
              fontweight: FontWeight.bold,
              color: Color(0xff00A884),
            ),
            SizedBox(
              height: 30,
            ),
            Uihelper.customText(
              name: "Please provide your name and an optional",
              height: 14,
            ),
            Uihelper.customText(
              name: "Profile Photo",
              height: 14,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage == null
                  ? CircleAvatar(
                      radius: 130,
                      child: Icon(
                        Icons.camera_alt,
                        size: 60,
                        color: Colors.grey,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedimage!),
                    ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: "Type Your Name Here",
                      hintStyle: TextStyle(
                        color: Color(0xff5E5E5E),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF05AA82),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF05AA82))),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF05AA82),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/happy-face 1.png',
                  width: 40,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        name: "Next",
        onTap: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      pickimage(ImageSource.camera);
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      size: 80,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      pickimage(ImageSource.gallery);
                    },
                    icon: Icon(
                      Icons.image,
                      color: Colors.grey,
                      size: 80,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  pickimage(ImageSource imagesource) async {
    try {
      final photo = ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.toString());
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          ex.toString(),
        ),
      ));
    }
  }
}
