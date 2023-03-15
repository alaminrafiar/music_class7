class SkillTester{
  String? _questionText;
  bool? _answer;

  SkillTester({String? questionText, bool? answer}){
    _questionText = questionText;
    _answer = answer;
  }

  String? getQuestionText(){
    return _questionText;
  }

  bool? getAnswer(){
    return _answer;
  }

}
