import 'package:flutter/material.dart';
import '../../Materials/VerticalDropdownButton.dart';
import '../../Materials/MyBand.dart';
import '../../Materials/TwoColumnDataTable.dart';
import '../../Materials/ThreeColumnDataTable.dart';

void main() => runApp(new MaterialApp(
  title: 'Risk Rrofile',
  home: new ControlOnRisk(),
  theme: new ThemeData(primaryColor: Colors.blue[900]),
));

class ControlOnRisk extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Control On Risk'),
      ),

      body: new SafeArea(
        child: new Form(
          child: new ListView(
            padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            children: <Widget>[
              new Container(
                child: new Text('Control On Risk', style: new TextStyle(color: Colors.green, fontSize: 20.0),),
              ),

              new Divider(color: Colors.grey),

              new MyBand(new BandItem(Icons.lightbulb_outline, 'Risk', Colors.blue[900])),

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
                    child: new VerticalDropDownButton(new VerticalDropDownItem('Risk Category', ['Option1', 'Option2', 'Option3'])),
                  ),
                ],
              ),

              new TwoColumnDataTable(3, 'No.', 'Name', [
                new TwoColumnItem('1', 'Have no authentication'),
                new TwoColumnItem('2', 'Unsecure database'),
                new TwoColumnItem('3', 'Password not encrypted'),
              ]),

              new TwoColumnDataTable(3, 'No.', 'Name', [
                new TwoColumnItem('1', ''),
                new TwoColumnItem('2', ''),
                new TwoColumnItem('3', ''),
              ]),

              new MyBand(new BandItem(Icons.info, 'Control', Colors.blue[900])),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Control Objetive',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new VerticalDropDownButton(new VerticalDropDownItem('Control Category', ['Option1', 'Option2', 'Option3'])),
                  ),
                ],
              ),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Responsible Person',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Control Operation',
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
                        labelText: 'Control Center',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Control Process',
                      ),
                    ),
                  ),
                ],
              ),
              
              new ThreeColumnDataTable(3, 'No.', 'Name', 'Status', [
                new ThreeColumnItem('1', 'Issue1', 'Status'),
                new ThreeColumnItem('2', 'Issue2', 'Status'),
                new ThreeColumnItem('3', 'Issue3', 'Status'),
              ])
            ],
          ),
        ),
      ),
    );
  }
}