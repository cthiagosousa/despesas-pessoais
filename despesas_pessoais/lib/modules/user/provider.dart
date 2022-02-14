import 'package:mobx/mobx.dart';
import 'package:despesas_pessoais/modules/user/models.dart';

part 'provider.g.dart';

class UserProvider = _UserProvider with _$UserProvider;

abstract class _UserProvider with Store {

  @observable
  User? user;

  @action
  void setUser(User value) => user = value;
}
