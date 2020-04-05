import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _score = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?', 
      'answers':[
        {'text':'Black','score': 3},
        {'text':'Red','score': 5},
        {'text':'Green','score': 10},
        {'text':'White','score': 1}
      ]
    },
    {
      'questionText': 'What is your favorite animal?', 
      'answers':[
        {'text':'Rabbit','score': 10},
        {'text':'Snake','score': 2},
        {'text':'Elephant','score': 1},
        {'text':'Lion','score': 50}
        ]
    },
    {
      'questionText': 'Who is your favorite instructor?', 
      'answers':[
        {'text':'Marcus','score': 10},
        {'text':'Marcus','score': 10},
        {'text':'Marcus','score': 10}
      ]
    } 
  ];
  void _answerQuestion(int score){
    _score = _score + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(score);
    });
  }

  void _resetQuiz(){
     setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My fist text"),
        ),
        body: _questionIndex < _questions.length ? 
        Quiz(answerQuestion: _answerQuestion ,question: _questions[_questionIndex] )
        : Result(_score, _resetQuiz),
      ),
    );
  }
}


