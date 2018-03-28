import 'package:flutter/material.dart';

class ExpansionPanelItem {
  bool isExpanded;
  final String title;
  final Widget body;

  ExpansionPanelItem(this.isExpanded, this.title, this.body);
}

class MyExpansionPanelList extends StatefulWidget {
  List<ExpansionPanelItem> items;
  MyExpansionPanelList({Key key, this.items}) : super(key: key); // Without this line,

  @override
  MyExpansionPanelListState createState() => new MyExpansionPanelListState(items);
}

class MyExpansionPanelListState extends State<MyExpansionPanelList> {
  final List<ExpansionPanelItem> items;
  MyExpansionPanelListState(this.items);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(10.0),
          child: new ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                items[index].isExpanded = !items[index].isExpanded;
              });
            },
            children: items.map((ExpansionPanelItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new ListTile(
                    title: new Text(item.title),
                  );
                },
                isExpanded: item.isExpanded,
                body: item.body,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}