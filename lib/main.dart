import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 2,
            child: FlatButton(
              onPressed: () => print("hey"),
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
//          flex: 1,
            child: FlatButton(
              onPressed: () => print("left got clicked"),
              child: Image.asset('images/dice1.png'),
            ),
          )
        ],
      ),
    );
  }
}
