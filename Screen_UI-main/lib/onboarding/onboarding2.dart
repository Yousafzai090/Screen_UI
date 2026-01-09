import 'package:flutter/material.dart';
import 'package:screen_ui/components/last_row.dart';

import 'package:screen_ui/components/custom_text.dart';
import 'package:screen_ui/onboarding/onboarding3.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 254, 254),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              height: 263,
              width: 300,
              image: AssetImage('assets/OnBoarding 2.png'),
            ),
          ),

          SizedBox(height: 120),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: CustomText(
              text: 'Reach the\nunknown spot',
              styleText: TextStyle(
                fontSize: 36,
                fontFamily: 'Mulish Extra Bold',
                color: Color(0xff000000),
              ),
            ),
          ),

          Padding(
            padding:EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: CustomText(
              text: 'To your destination',
              styleText: TextStyle(
                fontSize: 26,
                fontFamily: 'Mulish Light',
                color: Color(0xff929292),
              ),
            ),
          ),

          SizedBox(height: 34),

          LastRow(
            tap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoarding3(),
                    ),
                  );
                },
          ),
        ],
      ),
    );
  }
}
