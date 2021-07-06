import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.sentiment_satisfied,
          color: Color(0xff046582),
          size: 30,
        ),
        backgroundColor: Color(0xfff39189),
        title: Text(
          'Ask Me Anything',
        ),
      ),
      body: Magicball(),
    ),
  ));
}

class Magicball extends StatefulWidget {
  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int ballchangenumber = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballchangenumber = Random().nextInt(4) + 1;
              });

              print('Pressed');
            },
            child: Image.asset('images/ball$ballchangenumber.png'),
          ),
        ),
        Container(
          child: Text(
            '*Tap on the Ball for answer*',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade900,
            ),
          ),
        ),
      ],
    );
  }
}
