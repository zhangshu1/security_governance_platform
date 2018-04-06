import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Materials/Tile.dart';
import '../../BlankPage.dart';
import 'SelectAssociate.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Compliance Operation',
    home: new ComplianceOperation(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class ComplianceOperation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Compliance Operation'),
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
              new TileItem(new Tile(Colors.amber[700], FontAwesomeIcons.user, 'Business Associates', context, new MaterialPageRoute(builder: (_) => new SelectAssociate()))),
              new TileItem(new Tile(Colors.lightGreen, FontAwesomeIcons.universalAccess, 'Access Control', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.pinkAccent, FontAwesomeIcons.angleDoubleRight, 'Process Control', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.purple, FontAwesomeIcons.handPaper, 'Breach Management', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.blue, FontAwesomeIcons.cog, 'IT Systems', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.amber, FontAwesomeIcons.fileAltO, 'Policy Management', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
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