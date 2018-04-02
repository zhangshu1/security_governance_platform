import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Materials/Tile.dart';

class RiskManagementAgenda extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Risk Management Agenda'),
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
              new TileItem(new Tile(Colors.amber[700], FontAwesomeIcons.handPaper, 'Management', null, null)),
              new TileItem(new Tile(Colors.lightGreen, FontAwesomeIcons.plusCircle, 'Risk Profile', context, null)),
              new TileItem(new Tile(Colors.lightBlue[600], FontAwesomeIcons.streetView, 'Assets', null, null)),
              new TileItem(new Tile(Colors.amber[900], FontAwesomeIcons.wrench, 'Vulnerabilities', context, null)),
              new TileItem(new Tile(Colors.deepPurple[300], FontAwesomeIcons.checkSquareO, 'Compliance', context, null)),
              new TileItem(new Tile(Colors.grey[700], FontAwesomeIcons.fileAltO, 'Threats', null, null)),
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.lock, 'Access Control', null, null)),
              new TileItem(new Tile(Colors.red, FontAwesomeIcons.signInAlt, 'Incidents', null, null)),
            ],

            staggeredTiles: const <StaggeredTile>[
              const StaggeredTile.count(2, 2),
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