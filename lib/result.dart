import 'package:flutter/material.dart';


class  Result extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final int resultscore;
  final Function resetHandler;

  Result(this.resultscore,this.resetHandler);
  
  String get resultPhrase{
    var resultText='';
    if(resultscore<=15){
      resultText='Not bad';
      } else if(resultscore>15 && resultscore<=20) {
        resultText='Okay';
      }
      else{
        resultText='Cool';
      }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            children:<Widget> [
              
              Text(resultPhrase,
              
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold), textAlign:TextAlign.center,
                ),
                FlatButton( child:Text('Restart Quiz'),
                textColor: Colors.blue,
                onPressed: resetHandler,),
            ],
          ),
          
          );
  }
}