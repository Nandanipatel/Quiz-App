import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which one is smallest ocean in the World?',
      'answers': [
        {'text': 'Indian', 'score': 0},
        {'text': 'Pacific', 'score': 0},
        {'text': 'Atlantic', 'score': 0},
        {'text': 'Arctic', 'score': 10},
      ],
    },
    {
      'questionText':
          'A folder in windows computer can\'t be made with the name _____',
      'answers': [
        {'text': 'can', 'score': 0},
        {'text': 'con', 'score': 10},
        {'text': 'mak', 'score': 0},
        {'text': 'make', 'score': 0},
      ],
    },
    {
      'questionText': 'In which country, white elephant is found?',
      'answers': [
        {'text': 'India', 'score': 0},
        {'text': 'Shri lanka', 'score': 0},
        {'text': 'Thailand', 'score': 10},
        {'text': 'Malaysia', 'score': 0},
      ],
    },
    {
      'questionText': 'Which one is the first search engine in internet',
      'answers': [
        {'text': 'Google', 'score': 0},
        {'text': 'Archie', 'score': 10},
        {'text': 'Altavista', 'score': 0},
        {'text': 'WAIS', 'score': 0},
      ],
    },
    {
      'questionText': 'First computer virus is known as ',
      'answers': [
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Creeper Virus', 'score': 10},
        {'text': 'Elk cloner', 'score': 0},
        {'text': 'SCA virus', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
    // if (_questionIndex < _questions.length) {
    //   print('We have more questions!');
    // } else {
    //   print('No more questions!');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 250, 249, 249)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Knowledge Test'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
