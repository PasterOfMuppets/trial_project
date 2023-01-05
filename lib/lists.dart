import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonInfo {
  String name;
  IconData icon;
  String pageRoute;

  ButtonInfo(this.name, this.icon, this.pageRoute);
}

class ButtonRowInfo {
  String name;
  IconData icon;
  String pageRoute;
  String duration;

  ButtonRowInfo(this.name, this.icon, this.pageRoute, this.duration);
}

List<ButtonInfo> rowFolderButtons = [
  ButtonInfo('Help', FontAwesomeIcons.font, 'tbd'),
  ButtonInfo('Reading', FontAwesomeIcons.book, 'tbd'),
  ButtonInfo('Calendar', FontAwesomeIcons.book, 'tbd',
  ButtonInfo('Numbers', FontAwesomeIcons.book, 'tbd'),
  ButtonInfo('People', FontAwesomeIcons.book, 'tbd'),
  ButtonInfo('Food and Drink', FontAwesomeIcons.book, 'tbd'),
  ButtonInfo('Play', FontAwesomeIcons.font, 'tbd'),
  ButtonInfo('Home', FontAwesomeIcons.font, 'tbd'),
  ButtonInfo('Extra', FontAwesomeIcons.globe, 'tbd'),
  ButtonInfo('Draw', FontAwesomeIcons.palette, 'tbd'),
  ButtonInfo('Search', FontAwesomeIcons.globe, 'tbd'),
];

