import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int index = Provider.of<Data>(context).questionIndex;
    return Text(
      Provider.of<Data>(context).questions[index]['questionText'],
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0
      ),
    );

  }
}
