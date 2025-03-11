import 'package:week5/EXERCISE-1/model/ride/locations.dart';
import 'package:week5/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:week5/EXERCISE-1/repository/locationRepository.dart';
import 'package:week5/EXERCISE-1/repository/ride_preferences_repository.dart';

import '../../dummy_data/dummy_data.dart';

class MockLocationRepository extends LocationRepository {

  @override
  List<Location> getLocation() {

    return cambodiaLocations;
  }


}
