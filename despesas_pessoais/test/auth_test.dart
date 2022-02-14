import 'package:despesas_pessoais/modules/user/api.dart';
import 'package:test/test.dart';
import 'package:despesas_pessoais/modules/user/models.dart';
import 'package:despesas_pessoais/modules/user/repository.dart';

void main() {
  test("Deve autenticar usuário", () async {
    final UserRepository repository = UserRepository();

    const email = "thiagosousadev@gmail.com";
    const password = "olamundo";

    final params = UserApiParams(
      email: email, 
      password: password,
    );

    final response = await repository.login(params);

    expect(response, isA<User>());
  });
}