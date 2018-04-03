import 'package:flutter/material.dart';

class BandItem {
  IconData icon;
  String title;
  Color color;

  BandItem(this.icon, this.title, this.color);
}

class MyBand extends StatelessWidget {
  final BandItem bandItem;
  MyBand(this.bandItem);

  @override
  Widget build(BuildContext context) {

    return new Container(
      margin: new EdgeInsets.only(top: 20.0),
      height: 36.0,
      color: bandItem.color,
      child: new Row(
        children: <Widget>[
          new SizedBox(
            width: 40.0,
            child: new Icon(bandItem.icon, color: Colors.white,),
          ),
          new SizedBox(
            child: new Text(bandItem.title, style: new TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}