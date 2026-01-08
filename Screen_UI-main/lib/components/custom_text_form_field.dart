import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final InputDecoration? decoration;
  final String? hintText;
  final TextStyle? styleHint;
  final Icon? suffixIcon;
  final OutlineInputBorder? focusedBorder;
  final Color? color;

  const CustomTextFormField({
    super.key,
    this.decoration,
    this.hintText,
    this.styleHint,
    this.suffixIcon,
    this.focusedBorder,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          decoration??
          InputDecoration(
            hintText: hintText ?? 'Enter your email',
            filled: true,
            fillColor: Color(0xffC4C4C4).withValues(alpha: 0.2),
            hintStyle:
                styleHint ?? TextStyle(
                  fontFamily: 'Mulish Light', color: color?? Color(0xffaaaaaa),
                ),
            suffixIcon: suffixIcon?? Icon(Icons.email_outlined),
            focusedBorder:
                focusedBorder ??
                OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff026592)),
                  borderRadius: BorderRadius.circular(10),
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color?? Color(0xffC4C4C4)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
    );
  }
}
