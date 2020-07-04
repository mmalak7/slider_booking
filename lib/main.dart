import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.all(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildStackText(),
            ],
          )),
    );
  }

  Widget _buildStackText() =>
      Stack(alignment: const Alignment(-0.47, 1), children: [
        Container(
          width: 70,
          height: 15,
          color: Colors.yellow,
        ),
        Text(
          "Use any Illustration",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 32, letterSpacing: 1.5),
        ),
      ]);
}
