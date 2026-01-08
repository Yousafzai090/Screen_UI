// import 'package:flutter/material.dart';
// import 'package:screen_ui/components/custom_text.dart';


// class CustomContainer extends StatelessWidget {
//   final double height;
//   final double width;
//   final String? text;
//   final TextStyle? styleText;
//   final BoxDecoration? decoration;
//   final Color? color;
//   final Icon? icon;
//   final Widget? child;
//     final VoidCallback? tap ;
//   const CustomContainer({
//     super.key,
//     required this.height,
//     required this.width,
//     this.text,
//     this.styleText,
//     this.decoration,
//     this.color,
//     this.icon,
//     this.child,
//     this.tap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 300,
//       decoration: decoration?? BoxDecoration(
//         color: color?? Color(0xffFF3951),
//        borderRadius: BorderRadius.circular(10)
//       ),
//       child: child??
//        Center(
//          child: Row(
//           //  mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              InkWell( 
//               onTap:tap,
//                child: child?? CustomText(
//                 text: text?? 'Next',
//                 styleText: styleText?? TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Mulish Semi Bold',
//                   color: color?? Colors.white,
//                 ),
//                 ),
//              ),
//              SizedBox(width: 8),
//               InkWell(
//                 onTap: tap,
//               child: icon
              
//               // ??
//               // Icon(Icons.arrow_forward_ios, color: Colors.white),
//               ),
//            ],
//          ),
//        ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:screen_ui/components/custom_text.dart';


class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final String? text;
  final TextStyle? styleText;
  final BoxDecoration? decoration;
  final Color? color;
  final Icon? icon;
  final Widget? child;
    final VoidCallback? tap ;
  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    this.text,
    this.styleText,
    this.decoration,
    this.color,
    this.icon,
    this.child,
    this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: decoration?? BoxDecoration(
        color: color?? Color(0xffFF3951),
       borderRadius: BorderRadius.circular(10)
      ),
      child: 
       Center(
         child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             InkWell( 
              onTap:tap,
               child: child?? CustomText(
                text: text?? 'Next',
                styleText: styleText?? TextStyle(
                  fontSize: 20,
                  fontFamily: 'Mulish Semi Bold',
                  color: color?? Colors.white,
                ),
                ),
             ),
             SizedBox(width: 8),
              InkWell(
                onTap: tap,
              child: icon
              ??
              Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
           ],
         ),
       ),
    );
  }
}
