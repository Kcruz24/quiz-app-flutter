import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore >= 29) {
      resultText = 'Those are the only right choices!';
    } else if (resultScore >= 25) {
      resultText = 'You have made good choices!';
    } else if (resultScore >= 20) {
      resultText = 'That\'s average';
    } else {
      resultText = 'What kind of choices are those?';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
