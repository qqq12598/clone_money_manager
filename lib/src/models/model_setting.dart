import 'package:flutter/material.dart';
import 'package:project1/src/ui/main_pages/settings_page/settings_children/account_settings/ui_accounts_setting.dart';
import 'package:project1/src/ui/main_pages/settings_page/settings_children/ui_app_style.dart';

class SettingModel {
  Widget icon;
  String name;
  Widget screen;

  SettingModel({this.icon, this.name, this.screen});

  static final data = [
    new SettingModel(icon: Icon(Icons.settings), name: 'Cài đặt'),
    new SettingModel(
        icon: Icon(Icons.account_balance),
        name: 'Tài khoản',
        screen: AccountsSettingsUI()),
    new SettingModel(icon: Icon(Icons.lock), name: 'Mật khẩu'),
    new SettingModel(icon: Icon(Icons.computer), name: 'Máy tính'),
    new SettingModel(icon: Icon(Icons.backup), name: 'Sao lưu'),
    new SettingModel(
        icon: Icon(Icons.format_paint),
        name: 'Phong cách',
        screen: AppStyleSettingUI()),
    new SettingModel(icon: Icon(Icons.mail), name: 'Thông tin phản hồi'),
    new SettingModel(icon: Icon(Icons.help), name: 'Trợ giúp'),
    new SettingModel(icon: Icon(Icons.link_rounded), name: 'Giới thiệu'),
  ];
}
