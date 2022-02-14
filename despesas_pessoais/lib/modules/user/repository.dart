import 'package:despesas_pessoais/modules/user/api.dart';
import 'package:despesas_pessoais/modules/user/models.dart';

class UserRepository {
  Future<User?> login(UserApiParams params) async {
    final _api = UserApi();
    final _response = await _api.login(params);

    if(_response.result != null) {
      return _response.result!;
    } else {
      print(_response.errorMessage);
    }
  }
}