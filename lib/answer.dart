import 'package:flutter/material.dart';

import './main.dart';
import './question.dart';
//import './answer.dart';



class Answer extends StatelessWidget {
  final Function responseHandler;
  final String answerText;

  Answer(this.responseHandler, this.answerText);
  
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: double.infinity,
      //margin: EdgeInsets.all(9),

      child:RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,

        child:Text (answerText),
      onPressed: responseHandler,
      
    ),
    );
  }
}