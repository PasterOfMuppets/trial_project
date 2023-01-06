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
  ButtonInfo('Calendar', FontAwesomeIcons.calendarWeek, 'tbd'),
  ButtonInfo('Numbers', FontAwesomeIcons.hashtag, 'tbd'),
  ButtonInfo('People', FontAwesomeIcons.personBooth, 'tbd'),
  ButtonInfo('Food and Drink', FontAwesomeIcons.userFriends, 'tbd'),
  ButtonInfo('Play', FontAwesomeIcons.prescriptionBottleAlt, 'tbd'),
  ButtonInfo('Home', FontAwesomeIcons.home, 'tbd'),
  ButtonInfo('Extra', FontAwesomeIcons.globe, 'tbd'),
  ButtonInfo('Draw', FontAwesomeIcons.palette, 'tbd'),
  ButtonInfo('Search', FontAwesomeIcons.search, 'tbd'),
];

List<ButtonInfo> rowCommButtons = [
  ButtonInfo('I', FontAwesomeIcons.smile, 'tbd'),
  ButtonInfo('See', FontAwesomeIcons.eye, 'tbd'),
  ButtonInfo('Need', FontAwesomeIcons.handPointLeft, 'tbd'),
  ButtonInfo('Yes', FontAwesomeIcons.thumbsUp, 'tbd'),
  ButtonInfo('No', FontAwesomeIcons.thumbsDown, 'tbd'),
  ButtonInfo('More', FontAwesomeIcons.handsHelping, 'tbd'),
  ButtonInfo('Done', FontAwesomeIcons.handSpock, 'tbd'),
  ButtonInfo('Please', FontAwesomeIcons.handSparkles, 'tbd'),
  ButtonInfo('Thank You', FontAwesomeIcons.globe, 'tbd'),
  ButtonInfo('I drew', FontAwesomeIcons.palette, 'tbd'),
  ButtonInfo('What did you draw?', FontAwesomeIcons.search, 'tbd'),
];
