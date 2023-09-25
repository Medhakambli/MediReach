import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/brain/survey_brain.dart';
import 'package:medireach/components/custom_button.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/custom_radio_button.dart';
import '../utils/constants.dart';
import '../utils/survey_questions.dart';
import 'dashboard_screen.dart';

SurveyBrain surveyBrain = SurveyBrain();

class SurveyScreen extends StatefulWidget {
  static String id = 'survey_screen';

  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 30, left: 10,
            right: 10,
            bottom: 15),
        child: Text(
          "Let us know you",
          style: GoogleFonts.manrope(
            textStyle: kHeaderTextStyle,
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              surveyBrain.getQuestionText(),
              // "This is where the question text will go.",
              textAlign: TextAlign.center,
              style: GoogleFonts.manrope(
                textStyle: kQuestionTextStyle,
              ),
            ),
          ),
        ),
      ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextButton(
    style: TextButton.styleFrom(
    padding: EdgeInsets.zero, backgroundColor: Colors.green),
    onPressed: () {
    setState(() {
    surveyBrain.nextQuestion();
    });

    },
    child: Text(
    "True",
    style: TextStyle(
    fontSize: 20.0,
    color: Colors.white,
    ),
    ),
    ),
    ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextButton(
    style: TextButton.styleFrom(
    padding: EdgeInsets.zero, backgroundColor: Colors.red),
    onPressed: () {
    setState(() {
    surveyBrain.nextQuestion();
    });
    },
    child: Text(
    "False",
    style: TextStyle(
    fontSize: 20.0,
    color: Colors.white,
    ),
    ),
    ),
    ),
    ),
    ],
    ),
    )
    );
  }
}

//return Scaffold(
//     //   body: SafeArea(
//     //     child: Column(
//     //       children: [
//     //         Padding(
//     //           padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
//     //           child: Text(
//     //             "Let us know you",
//     //             style: GoogleFonts.manrope(
//     //               textStyle: kHeaderTextStyle,
//     //             ),
//     //           ),
//     //         ),
//     //         Expanded(
//     //           child: ListView.builder(
//     //             itemCount: kQuestions.length,
//     //             itemBuilder: (BuildContext context, int index) {
//     //             return CustomRadioListTile(question: "${index+1}. "+kQuestions[index]);
//     //           },
//     //           ),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
//     //           child: CustomButton(buttonText: "Submit", buttonColor: Pallete.primaryThemeColor, onpressed: ()=> Navigator.pushNamed(context, DashboardScreen.id)),
//     //         ),
//     //       ],
//     //     ),
//     //   ),
//     // );

