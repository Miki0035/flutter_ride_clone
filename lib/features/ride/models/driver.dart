class Driver {
  final String firstName;
  final String lastName;
  final double rating;
  final String profilePicture;
  final double price;
  final String pickupTime;
  final double carSeats;

  Driver(
      {required this.firstName,
      required this.lastName,
      required this.rating,
      required this.profilePicture,
      required this.price,
      required this.pickupTime,
      required this.carSeats});

  String get fullName => firstName + lastName;
}
