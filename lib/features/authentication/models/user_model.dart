import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String username;
  final String email;

  UserModel({required this.id, required this.username, required this.email});

  static UserModel empty() => UserModel(id: '', username: '', email: '');

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email
    };
  }

  // FUNCTION TO STORE USER OBJECT TO FIRESTORE DOCUMENT
  factory UserModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document
      ) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        username: data['username'] ?? '',
        email:  data['email'] ?? '',
      );
    } else {
      return UserModel.empty();
    }
  }
}
