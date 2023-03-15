import 'package:flutter/material.dart';
import 'models/skills_master.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SkillTestPage(),
    );
  }
}

class SkillTestPage extends StatefulWidget {
  const SkillTestPage({Key? key}) : super(key: key);

  @override
  State<SkillTestPage> createState() => _SkillTestPageState();
}

class _SkillTestPageState extends State<SkillTestPage> {

  SkillMaster skillMaster = SkillMaster();

  @override
  void initState() {
    super.initState();
    skillMaster.setQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    skillMaster.getQuestionMasterText()??'',
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if(skillMaster.getQuestionMasterAnswer()==true){
                          skillMaster.addRightWidget();
                        }else{
                          skillMaster.addWrongWidget();
                        }

                        skillMaster.nextQuestion();
                      });
                    },
                    child: const Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if(skillMaster.getQuestionMasterAnswer()==false){
                          skillMaster.addRightWidget();
                        }else{
                          skillMaster.addWrongWidget();
                        }

                        skillMaster.nextQuestion();
                      });
                    },
                    child: const Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: skillMaster.getWidgetList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
