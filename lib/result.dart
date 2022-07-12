import 'package:flutter/material.dart';

import 'main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;
  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText = '';
    if (resultScore >= 70) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 40) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Text("Your score is: $resultScore", style: TextStyle(fontSize: 40, color: isSwitched == false ? Colors.black : Colors.white,),),
            SizedBox(height: 30,),
            Text(resultPhrase, style: TextStyle(fontSize: 25, color: Colors.amber),),
            SizedBox(height: 60,),
            TextButton(
                onPressed: q,
                child: const Text('Restart The App', style: TextStyle(fontSize: 30,)),
            ),
          ],
        ),
      ),
    );
  }
}
