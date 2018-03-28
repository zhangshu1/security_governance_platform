import 'package:flutter/material.dart';

class LeadershipTeam extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Leadership Team'),
      ),

      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(10.0),
            child: new Column(),
          ),
        ],
      ),
    );
  }
}