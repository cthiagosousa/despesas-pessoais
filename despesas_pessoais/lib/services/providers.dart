import 'package:get/instance_manager.dart';
import 'package:despesas_pessoais/modules/user/provider.dart';

final provider = GetInstance();

class AppProviders {
  static void setup() {
    provider.lazyPut(() => UserProvider());
  }
}