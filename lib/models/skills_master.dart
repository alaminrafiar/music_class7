import 'package:flutter/material.dart';
import 'package:music_class7/models/skills_test_oop.dart';

class SkillMaster {
  int _questionIndex = 0;
  List<Widget> _widgetList = [];

  List<SkillTester> _skillTesterList = [];

  void setQuestion() {
    SkillTester skil1 = SkillTester(
        questionText: 'Dhaka is the capital of Bangladesh', answer: true);
    SkillTester skil2 = SkillTester(
        questionText: 'Only one capital exists in South Africa', answer: false);

    SkillTester skil3 = SkillTester(
        questionText: 'The tallest mountain in the world is Mount Everest',
        answer: true);

    SkillTester skil4 = SkillTester(
        questionText: 'The world’s longest coastline is in China',
        answer: false);
    _skillTesterList.add(skil1);
    _skillTesterList.add(skil2);
    _skillTesterList.add(skil3);
    _skillTesterList.add(skil4);
  }

  // List<SkillTester> _skillTesterList = [
  //   SkillTester(
  //       questionText: 'Dhaka is the capital of Bangladesh', answer: true),
  //   //0
  //   SkillTester(
  //       questionText: 'Only one capital exists in South Africa', answer: false),
  //   //1
  //   SkillTester(
  //       questionText: 'The tallest mountain in the world is Mount Everest',
  //       answer: true),
  //   //2
  //   SkillTester(
  //       questionText: 'The world’s longest coastline is in China',
  //       answer: false),
  //   //3
  // ];

  // List<SkillTester> getQuestionList(){
  //   return _skillTesterList;
  // }

  String? getQuestionMasterText() {
    return _skillTesterList[_questionIndex].getQuestionText();
  }

  bool? getQuestionMasterAnswer() {
    return _skillTesterList[_questionIndex].getAnswer();
  }

  void nextQuestion() {
    if (_questionIndex < _skillTesterList.length - 1) {
      _questionIndex = _questionIndex + 1;
    } else {
      _questionIndex = 0;
    }
  }

  List<Widget> getWidgetList() {
    return _widgetList;
  }

  void addRightWidget() {
    if (_questionIndex < _skillTesterList.length - 1) {
      _widgetList.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      _widgetList = [];
    }

  }

  void addWrongWidget() {
    if (_questionIndex < _skillTesterList.length - 1) {
      _widgetList.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    } else {
      _widgetList = [];
    }

  }
}
