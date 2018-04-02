import 'package:flutter/material.dart';

class TwoColumnItem {
  String firstCol;
  String secCol;

  TwoColumnItem(this.firstCol, this.secCol);
}

class TwoColumnDataTable extends StatelessWidget {
  final int rowNum;
  final String colName1;
  final String colName2;
  final List<TwoColumnItem > items;
  TwoColumnDataTable(this.rowNum, this.colName1, this.colName2, this.items);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.all(0.0),
      child: new Column(
        children: <Widget>[
          //head row
          new Table(
            columnWidths: const <int, TableColumnWidth> {
              0: const FixedColumnWidth(180.0),
              1: const FixedColumnWidth(200.0),
            },
            children: [
              new TableRow(
                children: [
                  new TableCell(child: new Text(colName1, style: new TextStyle(height: 3.0, fontWeight: FontWeight.bold))),
                  new TableCell(child: new Text(colName2, style: new TextStyle(height: 3.0, fontWeight: FontWeight.bold))),
                ],
              ),
            ],
          ),
          //content
          new Table(
            columnWidths: const <int, TableColumnWidth> {
              0: const FixedColumnWidth(200.0),
              1: const FixedColumnWidth(200.0),
            },
            children: new List.generate(rowNum, (int index) {
              return new TableRow(
                decoration: new BoxDecoration(color: getColor(index)),
                children: [
                  new TableCell(child: new InkWell(
                    child: new Text(items[index].firstCol, style: new TextStyle(height: 3.0, decoration: TextDecoration.underline)),
                    onTap: null,
                  )),
                  new TableCell(child: new Text(items[index].secCol, style: new TextStyle(height: 3.0))),
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