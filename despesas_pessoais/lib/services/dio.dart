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

  static String errorHandler(DioError error) {
    print(error.message);
    switch (error.response?.statusCode) {
      case 400:
        return "Erro ao realizar essa ação";
      case 404:
        return "Erro ao realizar essa ação";
      case 500:
        return "Ocorreu um erro nesse serviço";
      default:
        return error.message;
    }

  }
}