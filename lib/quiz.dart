import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final Map<String, Object> question;

  Quiz({@required this.answerQuestion, @required this.question});

  @override
  Widget build(BuildContext context) {
    return 
      Column(children: [
          Question(question['questionText']),
          //recupera as respostas do json na posicao _questionIndex, e convert para uma List para poder realizar o map. 
          //dentro de cada elemento do MAP retonra o new widget, convert para uma lista e apos isso é necessario usar o 
          //spread ... para recupear os valores e dar um append dentro do children do Column.  
          ...(question['answers'] as List<String>).map((answer) {
            return Answer(answerQuestion,answer);
          }).toList()
        ],);
  }
}