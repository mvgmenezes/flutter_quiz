import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _resetQuiz;

  Result(this._score, this._resetQuiz);

  String get resultPhrase {
    if(_score >= 10){
      return 'You did it! your score:$_score';
    }else{
      return 'Try Again! your score:$_score';
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
      Center(
          child: Column(
            children: <Widget>[
              Text(
                resultPhrase, 
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                child: Text('Reset quiz!'),onPressed: _resetQuiz,
                textColor: Colors.blue,
              )
            ],
          ),
        );
  }
}