import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String _questionText;

  //one parameter on constructor
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child:Text(
        _questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center, 
      ),
    );
  }
}