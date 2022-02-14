import 'package:test/test.dart';
import 'package:despesas_pessoais/modules/expense/models.dart';
import 'package:despesas_pessoais/modules/expense/repository.dart';

void main() {

  test("Deve retornar despesas", () async {
    final ExpensesRepository _repository = ExpensesRepository();
    final values = await _repository.get();

    expect(values, isA<List<Expense>>());
    expect(values?.isNotEmpty, equals(true));
  });
}