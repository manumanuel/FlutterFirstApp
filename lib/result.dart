import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback reset;
  Result(this.finalScore, this.reset);

  String get resultPharse {
    var resultText = "You did it";
    if (finalScore > 12) {
      resultText = "You are a legend";
    } else if (finalScore >= 9) {
      resultText = "You are class";
    } else {
      resultText = "You are below avg";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: reset,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
            child: Text('Restart...'),
          )
        ],
      ),
    );
  }
}
