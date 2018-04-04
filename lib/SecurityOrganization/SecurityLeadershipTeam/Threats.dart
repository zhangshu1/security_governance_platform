import 'package:flutter/material.dart';
import '../../Materials/MyDropDownButton.dart';
import '../../Materials/MyBand.dart';
import '../../Materials/ThreeColumnDataTable.dart';

void main() {
  runApp(new MaterialApp(
    home: new Threats(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ));
}

class Threats extends StatefulWidget {

  @override
  ThreatsState createState() => new ThreatsState();
}

class ThreatsState extends State<Threats> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: new Text('Threats'),
      ),

      body: new SafeArea(
        child: new Form(
          child: new ListView(
            padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),

            children: <Widget>[
              new Container(
                child: new Text('Threats', style: new TextStyle(color: Colors.green, fontSize: 20.0),),
              ),

              new Divider(color: Colors.grey),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Business Unit',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Agenda'
                      ),
                    ),
                  ),
                ],
              ),

              new MyDropDownButton(new MyDropDownItem('Event Type', ['Option1', 'Option2', 'Option3'])),
              
              new MyBand(new BandItem(null, 'Early Warning Sensory Operation', Colors.blue[900])),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Condition',
                ),
              ),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Alert / Trigger',
                ),
              ),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Condition Likelyhood',
                ),
              ),

              new MyBand(new BandItem(null, 'Leading Indicators', Colors.blue[900])),
              
              new ThreeColumnDataTable(4, 'Person', 'Job Function', 'Business Unit',
                  [
                    new ThreeColumnItem('P1', 'J1', 'B1'),
                    new ThreeColumnItem('P2', 'J2', 'B2'),
                    new ThreeColumnItem('P3', 'J3', 'B3'),
                    new ThreeColumnItem('P4', 'J4', 'B4'),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}