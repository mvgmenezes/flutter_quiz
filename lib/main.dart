import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My fist text"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']),
          //recupera as respostas do json na posicao _questionIndex, e convert para uma List para poder realizar o map. 
          //dentro de cada elemento do MAP retonra o new widget, convert para uma lista e apos isso é necessario usar o 
          //spread ... para recupear os valores e dar um append dentro do children do Column.  
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion,answer);
          }).toList()
        ],),
      ),
    );
  }
}


