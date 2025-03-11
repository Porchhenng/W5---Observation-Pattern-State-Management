import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/EXERCISE-2/model/color_counter.dart';
import 'package:week5/EXERCISE-2/model/nav_notifier.dart';
import 'package:week5/EXERCISE-2/screen/color_tap_screen.dart';
import 'package:week5/EXERCISE-2/screen/statistic_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     print("this from home build");
    return Consumer<NavigationNotifier>(
      builder:
          (context, navNotifier, child) => Scaffold(
            body:
                navNotifier.currentIndex == 0
                    ? ColorTapsScreen()
                    : StatisticsScreen(),

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: navNotifier.currentIndex,
              onTap: navNotifier.setIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.tap_and_play),
                  label: 'Taps',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  label: 'Statistics',
                ),
              ],
            ),
          ),
    );
  }
}
