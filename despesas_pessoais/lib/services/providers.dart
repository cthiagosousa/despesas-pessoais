import 'package:despesas_pessoais/modules/user/provider.dart';
import 'package:get_it/get_it.dart';

final provider = GetIt.instance;

class AppProviders {
  static void setup() {
    provider.registerSingleton<UserProvider>(UserProvider());
  }
}