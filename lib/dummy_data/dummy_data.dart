import '../model/ride/locations.dart';
import '../model/ride/ride.dart';
import '../model/ride_pref/ride_pref.dart';
import '../model/user/user.dart';
import 'dart:math';


final Random random = Random();

///
/// FACE DATA FOR TEST PURPOSE
///

// Fake Cities
const List<Location> fakeLocations = [
  // UK Cities
  Location(name: "London", country: Country.uk),
  Location(name: "Manchester", country: Country.uk),
  Location(name: "Birmingham", country: Country.uk),
  Location(name: "Liverpool", country: Country.uk),
  Location(name: "Leeds", country: Country.uk),
  Location(name: "Glasgow", country: Country.uk),
  Location(name: "Sheffield", country: Country.uk),
  Location(name: "Bristol", country: Country.uk),
  Location(name: "Edinburgh", country: Country.uk),
  Location(name: "Leicester", country: Country.uk),
  Location(name: "Coventry", country: Country.uk),
  Location(name: "Nottingham", country: Country.uk),
  Location(name: "Newcastle", country: Country.uk),
  Location(name: "Southampton", country: Country.uk),
  Location(name: "Portsmouth", country: Country.uk),
  Location(name: "Aberdeen", country: Country.uk),
  Location(name: "Swansea", country: Country.uk),
  Location(name: "Oxford", country: Country.uk),
  Location(name: "Cambridge", country: Country.uk),

  // France Cities
  Location(name: "Paris", country: Country.france),
  Location(name: "Lyon", country: Country.france),
  Location(name: "Marseille", country: Country.france),
  Location(name: "Toulouse", country: Country.france),
  Location(name: "Nice", country: Country.france),
  Location(name: "Nantes", country: Country.france),
  Location(name: "Strasbourg", country: Country.france),
  Location(name: "Montpellier", country: Country.france),
  Location(name: "Bordeaux", country: Country.france),
  Location(name: "Lille", country: Country.france),
  Location(name: "Rennes", country: Country.france),
  Location(name: "Reims", country: Country.france),
  Location(name: "Saint-Étienne", country: Country.france),
  Location(name: "Toulon", country: Country.france),
  Location(name: "Angers", country: Country.france),
  Location(name: "Grenoble", country: Country.france),
  Location(name: "Dijon", country: Country.france),
  Location(name: "Le Havre", country: Country.france),
  Location(name: "Brest", country: Country.france),
];

  const List<Location> cambodiaLocations = [
  Location(name: "Phnom Penh", country: Country.cambodia),
  Location(name: "Siem Reap", country: Country.cambodia),
  Location(name: "Battambang", country: Country.cambodia),
  Location(name: "Sihanoukville", country: Country.cambodia),
  Location(name: "Kampot", country: Country.cambodia),
];
// Fake Ride Preferences
List<RidePreference> fakeRidePrefs = [
  RidePreference(
    departure: fakeLocations[0], // London
    departureDate: DateTime.now().add(Duration(days: 1)), // Tomorrow
    arrival: fakeLocations[3], // Paris
    requestedSeats: 2,
  ),
  RidePreference(
    departure: fakeLocations[1], // Manchester
    departureDate: DateTime.now().add(Duration(days: 7)), // Next week
    arrival: fakeLocations[4], // Lyon
    requestedSeats: 3,
  ),
  RidePreference(
    departure: fakeLocations[2], // Birmingham
    departureDate: DateTime.now(), // Today
    arrival: fakeLocations[5], // Marseille
    requestedSeats: 1,
  ),
  RidePreference(
    departure: fakeLocations[0], // London
    departureDate: DateTime.now().add(Duration(days: 1)), // Tomorrow
    arrival: fakeLocations[3], // Paris
    requestedSeats: 2,
  ),
  RidePreference(
    departure: fakeLocations[4], // Manchester
    departureDate: DateTime.now().add(Duration(days: 7)), // Next week
    arrival: fakeLocations[0], // Lyon
    requestedSeats: 3,
  ),
  RidePreference(
    departure: fakeLocations[5], // Birmingham
    departureDate: DateTime.now(), // Today
    arrival: fakeLocations[1], // Marseille
    requestedSeats: 1,
  ),
];

DateTime today = DateTime.now();
int year = today.year;
int month = today.month;
int day = today.day;
DateTime todayAt5_30AM = DateTime(year, month, day, 5, 30);
DateTime todayAt8PM = DateTime(year, month, day, 20);
DateTime todayAt5AM = DateTime(year, month, day, 5);

