import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/EXERCISE-2/model/color_counter.dart';

class StatisticsScreen extends StatelessWidget {

  const StatisticsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("this from statistic build");
    return Consumer<ColorCounter>(builder: (context, value, child) =>  Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Red Taps: ${value.redCounter}', style: TextStyle(fontSize: 24)),
            Text('Blue Taps: ${value.blueCounter}', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    ));
  }
}
