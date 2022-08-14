import 'package:flutter/material.dart';
import './qbooklet.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'question': 'what\'s your favorite Color?',
      'ans': [
        {'text': 'Red', 'Rating': 5},
        {'text': 'Green', 'Rating': 3},
        {'text': 'Green', 'Rating': 2},
        {'text': 'Pink', 'Rating': 1},
        {'text': 'Yellow', 'Rating': 4}
      ]
    },
    {
      'question': 'what\'s your favorite Movie',
      'ans': [
        {'text': 'Cast away', 'Rating': 5},
        {'text': 'Titanic', 'Rating': 4},
        {'text': 'Thumbad', 'Rating': 3},
        {'text': 'Swades', 'Rating': 2}
      ]
    },
    {
      'question': 'what\'s your favorite Web series',
      'ans': [
        {'text': 'Stranger Things', 'Rating': 5},
        {'text': 'Money Heist', 'Rating': 4},
        {'text': 'Squid Game', 'Rating': 3},
        {'text': 'Fauda', 'Rating': 2}
      ]
    },
  ];

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('Questions left to answer...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First Flutter App'),
            backgroundColor: Colors.teal[400],
          ),
          body: _questionIndex < _questions.length
              ? Qbooklet(
                  questions: _questions,
                  answerQuestion: answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
