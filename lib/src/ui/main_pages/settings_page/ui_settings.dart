import 'package:flutter/material.dart';
import 'package:project1/config/app_theme.dart';
import 'package:project1/src/models/model_setting.dart';

class SettingsPageUI extends StatelessWidget {
  @override
  build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.mainColor,
        title: Text('Cài đặt'),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 100),
          alignment: Alignment.center,
          height: double.infinity,
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              for (var item in SettingModel.data)
                GestureDetector(
                  onTap: () {
                    _onSettingItemClicked(context, item.screen);
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 0),
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(100)),
                            child: item.icon),
                        Container(
                            alignment: Alignment.center,
                            width: widthScreen / 6,
                            child: Text(
                              item.name,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                )
            ],
          )),
    );
  }

  _onSettingItemClicked(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
