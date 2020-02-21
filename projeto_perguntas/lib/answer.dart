import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() onSelected;

  Answer(this.answer, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answer),
        onPressed: onSelected,
      ),
    );
  }
}
