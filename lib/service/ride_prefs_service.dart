import 'package:week_3_blabla_project/repository/mock/mock_ride_preferences_repository.dart';

import '../model/ride_pref/ride_pref.dart';
import '../repository/ride_preferences_repository.dart';

////
///   This service handles:
///   - The past ride preferences
///   - The currennt ride preferences
///
///
abstract class RidePreferenceListener{

  void onPreferenceSelected(RidePreference selectedPreference);

}


class RidePrefService {
  // Static private instance
  static RidePrefService? _instance;

  // Access to past preferences
  final RidePreferencesRepository repository;

  // The current preference
  RidePreference? _currentPreference;

  ///
  /// Private constructor
  ///
  RidePrefService._internal(this.repository);

  ///
  /// Initialize
  ///
  static void initialize(RidePreferencesRepository repository) {
    if (_instance == null) {
      _instance = RidePrefService._internal(repository);
    } else {
      throw Exception("RidePreferencesService is already initialized.");
    }
  }

  ///
  /// Singleton accessor
  ///
  static RidePrefService get instance {
    if (_instance == null) {
		  throw Exception("RidePreferencesService is not initialized. Call initialize() first.");
		}
		return _instance!;
  }

  // Current preference
  RidePreference? get currentPreference {
    print('Get  current  pref : $_currentPreference');
    return _currentPreference;
  }

  void setCurrentPreference(RidePreference preference) {
    _currentPreference = preference;
    print('Set current pref to $_currentPreference');
    notifyListener();
  }

  // Past preferences
  List<RidePreference> getPastPreferences() {
    return repository.getPastPreferences();
  }

  void addPreference(RidePreference preference) {
    return repository.addPreference(preference);
  }

  final List<RidePreferenceListener> _listeners = [];

  void notifyListener(){
    for (var listener in _listeners){
      listener.onPreferenceSelected(_currentPreference!);
    }

  }
  void addListener(RidePreferenceListener listener){
      _listeners.add(listener);
  }

  
}
// Observers
class  ConsoleLogger implements RidePreferenceListener {
  @override
  void onPreferenceSelected(RidePreference selectedPreference) {
    print(selectedPreference);
  }
  
}

// Test