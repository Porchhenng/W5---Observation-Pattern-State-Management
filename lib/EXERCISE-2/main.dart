import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/EXERCISE-2/model/color_counter.dart';
import 'package:week5/EXERCISE-2/model/nav_notifier.dart';
import 'package:week5/EXERCISE-2/screen/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ColorCounter()), ChangeNotifierProvider(create: (context) => NavigationNotifier()) ],
      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(body: Home()),
          ),
    ),
  );
}
