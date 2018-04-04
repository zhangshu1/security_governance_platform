import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Materials/Tile.dart';
import 'BlankPage.dart';
import 'package:security_governance_platform/SecurityOrganization/SecurityOrganization.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Enterprise Menu',
    home: new EnterpriseMenu(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class EnterpriseMenu extends StatefulWidget {
  final String enterpriseName;
  EnterpriseMenu({Key key, this.enterpriseName}) : super(key:key); //receive parameter from last page

  @override
  EnterpriseMenuState createState() => new EnterpriseMenuState(enterpriseName: enterpriseName);
}

class EnterpriseMenuState extends State<EnterpriseMenu>{
  final String enterpriseName;
  EnterpriseMenuState({Key key,this.enterpriseName});

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.12;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('$enterpriseName', style: new TextStyle(color: Colors.white),),
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
              new TileItem(new Tile(Colors.blue, FontAwesomeIcons.user, 'Management and Control', context, new MaterialPageRoute(builder: (_) => new SecurityOrganization()))),
              new TileItem(new Tile(Colors.purple[400], FontAwesomeIcons.handshake, 'Partners', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.green, FontAwesomeIcons.sitemap, 'Organizational Structure', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.yellow[700], FontAwesomeIcons.thList, 'Participating Industries', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.grey, FontAwesomeIcons.mobileAlt, 'Products and Services', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
              new TileItem(new Tile(Colors.red, FontAwesomeIcons.wrench, 'System Operations', context, new MaterialPageRoute(builder: (_) => new BlankPage()))),
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