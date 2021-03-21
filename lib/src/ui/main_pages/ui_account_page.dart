import 'package:flutter/material.dart';
import 'package:project1/config/app_theme.dart';

class AccountPageUI extends StatelessWidget {
  @override
  build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.mainColor,
        title: Text('Tài khoản'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: widthScreen / 3,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text('Tài sản'),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Container(
                  width: widthScreen / 3,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text('Khoản nợ'),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ),
                Container(
                  width: widthScreen / 3,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[Text('Cộng'), Text('0')],
                  ),
                ),
              ],
            ),
          ),
          // TabBarView(),
        ],
      ),
    );
  }
}
