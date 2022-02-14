import 'package:despesas_pessoais/modules/user/models.dart';
import 'package:despesas_pessoais/modules/user/urls.dart';
import 'package:despesas_pessoais/services/dio.dart';
import 'package:despesas_pessoais/utils/api.dart';
import 'package:despesas_pessoais/utils/constants.dart';
import 'package:despesas_pessoais/utils/response.dart';

class UserApi extends BaseApi {

  Future<ApiResponse<User>> login(UserApiParams params) async {
    final _dio = DioService.dio();

    final _response = await _dio.post(
      LOGIN_URL, 
      queryParameters: {
        "key": API_KEY,
      },
      data: params.toMap(),
    );

    if(_response.statusCode == 200) {
      final _user = User.fromMap(_response.data);
      return ApiResponse.success(_user);
    }

    return ApiResponse.error(_response.statusMessage ?? "Ocorreu um erro");
  }
}

class UserApiParams {
  String? email;
  String? password;
  bool? returnSecureToken;

  UserApiParams({
    this.email,
    this.password,
    this.returnSecureToken,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'returnSecureToken': returnSecureToken,
    };
  }
}
