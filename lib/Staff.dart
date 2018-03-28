import 'package:flutter/material.dart';
import 'Bean/Person.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Staff',
    home: new Staff(),
    theme: new ThemeData(primaryColor: Colors.blue[900]),
  ),
);

class Staff extends StatelessWidget {
  final staffDataSouce = new StaffDataSource();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Job / People'),
      ),

      body: new ListView(
        children: <Widget>[
          new PaginatedDataTable(
            header: new Text('Staff', style: new TextStyle(color: Colors.green),),
            columns: <DataColumn>[
              new DataColumn(label: new Text('Name', style: new TextStyle(fontWeight: FontWeight.bold),)),
              new DataColumn(label: new Text('Job', style: new TextStyle(fontWeight: FontWeight.bold),)),
              new DataColumn(label: new Text('Job Type', style: new TextStyle(fontWeight: FontWeight.bold),)),
            ],
            source: staffDataSouce,
          )
        ],
      ),
    );
  }
}

//Just a sample here, may need to be binded with Json
class StaffDataSource extends DataTableSource {
  final List<Person> staffData = <Person>[
    new Person('Jimmy Yee', 'Job 1', 'Type 1'),
    new Person('Oliver Queue', 'Job 2', 'Type 2'),
    new Person('Peter Parker', 'Job 3', 'Type 3'),
    new Person('Harry Flashman', 'Job 4', 'Type 4'),
    new Person('Tony Stack', 'Job 5', 'Type 5'),
    new Person('Bruce Wayne', 'Job 6', 'Type 6'),
    new Person('Taylor Garica', 'Job 7', 'Type 7'),
    new Person('King Lee', 'Job 8', 'Type 8'),
    new Person('Scott Adams', 'Job 9', 'Type 9'),
    new Person('Baker Conzalez', 'Job 10', 'Type 10'),
    new Person('Murphy Bailey', 'Job 11', 'Type 11'),
    new Person('Torres Gray', 'Job 12', 'Type 12'),
    new Person('James Sanders', 'Job 13', 'Type 13'),
    new Person('Nick Young', 'Job 14', 'Type 14'),
  ];

  int selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= staffData.length)
      return null;

    final person = staffData[index];

    return new DataRow.byIndex(
      index: index,
      selected: person.selected,
      onSelectChanged: (bool value){
        if (person.selected != value) {
          selectedCount += value ? 1 : -1;
          assert(selectedCount >= 0);
          person.selected = value;
          notifyListeners();

        }
      },

      cells: <DataCell>[
        new DataCell(new Text(person.name)),
        new DataCell(new Text(person.job)),
        new DataCell(new Text(person.jobType)),
      ],
    );
  }

  @override
  int get rowCount => staffData.length;

  @override
  bool get isRowCountApproximate => true;

  @override
  int get selectedRowCount => selectedCount;
}