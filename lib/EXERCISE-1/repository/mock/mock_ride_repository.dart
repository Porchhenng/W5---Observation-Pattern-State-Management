import 'package:week5/EXERCISE-1/dummy_data/dummy_data.dart';
import 'package:week5/EXERCISE-1/model/ride/locations.dart';
import 'package:week5/EXERCISE-1/model/ride/ride.dart';
import 'package:week5/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:week5/EXERCISE-1/repository/ride_repository.dart';
import 'package:week5/EXERCISE-1/service/rides_service.dart';

class MockRideRepository extends RideRepository {
  @override
  List<Ride> getRides({required RidePreference ridePref, RideFilters? filter}) {
    List<Ride> testFilter = [];
    for (Ride battambangRide in battambangRides) {
      if (battambangRide.departureLocation == ridePref.departure &&
          battambangRide.arrivalLocation == ridePref.arrival &&
          battambangRide.remainingSeats >= ridePref.requestedSeats) {
        if (filter != null) {
          if (battambangRide.acceptPets == filter.acceptPets) {
            testFilter.add(battambangRide);
          }
        } else {
          testFilter.add(battambangRide);
        }
      }
    }
    return testFilter;
  }
}
