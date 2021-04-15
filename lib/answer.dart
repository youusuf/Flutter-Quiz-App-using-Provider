import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class Answer extends StatelessWidget {
  final String answer;
  final int score;
  Answer(this.answer,{this.score});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Material(
          elevation: 5.0,
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed:(){
              Provider.of<Data>(context,listen: false).score(score);
              Provider.of<Data>(context, listen: false).increase();
            },
            minWidth: 300,
            height: 42.0,
            child: Text(
              answer,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
