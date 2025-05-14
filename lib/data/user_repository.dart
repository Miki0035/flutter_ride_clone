import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ride_clone/data/authentication_repository.dart';
import 'package:ride_clone/features/authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  //CLOUD FIRESTORE
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // SAVE USER TO CLOUD STORE
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("users").doc(user.id).set(user.toMap());
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // RETRIEVE USER FROM CLOUD STORE
  Future<UserModel> fetchUser() async {
    try {
      final documentSnapshot = await _db.collection("users")
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapShot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
