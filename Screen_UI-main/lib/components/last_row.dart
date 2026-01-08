import 'package:flutter/material.dart';
import 'package:screen_ui/onboarding/onboarding2.dart';
class LastRow extends StatelessWidget {
  const LastRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage('assets/Dots 1.png')),
      
          Spacer(),
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(100),
              ),
      
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoarding2(),
                    ),
                  );
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
