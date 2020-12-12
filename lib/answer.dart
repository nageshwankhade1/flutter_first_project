import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
   String lableButton;

  Answer(this.selectedHandler, this.lableButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(lableButton),
        color: Colors.blueAccent,
        onPressed: selectedHandler,
      ),
    );
  }
}
