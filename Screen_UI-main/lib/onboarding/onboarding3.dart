import 'package:flutter/material.dart';
import 'package:screen_ui/components/last_row.dart';
import 'package:screen_ui/screens/login_screen.dart';
// import 'package:screen_ui/screens/login_screen.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child:
            Image(
              height: 246,
              width: 300,
              image: AssetImage('assets/OnBoarding 3.png'),
              ),
          ),

          SizedBox(
            height: 160,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child:
             Text(
              'Make connects\nwith Travello',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'Mulish Extra Bold',
                color: Color(0xff000000),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child:
             Text(
              'To your dream trip',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'Mulish Light',
                color: Color(0xff929292),
              ),
            ),
          ),

          SizedBox(
            height: 34,
          ),

          LastRow(
            tap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ),
                  );
                },
          ),
        ],
      ),
    );
  }
}
