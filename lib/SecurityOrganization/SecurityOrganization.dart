import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Materials/Tile.dart';
import 'package:security_governance_platform/SecurityOrganization/SecurityOperation/SecurityOperations.dart';
import 'SecurityLeadershipTeam/SecurityOrganizationLeadership.dart';
import 'Staff/Staff.dart';
import '../BlankPage.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Security Organization',
    home: new SecurityOrganization(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class SecurityOrganization extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Security Organization', style: new TextStyle(color: Colors.white),),
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
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.cube, 'Organization Structure', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.amber[700], FontAwesomeIcons.idBadge, 'Job/People', context, new MaterialPageRoute(builder: (_) => new Staff()))),
              new TileItem(new Tile(Colors.deepPurple, FontAwesomeIcons.users, 'Partners', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.lightBlue[600], FontAwesomeIcons.train, 'Security Leadership Team', context, new MaterialPageRoute(builder: (_) => new SecurityOrganizationLeadership()))),
              new TileItem(new Tile(Colors.deepOrangeAccent, FontAwesomeIcons.infoCircle, 'Security Operations', context, new MaterialPageRoute(builder: (_) => new SecurityOperations()))),
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.ambulance, 'Compliance Operations', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
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