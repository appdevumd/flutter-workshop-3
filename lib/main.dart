import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

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
  var score = 0;

  var questions = [
    {
      'qText': 'Is pluto a planet?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
        {'text': 'Maybe So', 'score': 0},
      ],
    },
    {
      'qText': 'Is pluto a planet?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
        {'text': 'Maybe So', 'score': 0},
      ],
    },
    {
      'qText': 'Is pluto a planet?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
        {'text': 'Maybe So', 'score': 0},
      ],
    },
  ];

  void onAnswerClicked(int score) {
    this.score += score;
    setState(() {
      questionIndex++;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionIndex < questions.length
            ? Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Question(
                      "Question ${questionIndex + 1}: ${questions[questionIndex]['qText']}",
                    ),
                    ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                        .map((answer) {
                      return Answer(() => onAnswerClicked(answer['score'] as int), answer['text'] as String);
                    }).toList(),
                  ],
                ),
              )
            : Result(score),
      ),
    );
  }
}
