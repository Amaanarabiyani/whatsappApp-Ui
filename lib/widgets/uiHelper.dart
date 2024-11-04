

import 'package:flutter/material.dart';

class Uihelper {
  static CustomButton({required String name, required VoidCallback onTap}) {
    return SizedBox(
      height: 35,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        child: Text(
          name,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static customText(
      {required String name,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      name,
      style: TextStyle(
        color: color ?? Color(0xff5E5E5E),
        fontWeight: fontweight ?? FontWeight.normal,
        fontSize: height,
        fontFamily: '',
      ),
    );
  }
}
