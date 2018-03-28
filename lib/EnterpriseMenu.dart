import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Materials/Tile.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Enterprise Menu',
    home: new EnterpriseMenu(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class EnterpriseMenu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;
//    final double paddingVertical = screenSize.width * 0.08;
//    final double paddingHorizontal = screenSize.width * 0.07;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('The Enterprise', style: new TextStyle(color: Colors.white),),
      ),

      backgroundColor: Colors.blue[100],
      body: new Container(
        margin: new EdgeInsets.all(distance),
        child: new Align(
          alignment: Alignment.center,
          child: new StaggeredGridView.count(
//            padding: new EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal,),
            primary: false,
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <Widget>[
              new TileItem(new Tile(Colors.blue, FontAwesomeIcons.user, 'Management and Control', null, null)),
              new TileItem(new Tile(Colors.purple[400], FontAwesomeIcons.handshake, 'Partners', null, null)),
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.sitemap, 'Organizational Structure', null, null)),
              new TileItem(new Tile(Colors.yellow[700], FontAwesomeIcons.thList, 'Participating Industries', null, null)),
              new TileItem(new Tile(Colors.grey, FontAwesomeIcons.mobileAlt, 'Products and Services', null, null)),
              new TileItem(new Tile(Colors.red, FontAwesomeIcons.wrench, 'System Operations', null, null)),
            ],

            staggeredTiles: const <StaggeredTile>[
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
            ],
          ),
        ),
      ),
    );
  }
}