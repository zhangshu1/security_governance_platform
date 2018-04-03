import 'package:flutter/material.dart';
import '../Bean/Person.dart';
import '../SecurityLeadershipTeam/LeadershipTeam.dart';

class TableItem {
  int rowNum;
  List<Person> staff;

  TableItem(this.rowNum, this.staff);
}

class StaffDataTable extends StatelessWidget {
  final TableItem tableItem;
  StaffDataTable(this.tableItem);

  @override
  Widget build(BuildContext context) {

    return new Padding(
      padding: new EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new Container(
            child: new Text('Header'),
          ),

          //head row
          new Table(
            columnWidths: const <int, TableColumnWidth> {
              0: const FixedColumnWidth(150.0),
              1: const FixedColumnWidth(100.0),
              2: const FixedColumnWidth(110.0),
            },
            children: [
              new TableRow(
                children: [
                  new TableCell(child: new Text('Name', style: new TextStyle(height: 3.0, fontWeight: FontWeight.bold))),
                  new TableCell(child: new Text('Job', style: new TextStyle(height: 3.0, fontWeight: FontWeight.bold))),
                  new TableCell(child: new Text('Job Type', style: new TextStyle(height: 3.0, fontWeight: FontWeight.bold))),
                ],
              ),
            ],
          ),
          //content
          new Table(
            columnWidths: const <int, TableColumnWidth> {
              0: const FixedColumnWidth(150.0),
              1: const FixedColumnWidth(100.0),
              2: const FixedColumnWidth(110.0),
            },
            children: new List.generate(tableItem.rowNum, (int index) {
              return new TableRow(
                decoration: new BoxDecoration(color: getColor(index)),
                children: [
                  new TableCell(child: new InkWell(
                    child: new Text(tableItem.staff[index].name, style: new TextStyle(height: 3.0, decoration: TextDecoration.underline)),
                    onTap: (){Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new LeadershipTeam()));},
                  )),
                  new TableCell(child: new Text(tableItem.staff[index].job, style: new TextStyle(height: 3.0))),
                  new TableCell(child: new Text(tableItem.staff[index].jobType, style: new TextStyle(height: 3.0))),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  //define color
  Color getColor(index) {
    if(index % 2 == 0) {
      return Colors.grey[300];
    } else {
      return null;
    }
  }
}