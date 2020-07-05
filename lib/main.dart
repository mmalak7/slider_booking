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
          padding: const EdgeInsets.fromLTRB(50, 100, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildStackText(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "You can use any illustration",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      letterSpacing: 1.5,
                      // color: Color(0xFFf1eff5)),
                      color: Color(0xFFc4bab7)),
                ),
              ),
              //tu idzie slider z image różnymi!
              //tu idzie button
              FlatButton(
                color: Color(0xFF019793),
                textColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
                onPressed: () {},
                child: Text(
                  "Choose",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildStackText() =>
      Stack(alignment: const Alignment(-0.47, 1), children: [
        Container(
          width: 70,
          height: 15,
          color: Color(0xFFffd323),
        ),
        Text(
          "Use any Illustration",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 32, letterSpacing: 1.5),
        ),
      ]);
}
