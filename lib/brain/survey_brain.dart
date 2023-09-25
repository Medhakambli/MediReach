import 'survey.dart';
class SurveyBrain{

  int _questionNumber = 0;
  final List<SurveyBank> _questions = [
    SurveyBank("I'm overweight or obese"),
    SurveyBank("I have hypertension"),
    SurveyBank("I have smoked cigarettes for at least 10 years"),
    SurveyBank("I’ve recently suffered an injury"),
    SurveyBank("I have high cholesterol"),
    SurveyBank("I have diabetes"),
  ];

  void nextQuestion(){
    if (_questionNumber<_questions.length-1) {
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questions[_questionNumber].questionText;
  }

  // bool getQuestionAnswer(){
  //   return _questions[_questionNumber].questionAnswer;
  // }

  bool isFinished(){
    if (_questionNumber == _questions.length - 1){
      return true;
    }
    return false;
  }
  void reset(){
    _questionNumber = 0;
  }
}

// List<String> kQuestions = [
//   "I'm overweight or obese",
//   "I have hypertension",
//   "I have smoked cigarettes for at least 10 years",
//   "I’ve recently suffered an injury",
//   "I have high cholesterol",
//   "I have diabetes"
// ];