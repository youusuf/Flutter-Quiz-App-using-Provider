import 'package:flutter/material.dart';
class Data extends ChangeNotifier{
  int questionIndex = 0;
  int totalScore = 0;
  void increase(){
    questionIndex++;
    notifyListeners();
  }
  void score(int score){
    totalScore = totalScore+score;
    notifyListeners();
  }
  void reset(){
    questionIndex = 0;
    totalScore = 0;
    notifyListeners();
  }
  final questions = [
    {
      'questionText': "what's your favourite color?",
      'answer':[
       // 'tiger','Lion','cat','Rabbit'
        {'text':'black','score':10},
        {'text':'Red','score':5},
        {'text':'Green','score':3},
        {'text':'black','score':10},
      ],
    },
    {
      'questionText': "what's your favourite animal?",
      'answer':[
        //'tiger','Lion','cat','Rabbit'
        {'text':'Tiger','score':10},
        {'text':'Lion','score':5},
        {'text':'rabbit','score':3},
        {'text':'pigeon','score':10},
      ],
    },
    {
      'questionText': "what's your favourite city?",
      'answer':[
       // 'tiger','Lion','cat','Rabbit'
        {'text':'Sylhet','score':20},
        {'text':'Khulna','score':5},
        {'text':'Dhaka','score':3},
        {'text':'Laksmipur','score':10},
      ],
    },
  ];
}