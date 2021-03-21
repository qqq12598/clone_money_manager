import 'package:flutter/material.dart';
import 'package:project1/config/app_theme.dart';

final List<Tab> tabs = <Tab>[
  Tab(text: 'Hằng ngày'),
  Tab(text: 'Ngày'),
  Tab(text: 'Tuần'),
  Tab(text: 'Tháng'),
  Tab(text: 'Năm'),
];

class DailyPageUI extends StatelessWidget {
  @override
  build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: widthScreen / 3,
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Text('Thu'),
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
                          Text('Chi'),
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
        ));
  }
}
