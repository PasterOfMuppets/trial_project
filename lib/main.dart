import 'dart:html';

import 'package:flutter/material.dart';
import 'lists.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 11,
        children: List.generate(
          132,
          (index) {
            if (index >= 0 && index < 11) {
              List<Map<String, dynamic>> _buttons = [
                {'label': 'Help', 'icon': Icons.help},
                {'label': 'Reading', 'icon': Icons.book},
                {'label': 'Calendar', 'icon': Icons.calendar_month},
                {'label': 'Number', 'icon': Icons.looks_one},
                {'label': 'Number', 'icon': Icons.looks_two},
                {'label': 'People', 'icon': Icons.people},
                {'label': 'Group', 'icon': Icons.group},
              ];

              int buttonIndex = index;
              if (buttonIndex < _buttons.length) {
                return Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(_buttons[buttonIndex]['icon']),
                        SizedBox(width: 10),
                        Text(_buttons[buttonIndex]['label']),
                      ],
                    ),
                  ),
                );
              }
            }
            if (index == 11) {
              return Container(
                color: Colors.grey,
                child: Center(
                  child: Text(
                    '11',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }
            if (index >= 44 && index < 55) {
              // Row 4
              return Container(
                color: Colors.grey,
                child: Center(
                  child: Text(
                    '${index - 44}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            } else if (index >= 55 && index < 66) {
              // Row 5
              List<String> colorNames = [
                'Red',
                'Yellow',
                'Blue',
                'Green',
                'Orange',
                'Pink',
                'Purple',
                'Brown',
                'Gray',
                'Black',
                'White',
              ];
              int colorIndex = index - 55;
              return Container(
                color: getColor(colorNames[colorIndex]),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    colorNames[colorIndex],
                    style: TextStyle(
                        color: colorNames[colorIndex] == 'Black'
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              );
            } else if (index >= 66 && index < 77) {
              // Row 7
              if (index == 76) {
                // Backspace button
                return Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(
                      Icons.backspace,
                      color: Colors.black,
                    ),
                  ),
                );
              } else {
                List<String> buttons = [
                  'q',
                  'w',
                  'e',
                  'r',
                  't',
                  'y',
                  'u',
                  'i',
                  'o',
                  'p',
                  'backspace',
                ];
                int buttonIndex = index - 66;
                return Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(
                      buttons[buttonIndex],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
              }
            } else {
              // Other rows
              return Container();
            }
          },
        ),
      ),
    );
  }
}

Color getColor(String colorName) {
  switch (colorName) {
    case 'Red':
      return Colors.red;
    case 'Yellow':
      return Colors.yellow;
    case 'Blue':
      return Colors.blue;
    case 'Green':
      return Colors.green;
    case 'Orange':
      return Colors.orange;
    case 'Pink':
      return Colors.pink;
    case 'Purple':
      return Colors.purple;
    case 'Brown':
      return Colors.brown;
    case 'Gray':
      return Colors.grey;
    case 'Black':
      return Colors.black;
    case 'White':
      return Colors.white;
    default:
      return Colors.transparent;
  }
}
