import 'package:flutter/material.dart';
import 'constants.dart';

class ButtonCard extends StatelessWidget {
  ButtonCard({required this.buttonImage, required this.buttonName});

  final String buttonName;
  final IconData buttonImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
//        SizedBox(height: 15.0),
        Icon(
          buttonImage,
          size: 30.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Text(buttonName, style: kLabelTextStyle),
        ),
      ],
    );
  }
}
