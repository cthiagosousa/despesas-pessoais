import 'package:get/get.dart';
import 'package:despesas_pessoais/modules/user/models.dart';

class UserProvider extends GetxController {
  Rx<User>? _user;

  User? get user => _user?.value;

  void setUser(User value) => _user?.value = value;
}
