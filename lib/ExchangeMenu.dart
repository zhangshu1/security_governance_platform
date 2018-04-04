import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Materials/Tile.dart';
import 'SelectEnterprise.dart';
import 'BlankPage.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Exchange Menu',
    home: new ExchangeMenu(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class ExchangeMenu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('The Exchange', style: new TextStyle(color: Colors.white),),
      ),

      backgroundColor: Colors.blue[100],
      body: new Container(
        margin: new EdgeInsets.all(distance),
        child: new Align(
          alignment: Alignment.center,
          child: new StaggeredGridView.count(
            primary: false,
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <Widget>[
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.connectdevelop, 'Management and Control', context, new MaterialPageRoute(builder: (_) => new SelectEnterprise()))),
              new TileItem(new Tile(Colors.amber[700], FontAwesomeIcons.sitemap, 'The Services', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.deepPurple[400], FontAwesomeIcons.database, 'Data Dictionary', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.teal[300], FontAwesomeIcons.users, 'Participating Enterprises', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.amber[900], FontAwesomeIcons.whmcs, 'System Operations', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.limeAccent[400], FontAwesomeIcons.industry, 'Participating Industries', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
            ],

            staggeredTiles: const <StaggeredTile>[
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