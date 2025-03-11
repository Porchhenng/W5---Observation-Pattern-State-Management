import 'package:flutter/material.dart';
import 'package:week5/EXERCISE-1/dummy_data/dummy_data.dart';
import 'package:week5/EXERCISE-1/repository/mock/mock_location_repository.dart';
import 'package:week5/EXERCISE-1/screens/location_picker_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(child: LocationPickerScreen(initLocation: null)),
      ),
    ),
  );
}
