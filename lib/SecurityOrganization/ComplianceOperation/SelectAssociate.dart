import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'BusinessAssociate.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Compliance Operation',
    home: new SelectAssociate(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class SelectAssociate extends StatefulWidget {

  @override
  SelectAssociateState createState() => new SelectAssociateState();
}

class SelectAssociateState extends State<SelectAssociate> {
  Widget buildListTile(BuildContext context, String associate) {
    return new ListTile(
      leading: new Icon(FontAwesomeIcons.user),
      title: new Text(associate),
      onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (_) => new BusinessAssociate(associate: associate,)));},
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> associates = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3', 'D1', 'D2', 'D3'];
    Iterable<Widget> listTiles = associates.map((String associate){
      return buildListTile(context, associate);
    });
    listTiles = ListTile.divideTiles(context: context, tiles: listTiles);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Associate'),
      ),

      body: new ListView(
        padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        children: listTiles.toList(),
      ),
    );
  }
}