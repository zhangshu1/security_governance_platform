import 'package:flutter/material.dart';
import 'Materials/MyExpansionPanelList.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Staff',
    home: new StaffDetail(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class StaffDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Job / People'),
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(top: 20.0),
            padding: new EdgeInsets.all(10.0),
            child: new Text('Jimmy Yee', style: new TextStyle(color: Colors.green, fontSize: 18.0)),
          ),
          new Container(
            height: 800.0,
            width: 500.0,
            child: new MyExpansionPanelList(
              items: [
                new ExpansionPanelItem(false, 'Work Responsibilities', responsibility),
                new ExpansionPanelItem(false, 'My Work', new Text('To be implemented')),
                new ExpansionPanelItem(false, 'Incoming Work', new Text('To be implemented')),
                new ExpansionPanelItem(false, 'Outcoming', new Text('To be implemented')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget responsibility = new Container(
  padding: new EdgeInsets.all(10.0),
  child: new Text('Builds and maintains strong client relationships that will drive smooth project development and execution and positively impact future business.\n\n '
      'Partners with a Project Manager to coordinate a cross-functional team for the creative and technical development of each campaign.\n\n '
      'Monitors and evaluates performance metrics, market-research, and other information to assess program\' success.\n'),
);