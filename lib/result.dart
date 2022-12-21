import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 50) {
      resultText = 'All correct , Your knowledge is sharp !!!';
    } else if (resultScore >= 40) {
      resultText = 'Only one wrong, Nice !!!';
    } else if (resultScore >= 20) {
      resultText = 'You are good but not that good ';
    } else if (resultScore >= 10) {
      resultText = 'Oh dear you should improve !! ';
    } else {
      resultText = 'Ooopss, unfortunately All wrong ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 50, 30, 10),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  side: const BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 32, 117, 185),
                  ),
                  primary: Color.fromARGB(255, 32, 117, 185),
                ),
                child: Text(
                  'Reset Quiz',
                  style: TextStyle(fontSize: 17),
                ),
                onPressed: resetHandler,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
