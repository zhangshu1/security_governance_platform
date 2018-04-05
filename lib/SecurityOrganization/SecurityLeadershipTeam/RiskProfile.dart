import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Risk Rrofile',
  home: new RiskProfile(),
  theme: new ThemeData(primaryColor: Colors.blue[900]),
));

class RiskProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Risk Profile'),
      ),

      body: new ListView(
        padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        children: <Widget>[
          new Table(
            border: new TableBorder.all(color: Colors.black),
            children: new List.generate(10, (int index) {
              return new TableRow(
                children: new List.generate(5, (int index) {
                  return new TableCell(
                    child: new Text('SB')
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }
}