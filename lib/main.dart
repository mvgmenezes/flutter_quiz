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

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?', 
      'answers':['Black','Red','Green','White']
    },
    {
      'questionText': 'What is your favorite animal?', 
      'answers':['Rabbit','Snake','Elephant','Lion']
    },
    {
      'questionText': 'Who is your favorite instructor?', 
      'answers':['Marcus','Marcus','Marcus']
    } 
  ];
  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
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
        Quiz(answerQuestion: _answerQuestion,question: _questions[_questionIndex] )
        : Result(),
      ),
    );
  }
}


