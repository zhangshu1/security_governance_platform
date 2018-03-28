import 'package:flutter/material.dart';
import 'Materials/MyExpansionPanelList.dart';

//void main() => runApp(
//  new MaterialApp(
//    title: 'Security Operations',
//    home: new SecurityOperations(),
//    theme: new ThemeData(primaryColor: Colors.blue[900]),
//  ),
//);

class SecurityOperations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: tabItems.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Security Operations'),
          bottom: new TabBar(tabs: tabItems.map((MyTabItem myTabItem) => myTabItem.title).toList()),
        ),

        body: new TabBarView(
          children: tabItems.map((MyTabItem myTabItem) => myTabItem.body).toList(),
        ),
      ),
    );
  }
}

class MyTabItem {
  final Text title;
  final Widget body;

  MyTabItem(this.title, this.body);
}

List<MyTabItem> tabItems = [
  new MyTabItem(new Text('Monitor Center'), monitorCenter),
  new MyTabItem(new Text('Response Center'), responseCenter),
];

//Monitor Center Page
Widget monitorCenter = new MyExpansionPanelList(
  items: [
    new ExpansionPanelItem(false, 'Work Responsibility', new Text('To be implemented')),
    new ExpansionPanelItem(false, 'Services', new Text('To be implemented')),
    new ExpansionPanelItem(false, 'Tools', new Text('To be implemented')),
    new ExpansionPanelItem(false, 'People', new Text('To be implemented')),
  ],
);

//Response Center Page
Widget responseCenter = new Text('To be implemented');