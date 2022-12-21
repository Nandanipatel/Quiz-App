import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15),
            // margin: EdgeInsets.all(15),
            side: const BorderSide(
              width: 1,
              color: Color.fromARGB(255, 32, 117, 185),
            ),
            primary: Color.fromARGB(255, 249, 250, 250),
            onPrimary: Color.fromARGB(255, 12, 12, 12)),
        child: Text(
          answerText,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
