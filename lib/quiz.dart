import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
 // const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion
    });

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: <Widget>[
          //Accessng the queston
          Question(
            questions[questionIndex]['quizQuestion']
          ),
          /**  answers dynamically by Mapping list to widget
          '...' The spread operator takes a stand pulls the values in the list and adds to
          the surrounding list as individual values  so we dont add only th value of a list to
          a list*/  
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
            return Answer(()=>answerQuestion(answer['score']), answer['text']);
         }).toList()
          /**Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          //Forwarding the function to answer.dart**/
         ]
    );
  }
}