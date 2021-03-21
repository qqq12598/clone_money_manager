import 'package:flutter/material.dart';
import 'package:project1/config/app_theme.dart';

class StatisticsPageUI extends StatelessWidget {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Thu 100.000đ'),
    Tab(text: 'Chi 200.000đ'),
  ];
  @override
  build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppTheme.mainColor,
            bottom: TabBar(
              tabs: tabs,
              indicatorColor: Colors.white,
            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  child: Container()),
            ],
          ),
        ));
  }
}
