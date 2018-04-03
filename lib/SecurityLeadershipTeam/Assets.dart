import 'package:flutter/material.dart';
import '../Materials/MyDropDownButton.dart';
import '../Materials/MyBand.dart';

void main() {
  runApp(new MaterialApp(
    home: new Assets(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ));
}

class Assets extends StatefulWidget {

  @override
  AssetsState createState() => new AssetsState();
}

class AssetsState extends State<Assets> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Assets'),
      ),

      body: new SafeArea(
        child: new Form(
          child: new ListView(
            padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),

            children: <Widget>[
              new Container(
                child: new Text('Assets', style: new TextStyle(color: Colors.green, fontSize: 20.0),),
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

              new MyDropDownButton(new MyDropDownItem('Risk Assets', ['Option1', 'Option2', 'Option3'])),

              new MyBand(new BandItem(Icons.info, 'Selected Risk Asset', Colors.blue[900])),

              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        labelText: 'Asset Name',
                      ),
                    ),
                  ),
                  new SizedBox(width: 15.0),
                  new Expanded(
                    child: new MyDropDownButton(new MyDropDownItem('Asset Type', ['Option1', 'Option2', 'Option3'])),
                  ),
                ],
              ),

              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Asset Description',
                ),
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}