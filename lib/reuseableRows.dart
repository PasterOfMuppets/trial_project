import 'package:flutter/material.dart';
import 'reuseableButtons.dart';

class ReuseableGrid extends StatefulWidget {
  ReuseableGrid(
      {required this.colour, required this.cardList, required this.title});

  final Color colour;
  final List cardList;
  final String title;

  _ReuseableGridState createState() => _ReuseableGridState();
}

class _ReuseableGridState extends State<ReuseableGrid> {
  @override
  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
          child: ReusableButton(
            colour: widget.colour,
            cardChild: ModuleCard(
              moduleName: widget.cardList[i].name,
              moduleImage: widget.cardList[i].icon,
            ),
            onPress: () {
              print(widget.cardList[i].pageRoute);
              Navigator.pushNamed(context, widget.cardList[i].pageRoute);
            },
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        childAspectRatio: (2 / 1.2),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: _buildGridTileList(widget.cardList.length),
      ),
    );
  }
}
