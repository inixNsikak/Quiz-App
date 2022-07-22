import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';


/*void main(List<String> args) {
  runApp(OnClickCounter());
}
*/
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions=[
      //Makng the app more dynamc, we wll be usng map
      {'quizQuestion':"What's your favourite color?",
      'answers':[{'text':'Black','score':5},{'text':'Blue','score':10},
      {'text':'Green','score':4},{'text':'Yellow','score':6}],},
      {'quizQuestion':"What's your favourite animal?",
      'answers':[{'text':'Cheetah','score':10},{'text':'Hawk','score':6},
      {'text':'Dog','score':5},{'text':'Snake','score':4}],},
      {'quizQuestion':"Whats your favourite food?",
      'answers':[{'text':'Salad','score':6},{'text':'Rice','score':7},
      {'text':'Afang','score':10},{'text':'Stew','score':10}],},
      
    ];

  //Code to make question change after every Click
    var _questionIndex=0;
    int _totalScore=0;
    
    void _resetQuiz(){
      setState(() {
      _questionIndex=0;
      _totalScore=0;  
      });
    }
  void _answerQuestion(int score){
    _totalScore+=score;
    //Alternative way to write _totalScore=_totalScore+score;
    setState(() {
     _questionIndex=_questionIndex+1; 
    });
    
    print(_questionIndex);
    if(_questionIndex<_questions.length){
      print('We have more questions!');
      } else {
        print('No more questions');
      }
  }
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home: Scaffold(appBar: 
      AppBar(title: Text('QuizApp')
      ),
      body:_questionIndex<_questions.length
      ?Quiz(
        answerQuestion:_answerQuestion,
        questionIndex: _questionIndex,
        questions: _questions,
          ) 
        :Result(_totalScore,_resetQuiz),
        //Pointer to the Result widget
       )
     );
  }
   //scaffold gives a base page design
}