List<Ride> battambangRides = [
  Ride(
    departureLocation: cambodiaLocations[2],
    arrivalLocation: cambodiaLocations[1],
    departureDate: todayAt5_30AM,
    arrivalDateTime: todayAt5_30AM.add(const Duration(hours: 2)),
    driver: User(
      firstName: 'Kanika',
      lastName: '',
      email: 'kanika@gmail.com',
      phone: '+855 12-345-678',
      profilePicture: 'pfp.png',
      verifiedProfile: false,
    ),
    pricePerSeat: 3.99,
    availableSeats: 2,
    acceptPets: false,
  ),
  Ride(
    departureLocation: cambodiaLocations[2],
    arrivalLocation: cambodiaLocations[1],
    departureDate: todayAt8PM,
    arrivalDateTime: todayAt8PM.add(const Duration(hours: 2)),
    driver: User(
      firstName: 'Chaylim',
      lastName: '',
      email: 'chaylim@gmail.com',
      phone: '+855 12-345-678',
      profilePicture: 'pfp.png',
      verifiedProfile: true,
    ),
    pricePerSeat: 2.99,
    availableSeats: 0,
    acceptPets: false,
  ),
  Ride(
    departureLocation: cambodiaLocations[2],
    arrivalLocation: cambodiaLocations[1],
    departureDate: todayAt5AM,
    arrivalDateTime: todayAt5AM.add(const Duration(hours: 3)),
    driver: User(
      firstName: 'Mengtech',
      lastName: '',
      email: 'mengtech@gmail.com',
      phone: '+855 12-345-678',
      profilePicture: 'pfp.png',
      verifiedProfile: false,
    ),
    pricePerSeat: 3.49,
    availableSeats: 1,
    acceptPets: false,
  ),
  Ride(
    departureLocation: cambodiaLocations[2],
    arrivalLocation: cambodiaLocations[1],
    departureDate: todayAt8PM,
    arrivalDateTime: todayAt8PM.add(const Duration(hours: 2)),
    driver: User(
      firstName: 'Limhao',
      lastName: '',
      email: 'limhao@gmail.com',
      phone: '+855 12-345-678',
      profilePicture: 'pfp.png',
      verifiedProfile: true,
    ),
    pricePerSeat: 3.99,
    availableSeats: 2,
    acceptPets: true,
  ),
  Ride(
    departureLocation: cambodiaLocations[2],
    arrivalLocation: cambodiaLocations[1],
    departureDate: todayAt5AM,
    arrivalDateTime: todayAt5AM.add(const Duration(hours: 3)),
    driver: User(
      firstName: 'Soanda',
      lastName: '',
      email: 'limhao@gmail.com',
      phone: '+855 12-345-678',
      profilePicture: 'pfp.png',
      verifiedProfile: true,
    ),
    pricePerSeat: 3.00,
    availableSeats: 1,
    acceptPets: false,
  ),
];



// Fake  Users
List<User> fakeUsers = [
  User(
    firstName: "Alice",
    lastName: "Dupont",
    email: "alice.dupont@example.com",
    phone: "+33 612345678",
    profilePicture: "https://randomuser.me/api/portraits/women/1.jpg",
    verifiedProfile: true,
  ),
  User(
    firstName: "Bob",
    lastName: "Smith",
    email: "bob.smith@example.com",
    phone: "+44 789456123",
    profilePicture: "https://randomuser.me/api/portraits/men/2.jpg",
    verifiedProfile: false,
  ),
  User(
    firstName: "Charlie",
    lastName: "Martin",
    email: "charlie.martin@example.com",
    phone: "+33 674839201",
    profilePicture: "https://randomuser.me/api/portraits/men/3.jpg",
    verifiedProfile: true,
  ),
  User(
    firstName: "Diane",
    lastName: "Lemoine",
    email: "diane.lemoine@example.com",
    phone: "+44 741258963",
    profilePicture: "https://randomuser.me/api/portraits/women/4.jpg",
    verifiedProfile: true,
  ),
  User(
    firstName: "Ethan",
    lastName: "Brown",
    email: "ethan.brown@example.com",
    phone: "+44 785412369",
    profilePicture: "https://randomuser.me/api/portraits/men/5.jpg",
    verifiedProfile: false,
  ),
  User(
    firstName: "Fanny",
    lastName: "Durand",
    email: "fanny.durand@example.com",
    phone: "+33 675839201",
    profilePicture: "https://randomuser.me/api/portraits/women/6.jpg",
    verifiedProfile: true,
  ),
];

// Fake  Rides

List<Ride> fakeRides = List.generate(50000, (index) {
  // Select random locations for departure & arrival (ensuring they are different)
  Location departureLocation =
      fakeLocations[random.nextInt(fakeLocations.length)];
  Location arrivalLocation;
  do {
    arrivalLocation = fakeLocations[random.nextInt(fakeLocations.length)];
  } while (departureLocation == arrivalLocation);

  // Select a random driver
  User driver = fakeUsers[random.nextInt(fakeUsers.length)];

  // Random ride details
  DateTime departureTime = DateTime.now()
      .add(Duration(days: random.nextInt(10), hours: random.nextInt(24)));
  DateTime arrivalTime = departureTime
      .add(Duration(hours: random.nextInt(5) + 2)); // Rides take 2-6 hours
  int availableSeats = random.nextInt(4) + 1; // Between 1 and 4 seats
  double pricePerSeat = (random.nextDouble() * 20 + 5)
      .roundToDouble(); // Price between 5€ and 25€

  return Ride(
    departureLocation: departureLocation,
    departureDate: departureTime,
    arrivalLocation: arrivalLocation,
    arrivalDateTime: arrivalTime,
    driver: driver,
    availableSeats: availableSeats,
    pricePerSeat: pricePerSeat,
    acceptPets: random.nextBool()
  );
});
