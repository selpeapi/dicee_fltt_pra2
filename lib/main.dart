import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    //상태 업데이트에 사용
                    leftDiceNumber = Random().nextInt(6) + 1;
                    print("$leftDiceNumber");
                  });
                  print("asdf");
                },
                padding: EdgeInsets.all(0),
                child: Image(
                  image: AssetImage("images/dice${leftDiceNumber}.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
                print("qwer");
              },
              child: Image.asset("images/dice${rightDiceNumber}.png"),
            ),
          ),
        ],
      ),
    );
  }
}
