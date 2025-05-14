
import 'package:get/get.dart';
import 'package:ride_clone/data/user_repository.dart';
import 'package:ride_clone/features/authentication/models/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());
  Rx<UserModel> user = UserModel.empty().obs;

  @override
  void onInit() async {
    await fetchUserRecord();
    super.onInit();
  }

  Future<void> fetchUserRecord() async {
    try {
      final user = await userRepository.fetchUser();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }
  }

}