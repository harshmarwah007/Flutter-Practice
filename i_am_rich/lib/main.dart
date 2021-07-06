import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Harsh"),
          backgroundColor: Colors.greenAccent,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            image: AssetImage('images/dm.jpeg'),
            //  image: NetworkImage('https://static.toiimg.com/photo/72975551.cms'),
          ),
        ),
        drawer: Drawer(),
      ),
    ),
  );
}
