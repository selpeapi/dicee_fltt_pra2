import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
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
                print("qwer");
              },
              child: Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
