import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback clickedFunc; // void callback is a more specific function with a signature of void name() no args!
  final String text;

  Answer(this.clickedFunc, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Text(text),
          onPressed: clickedFunc,
        ));
  }
}
