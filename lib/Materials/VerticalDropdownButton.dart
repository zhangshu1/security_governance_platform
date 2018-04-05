import 'package:flutter/material.dart';

class VerticalDropDownItem {
  String title;
  List<String> items;

  VerticalDropDownItem(this.title, this.items);
}

class VerticalDropDownButton extends StatefulWidget {
  final VerticalDropDownItem verticalDropDownItem;
  VerticalDropDownButton(this.verticalDropDownItem);

  @override
  VerticalDropDownButtonState createState() => new VerticalDropDownButtonState(verticalDropDownItem);
}

class VerticalDropDownButtonState extends State<VerticalDropDownButton> {
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedOption;
  final VerticalDropDownItem verticalDropDownItem;
  VerticalDropDownButtonState(this.verticalDropDownItem);

  @override
  void initState() {
    _dropDownMenuItems = buildDropDownMenuItems(verticalDropDownItem.items);
    _selectedOption = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List items) {
    List<DropdownMenuItem<String>> menuItems = new List();
    for(String item in items) {
      menuItems.add(new DropdownMenuItem(value: item, child: new Text(item),));
    }
    return menuItems;
  }

  void changedDropDownItem(String item) {
    setState((){
      _selectedOption = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Text(verticalDropDownItem.title),
          new SizedBox(width: 20.0,),
          new DropdownButton(
            value: _selectedOption,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          ),
        ],
      ),
    );
  }
}