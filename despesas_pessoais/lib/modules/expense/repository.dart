import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:despesas_pessoais/modules/expense/models.dart';
import 'package:despesas_pessoais/services/firestore.dart';

class ExpensesRepository {
  Future<List<Expense>?> get() async {
    final CollectionReference expenses = Firestore.instance.collection('expenses');
    final data = await expenses.get();
    data.docs;
    return null;
  }
}