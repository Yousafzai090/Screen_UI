// ignore_for_file: strict_top_level_inference

import 'package:flutter/material.dart';

Widget inPutBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 36,
    width: 36,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      cursorHeight: 30,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: TextStyle(
        fontSize: 24,
        fontFamily: 'Mulish Regular',
        color: Color(0xff000000),
      ),
      decoration: InputDecoration(counterText: ''),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        } else if (value.isEmpty) {
          FocusScope.of(context).previousFocus();
        }
      },
      
    ),
  );
}
