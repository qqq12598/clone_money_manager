import 'package:flutter/material.dart';
import 'package:project1/config/app_theme.dart';

final List colors = [
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.blue,
  Colors.black,
];

class AppStyleSettingUI extends StatefulWidget {
  @override
  _AppStyleSettingUIState createState() => _AppStyleSettingUIState();
}

class _AppStyleSettingUIState extends State<AppStyleSettingUI> {
  int _selectedColorIndex = 2;
  int _selectedStyleIndex = 2;
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phong cách'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: AppTheme.mainColor,
      ),
      body: Column(
        children: <Widget>[
          _buildRadioItem(
              0,
              Icon(
                Icons.sync,
                color: Colors.grey,
              ),
              'Chế độ hệ thống'),
          _buildRadioItem(
              1,
              Icon(
                Icons.nights_stay,
                color: Colors.grey,
              ),
              'Chế độ tối'),
          _buildRadioItem(
              2,
              Icon(
                Icons.lightbulb,
                color: Colors.grey,
              ),
              'Chế độ sáng'),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                for (var i = 0; i < colors.length; i++)
                  _buildColorButton(i, colors[i]),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildRadioItem(int index, Icon icon, String name) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: icon,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Radio(
                value: index,
                groupValue: _selectedStyleIndex,
                onChanged: (v) {
                  setState(() {
                    _selectedStyleIndex = v;
                  });
                }),
          )
        ],
      ),
    );
  }

  _buildColorButton(int index, Color color) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(2),
        child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: _selectedColorIndex == index
              ? Border.all(color: color, width: 2)
              : null,
        ),
      ),
      onTap: () {
        print(color.toString());
        setState(() {
          _selectedColorIndex = index;
          AppTheme.mainColor = color;
        });
      },
    );
  }
}
