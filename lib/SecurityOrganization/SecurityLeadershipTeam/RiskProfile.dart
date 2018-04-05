import 'package:flutter/material.dart';
import 'ControlOnRisk.dart';

void main() => runApp(new MaterialApp(
  title: 'Risk Rrofile',
  home: new RiskProfile(),
  theme: new ThemeData(primaryColor: Colors.blue[900]),
));

class RiskProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Risk Profile'),
      ),

      body: new ListView(
        padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        children: <Widget>[
          new Container(
            child: new Text('Risk Profile', style: new TextStyle(color: Colors.green, fontSize: 20.0),),
          ),

          new Divider(color: Colors.grey),

          //instruction banner
          new Container(
            width: width - 40.0,
            height: 40.0,
//            padding: new EdgeInsets.symmetric(horizontal: 20.0),
            child: new Row(
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(right: 10.0),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        width: 15.0,
                        height: 7.0,
                        color: Colors.red,
                        margin: new EdgeInsets.only(right: 10.0),
                      ),
                      new Text('High'),
                    ],
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 10.0),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        width: 15.0,
                        height: 7.0,
                        color: Colors.orange,
                        margin: new EdgeInsets.only(right: 10.0),
                      ),
                      new Text('Medium'),
                    ],
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 10.0),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        width: 15.0,
                        height: 7.0,
                        color: Colors.teal,
                        margin: new EdgeInsets.only(right: 10.0),
                      ),
                      new Text('Low'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //head row
          new Table(
            children: [
              new TableRow(
                children: new List.generate(5, (int index) {
                  int num = index + 1;
                  return new TableCell(
                    child: new Text('Risk $num'),
                  );
                }),
              ),
            ],
          ),

          new Table(
            border: new TableBorder.all(color: Colors.grey, style: BorderStyle.solid),
            children: new List.generate(10, (int rowNum) {
              return new TableRow(
                children: new List.generate(5, (int colNum) {
                  return new TableCell(
                    child: new Container(
//                      color: getColor(rowNum, colNum),
                      child: new RaisedButton(
                        color: getColor(rowNum, colNum),
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (_) => new ControlOnRisk()));},
                      ),
                    ),
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }

  Color getColor(int rowNum, int colNum){
    if (rowNum == 0 && colNum == 4 || rowNum == 2 && colNum == 2 || rowNum == 3 && colNum == 0 || rowNum == 6 && colNum == 3 || rowNum == 9 && colNum == 2) {
      return Colors.red;
    } else if (rowNum == 0 && colNum == 1 || rowNum == 0 && colNum == 3 || rowNum == 1 && colNum == 0 || rowNum == 2 && colNum == 1|| rowNum == 3 && colNum == 4 ||
        rowNum == 4 && colNum == 2 || rowNum == 5 && colNum == 3 || rowNum == 6 && colNum == 0 || rowNum == 8 && colNum == 1 || rowNum == 9 && colNum == 0){
      return Colors.orange;
    } else if (rowNum == 1 && colNum == 1 || rowNum == 1 && colNum == 3 || rowNum == 3 && colNum == 1|| rowNum == 3 && colNum == 2|| rowNum == 3 && colNum == 3 ||
        rowNum == 4 && colNum == 1 || rowNum == 4 && colNum == 4 || rowNum == 5 && colNum == 0 || rowNum == 6 && colNum == 2 || rowNum == 7 && colNum == 0 ||
        rowNum == 7 && colNum == 1 || rowNum == 7 && colNum == 4 || rowNum == 8 && colNum == 2 || rowNum == 9 && colNum == 1 || rowNum == 9 && colNum == 3 ||
        rowNum == 9 && colNum == 4) {
      return Colors.teal;
    } else {
      return Colors.white;
    }
  }
}