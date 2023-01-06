import 'dart:async';
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'reuseableCards.dart';
import "lists.dart";
import "reusableButtons.dart";

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
              debugPrint('index: $index');
              debugPrint('icon:  $rowFolderButtons');
              int buttonIndex = index - 0;
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    color: Colors.grey),
//                color: Colors.grey,
                child: Center(
                  child: ButtonCard(
                      buttonImage: rowFolderButtons[index].icon,
                      buttonName: rowFolderButtons[index].name),
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
                    style: TextStyle(color: Colors.white, fontSize: 80),
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
                        fontSize: 65,
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
                    child: Icon(Icons.backspace, color: Colors.black, size: 65),
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
                      style: TextStyle(fontSize: 65, color: Colors.black),
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
