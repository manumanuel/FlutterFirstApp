import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedAns;
  final String answer;
  Answer(this.selectedAns, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectedAns,
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
        ),
        child: Text(answer),
      ),
    );
  }
}
