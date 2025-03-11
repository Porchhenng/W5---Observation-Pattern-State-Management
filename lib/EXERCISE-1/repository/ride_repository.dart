import 'package:week5/EXERCISE-1/model/ride/ride.dart';
import 'package:week5/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:week5/EXERCISE-1/service/rides_service.dart';

abstract class RideRepository {
  List <Ride> getRides({required RidePreference ridePref, RideFilters? filter});
}
