import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextFormField extends StatelessWidget {
  final InputDecoration? decoration;
  final String? hintText;
  final TextStyle? styleHint;
  final Icon? suffixicon;
  final IconButton? suffixIcon;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? enabledborder;
  final OutlineInputBorder? errorborder;
  final OutlineInputBorder? focusedErrorborder;
  final Color? color;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController? controller;
  final VoidCallback? onPressed;
  final bool? obsecureText;
  final AutovalidateMode? autoValidateMode;
  final ScaffoldMessenger? scaffoldMessenger;

   const CustomTextFormField({
    super.key,
    this.decoration,
    this.hintText,
    this.styleHint,
    this.suffixicon,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledborder,
    this.errorborder,
    this.focusedErrorborder,
    this.color,
    this.validator,
    this.inputFormatter,
    this.controller,
    this.onPressed,
    this.obsecureText,
    this.autoValidateMode,
    this.scaffoldMessenger,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      obscureText: obsecureText ?? false,
      inputFormatters: inputFormatter,
      validator: validator,
      
      autovalidateMode: autoValidateMode,
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
            
            suffixIcon: suffixIcon?? IconButton(icon:  Icon(Icons.email_outlined), onPressed: onPressed ?? () {}),
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
            errorBorder: 
               errorborder??
               OutlineInputBorder(
                 borderSide: BorderSide(color: Color(0xFFFF0000)),
                 borderRadius: BorderRadius.circular(10),
               ),
               focusedErrorBorder: 
                focusedErrorborder??
                OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFF0000)),
                  borderRadius: BorderRadius.circular(10),
                ),
          ),
    );
  }
}
