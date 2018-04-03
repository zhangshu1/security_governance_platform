import 'package:flutter/material.dart';

class MyDropDownItem {
  String title;
  List<String> items;

  MyDropDownItem(this.title, this.items);
}

class MyDropDownButton extends StatefulWidget {
  final MyDropDownItem myDropDownItem;
  MyDropDownButton(this.myDropDownItem);

  @override
  MyDropDownButtonState createState() => new MyDropDownButtonState(myDropDownItem);
}

class MyDropDownButtonState extends State<MyDropDownButton> {
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedOption;
  final MyDropDownItem myDropDownItem;
  MyDropDownButtonState(this.myDropDownItem);

  @override
  void initState() {
    _dropDownMenuItems = buildDropDownMenuItems(myDropDownItem.items);
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
      child: new Row(
        children: <Widget>[
          new Text(myDropDownItem.title),
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