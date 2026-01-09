import 'package:flutter/material.dart';
import 'package:screen_ui/components/last_row.dart';
import 'package:screen_ui/components/custom_text.dart';


class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              height: 263,
              width: 300,
              image: AssetImage('assets/OnBoarding 1.png'),
            ),
          ),
      
          SizedBox(height: 150),
      
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
             child: CustomText(
             text: 'Explore the\nworld easily',
              styleText: TextStyle(
                fontFamily: 'Mulish Extra Bold',
                fontSize: 36,
                color: Color(0xff000000),
              ),
            ),
          ),
      
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), 
            child: CustomText(
              text: 'To your desire',
              styleText: TextStyle(
                fontSize: 26,
                fontFamily: 'Mulish Light',
                color: Color(0xff929292),
              ),
            ),
          ),
      
          SizedBox(height: 30),
      
          LastRow(),
        ],
      ),
    );
  }
}
