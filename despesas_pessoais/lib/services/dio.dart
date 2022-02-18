import 'package:dio/dio.dart';
import 'package:despesas_pessoais/modules/user/provider.dart';
import 'package:despesas_pessoais/services/providers.dart';


class DioService {
  static Dio dio({bool isAuth = false}) {
    final UserProvider _userProvider = provider.find<UserProvider>();
    Map<String, dynamic> headers = {};
    
    if(isAuth) {
      headers = {
        "Bearer": _userProvider.user?.idToken,
      };
    }

    return Dio(BaseOptions(
      //baseUrl: BASE_URL,
      headers: headers,
    ));
  }
}