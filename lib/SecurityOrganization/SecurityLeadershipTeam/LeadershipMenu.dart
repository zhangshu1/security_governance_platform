import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../Materials/Tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:security_governance_platform/SecurityOrganization/SecurityLeadershipTeam/RiskManagementAgenda.dart';
import '../../BlankPage.dart';
import 'LeadershipTeam.dart';

class LeadershipMenu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Leadership'),
      ),

      backgroundColor: Colors.blue[100],
      body: new Padding(
        padding: new EdgeInsets.all(distance),
        child: new Align(
          alignment: Alignment.center,
          child: new StaggeredGridView.count(
//            padding: new EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal,),
            primary: false,
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <Widget>[
              new TileItem(new Tile(Colors.blue, FontAwesomeIcons.userCircle, 'Leadership Team', context, new MaterialPageRoute(builder: (_) => new LeadershipTeam()))),
              new TileItem(new Tile(Colors.orange, FontAwesomeIcons.save, 'Risk Management Agenda', context, new MaterialPageRoute(builder: (_) => new RiskManagementAgenda()))),
              new TileItem(new Tile(Colors.yellow[800], FontAwesomeIcons.handPeace, 'Compliance Agenda', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.deepPurple[400], FontAwesomeIcons.thLarge, 'Strategic Agenda', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.grey[800], FontAwesomeIcons.fileAlt, 'Reporting Agenda', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.wrench, 'Operational Agenda', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.red, FontAwesomeIcons.signInAlt, 'Ongoing Concerns', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
            ],

            staggeredTiles: const <StaggeredTile>[
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(2, 2),
              const StaggeredTile.count(4, 2),
            ],
          ),
        ),
      ),
    );
  }
}