import 'package:despesas_pessoais/modules/user/provider.dart';
import 'package:despesas_pessoais/services/providers.dart';
import 'package:despesas_pessoais/utils/response.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:despesas_pessoais/modules/user/api.dart';
import 'package:despesas_pessoais/modules/user/models.dart';
import 'package:despesas_pessoais/modules/user/repository.dart';

class AuthController extends GetxController {
  final UserProvider _userProvider = provider.find<UserProvider>();
  final UserRepository _userRepository = UserRepository();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  final _isSending = false.obs;

  bool get isSending => _isSending.value;
  
  set isSending(bool value) {
    _isSending.value = value;
  }

  @override
  void onClose() {
    userTextController.dispose();
    passwordTextController.dispose();
    super.onClose();
  }

  Future<FutureResponse<User?>> sendLogin() async {
    final params = UserApiParams(
      email: userTextController.text,
      password: passwordTextController.text,
    );

    final response = await _userRepository.login(params);

    if(response.success) {
      _userProvider.setUser(response.value!);
    }
  
    return response;
  }
}