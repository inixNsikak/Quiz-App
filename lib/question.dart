
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({ Key? key }) : super(key: key);
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return 
    //container gives us the ability to 
    //control the space and align properly
    Container(
      width: double.infinity,
      //padding:,
      margin: EdgeInsets.all(9),
      //It makes the text take the full width of the container
      child:Text(
        questionText, 
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
        ),
  );
  }
}