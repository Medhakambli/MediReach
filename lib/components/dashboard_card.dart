import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/screens/login_screen.dart';

import '../utils/constants.dart';

List<String> src = [
  "assets/images/chatbot_message.png",
  "assets/images/boy_online_doctor.png",
  "assets/images/notebook.png",
  "assets/images/clock.png"
];
List<String> title = [
  "Talk with AI",
  "Consult Doctor",
  "Generate Prescription",
  "Your History"
];

class DashboardCard extends StatelessWidget {
  final int index;
  DashboardCard({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(src[index]),
            Text(
              title[index],
              style:
                  GoogleFonts.manrope(textStyle: kPreviousEnquiriesTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
