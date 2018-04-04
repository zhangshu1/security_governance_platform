import 'package:flutter/material.dart';
import '../../Materials/StaffDataTable.dart';
import '../../Bean/Person.dart';

class LeadershipTeam extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Leadership Team'),
      ),

      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Container(child: new Text('Leadership Team'),),
                new StaffDataTable(new TableItem(3, member)),
                new StaffDataTable(new TableItem(14, staff)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Person> member = [
  new Person('Citizen Kane', 'Job', 'Job Type'),
  new Person('Clark Kant', 'Job', 'Job Type'),
  new Person('Shelden Cooper', 'Job', 'Job Type'),
];

List<Person> staff = [
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