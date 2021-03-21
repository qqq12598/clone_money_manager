import 'package:flutter/material.dart';
import 'package:project1/src/ui/main_pages/ui_account_page.dart';
import 'package:project1/src/ui/main_pages/ui_statistics_page.dart';

import 'main_pages/daily_page/ui_daily_page.dart';
import 'main_pages/settings_page/ui_settings.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  static final List<Widget> _main_pages = <Widget>[
    DailyPageUI(),
    StatisticsPageUI(),
    AccountPageUI(),
    SettingsPageUI(),
  ];

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _main_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemSelected,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: 'Hằng ngày'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: 'Thống kê'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: 'Tài khoản'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Cài đặt'),
        ],
      ),
    );
  }

  _onItemSelected(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
