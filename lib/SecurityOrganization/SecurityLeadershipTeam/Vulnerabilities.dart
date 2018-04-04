import 'package:flutter/material.dart';
import '../../Materials/MyBand.dart';
import '../../Materials/TwoColumnDataTable.dart';

void main() {
  runApp(new MaterialApp(
    home: new Vulnerabilities(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ));
}

class Vulnerabilities extends StatefulWidget {

  @override
  VulnerabilitiesState createState() => new VulnerabilitiesState();
}

class VulnerabilitiesState extends State<Vulnerabilities> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: new Text('Vulnerabilities'),
      ),

      body: new SafeArea(
        child: new Form(
          child: new ListView(
            padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),

            children: <Widget>[
              new Container(
                child: new Text('Vulnerability', style: new TextStyle(color: Colors.green, fontSize: 20.0),),
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

              //table
              new TwoColumnDataTable(3, 'Vulnerability Instance', 'Vulnerability Category', [
                new TwoColumnItem('V1', 'C1'),
                new TwoColumnItem('V2', 'C2'),
                new TwoColumnItem('V3', 'C3'),
              ]),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Selected Vulnerability',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Vulnerability Statement'
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Extent',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Asset'
                      ),
                    ),
                  ),
                ],
              ),

              new MyBand(new BandItem(Icons.lightbulb_outline, 'Impact', Colors.blue[900])),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Option'
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Impact Likelihood',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Asset Impacted'
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Impact Level',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Trigger Event Type'
                      ),
                    ),
                  ),
                ],
              ),

              new MyBand(new BandItem(Icons.info, 'Control', Colors.blue[900])),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Objective',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Responsible Person'
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Control Operation',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                          labelText: 'Control Process'
                      ),
                    ),
                  ),
                ],
              ),

              new TwoColumnDataTable(6, 'Target', 'Meature', [
                new TwoColumnItem('T1', 'M1'),
                new TwoColumnItem('T2', 'M2'),
                new TwoColumnItem('T3', 'M3'),
                new TwoColumnItem('T4', 'M4'),
                new TwoColumnItem('T5', 'M5'),
                new TwoColumnItem('T6', 'M6'),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}