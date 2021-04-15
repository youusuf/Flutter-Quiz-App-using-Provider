import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_provider/answer.dart';
import 'package:quiz_app_provider/question.dart';
import 'data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create:(context)=>Data(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title:Text("Quiz App"),
          ),
          body:Body(),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      var index = Provider.of<Data>(context).questionIndex;
      var questions = Provider.of<Data>(context).questions;
    return index <questions.length ?
      Column(
     crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(),
        // ...(questions[index][answer] as List<String>).map((question){
        //   return Answer();
        // }).toList(),
        ...(questions[index]['answer'] as List<Map<String,Object>>).map((answer){
          return Answer(answer['text'],score: answer['score'],);
        }).toList()
      ],
    ):Center(

      child: Column(
        children: [
          Text(
            'you get ${Provider.of<Data>(context).totalScore} in Exam',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
          TextButton(onPressed:(){
                      Provider.of<Data>(context,listen: false).reset();
          },
              child: Text("Reset",style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),)
          )
        ],
      ),
    );
  }
}

