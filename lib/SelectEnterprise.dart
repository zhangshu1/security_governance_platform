import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'EnterpriseMenu.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Select Enterprise',
    home: new SelectEnterprise(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class SelectEnterprise extends StatefulWidget {

  @override
  SelectEnterpriseState createState() => new SelectEnterpriseState();
}

class SelectEnterpriseState extends State<SelectEnterprise> {

  //work as adapter (also kind of a framwork)
  Widget buildListTile(BuildContext context, String enterpriseName) {
    return new ListTile(
      leading: new Icon(FontAwesomeIcons.user),
      title: new Text(enterpriseName),
      //jump with parameter
      onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (_) => new EnterpriseMenu(enterpriseName: enterpriseName,)));},
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> enterpriseNames = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3'];
    //pass and map parameters
    Iterable<Widget> ListTiles = enterpriseNames.map((String enterpriseName) {
      return buildListTile(context, enterpriseName);
    });

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Select Enterprise'),
      ),

      body: new ListView(
        padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        children: ListTiles.toList(),
      ),
    );
  }
}