import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  )
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MAGIC 8 APP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int numberImage = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            numberImage = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$numberImage.png'),
      ),
    );
  }
  
}