class DriverModel {
  final String id;
  final String firstName;
  final String lastName;
  final double rating;
  final String profilePicture;
  final double price;
  final String pickupTime;
  final String carSeats;

  DriverModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.rating,
      required this.profilePicture,
      required this.price,
      required this.pickupTime,
      required this.carSeats});

  String get fullName => "$firstName  $lastName";

  static DriverModel empty() => DriverModel(
      id: "",
      firstName: "",
      lastName: "",
      rating: 0,
      price: 0,
      pickupTime: "",
      carSeats: "",
      profilePicture: "");
}
