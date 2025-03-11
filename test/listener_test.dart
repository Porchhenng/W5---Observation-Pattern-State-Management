import 'package:week5/EXERCISE-1/dummy_data/dummy_data.dart';
import 'package:week5/EXERCISE-1/model/ride/ride.dart';
import 'package:week5/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:week5/EXERCISE-1/repository/mock/mock_ride_preferences_repository.dart';
import 'package:week5/EXERCISE-1/repository/mock/mock_ride_repository.dart';
import 'package:week5/EXERCISE-1/service/ride_prefs_service.dart';



void main (){
  
  ConsoleLogger consoleLogger = new ConsoleLogger();

  RidePrefService.initialize(MockRidePreferencesRepository());

  RidePrefService.instance.addListener(consoleLogger);

  RidePrefService.instance.setCurrentPreference(RidePreference
  (departure: cambodiaLocations[2], 
  departureDate: DateTime.now(), 
  arrival: cambodiaLocations[0], 
  requestedSeats: 1));
}