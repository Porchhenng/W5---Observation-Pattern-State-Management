import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/EXERCISE-2/model/color_counter.dart';

class ColorTapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("this from color build");
    return Consumer<ColorCounter>(builder: (context, value, child) => Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Column(
        children: [
          ColorTap(
            type: CardType.red,
            tapCount: value.redCounter,
            onTap: value.incrementRed,
          ),
          ColorTap(
            type: CardType.blue,
            tapCount: value.blueCounter,
            onTap: value.incrementBlue,
          ),
        ],
      ),
    ));
  }

}
enum CardType { red, blue }


class ColorTap extends StatelessWidget {
  final CardType type;
  final int tapCount;
  final VoidCallback onTap;

  const ColorTap({
    super.key,
    required this.type,
    required this.tapCount,
    required this.onTap,
  });

  Color get backgroundColor => type == CardType.red ? Colors.red : Colors.blue;

   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 100,
        child: Center(
          child: Text(
            'Taps: $tapCount',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
