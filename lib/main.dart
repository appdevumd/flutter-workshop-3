import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void onAnswerClicked() {
    setState(() {
      questionIndex++;
    });
  }

  var questions = [
    'What color is the sun?',
    'How many planets are in our solar system?',
    'Is pluto a planet?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Question("Question 1: ${questions[questionIndex]}"),
                Spacer(),
                ElevatedButton(
                  onPressed: onAnswerClicked,
                  child: Text("Answer 1"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: onAnswerClicked,
                  child: Text("Answer 2"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: onAnswerClicked,
                  child: Text("Answer 3"),
                ),
                Spacer(),
              ]),
        ),
      ),
    );
  }
}

// class QuestionStyle1 extends StatelessWidget {
//   @override 
//   Widget build (BuildContext context) {
//     return ElevatedButton(
//                   onPressed: null,
//                   child: Text("Answer 3"),
//                 );
//   }
// }