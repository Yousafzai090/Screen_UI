import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? styleText;
  final Color? color;
  const CustomText({
    super.key,
    this.text,
    this.styleText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text( 
      text?? 'Welcome Back',
      style: styleText ?? TextStyle(
        fontSize: 24,
        fontFamily: 'Mulish Extra Bold',
        color: color?? color,
      ),
    );
  }
}
  
 
