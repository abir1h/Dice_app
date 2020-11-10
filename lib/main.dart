import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Dice App'),),



          backgroundColor: Colors.black,
        ),
        body: Dice(),
      ),
    );
  }
}
class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var leftdicenumber=2;
  var rightdicenumber=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftdicenumber=Random().nextInt(6)+1;
                    });

                  },
                  child: Image.asset('images/dice$leftdicenumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                  onPressed: (){
                    setState(() {
                      setState(() {
                        rightdicenumber=Random().nextInt(6)+1;
                      });
                    });

                  },
                  child: Image.asset('images/dice$rightdicenumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}



