import 'package:despesas_pessoais/modules/expense/api.dart';
import 'package:despesas_pessoais/modules/expense/models.dart';

class ExpensesRepository {
  Future<List<Expense>?> get() async {
    final _response = await  ExpensesApi().fetch();

    if(_response.result != null) {
      return _response.result!;
    }
    return null;
  }
}