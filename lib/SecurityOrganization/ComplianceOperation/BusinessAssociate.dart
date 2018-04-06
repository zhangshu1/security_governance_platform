import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Materials/Tile.dart';
import '../../BlankPage.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Business Associate',
    home: new BusinessAssociate(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class BusinessAssociate extends StatefulWidget {
  final String associate;
  BusinessAssociate({Key key, this.associate}) : super(key: key);

  @override
  BusinessAssociateState createState() => new BusinessAssociateState(associate: associate);
}

class BusinessAssociateState extends State<BusinessAssociate> {
  final String associate;
  BusinessAssociateState({Key key, this.associate});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(associate),
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
              new TileItem(new Tile(Colors.pinkAccent, FontAwesomeIcons.users, 'Business / Organization info', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.idCard, 'Administration Process', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.lightBlue, FontAwesomeIcons.key, 'Access Control (PHI / PII)', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.amber, FontAwesomeIcons.tv, 'IT Systems', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.blue[700], FontAwesomeIcons.universalAccess, 'Control Operations', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.orange, FontAwesomeIcons.infoCircle, 'Incident Management', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
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