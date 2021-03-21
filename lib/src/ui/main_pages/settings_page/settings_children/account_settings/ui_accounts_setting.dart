import 'package:flutter/material.dart';
import 'package:project1/config/app_theme.dart';

import '../ui_app_style.dart';

final items = [
  AccountsSettingsModel(name: 'Loại tài khoản', screen: AppStyleSettingUI()),
  AccountsSettingsModel(name: 'Cài đặt tài khoản', screen: AppStyleSettingUI()),
  AccountsSettingsModel(
      name: 'Loại tài khoản bị xoá', screen: AppStyleSettingUI()),
  AccountsSettingsModel(name: 'Tài khoản bị xoá', screen: AppStyleSettingUI()),
];

class AccountsSettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tài khoản'),
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
          for (var item in items)
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => item.screen));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 50,
                child: Text(item.name),
              ),
            ),
          Expanded(
              child: Container(
            color: Colors.grey[200],
          ))
        ],
      ),
    );
  }
}

class AccountsSettingsModel {
  String name;
  Widget screen;
  AccountsSettingsModel({this.name, this.screen});
}
