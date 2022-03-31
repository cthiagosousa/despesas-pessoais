import 'package:despesas_pessoais/modules/user/api.dart';
import 'package:despesas_pessoais/modules/user/models.dart';
import 'package:despesas_pessoais/utils/response.dart';

class UserRepository {
  Future<FutureResponse<User?>> login(UserApiParams params) async {
    final _api = UserApi();
    final _response = await _api.login(params);

    if(_response.result != null) {
      return FutureResponse.value(_response.result!);
    } else {
      return FutureResponse.error(_response.errorMessage!);
    }
  }
}