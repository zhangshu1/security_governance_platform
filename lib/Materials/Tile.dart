import 'package:flutter/material.dart';

class Tile {
  Color bgColor;
  IconData iconImage;
  String title;
  BuildContext context;
  Route nextPage;

  Tile(this.bgColor, this.iconImage, this.title, this.context, this.nextPage);
}

class TileItem extends StatelessWidget {
  final Tile tile;
  TileItem(this.tile);

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final iconPadding = screenSize.width * 0.37 * 0.2;
    final gridMargin = screenSize.width * 0.008;
    final iconSize = screenSize.width * 0.37 * 0.3;

    return new Container(
      padding: new EdgeInsets.only(top: iconPadding),
      color: tile.bgColor,
      margin: new EdgeInsets.all(gridMargin),
      child: new Column(
        children: <Widget>[
          new Icon(tile.iconImage, size: iconSize, color: Colors.white,),
          new Container(
            padding: new EdgeInsets.only(top: iconPadding * 0.1),
            child: new ListTile(
              title: new Text(tile.title, style: new TextStyle(color: Colors.white), textAlign: TextAlign.center,),
              onTap: (){Navigator.push(tile.context, tile.nextPage);},
            ),
          ),
        ],
      ),
    );
  }
}