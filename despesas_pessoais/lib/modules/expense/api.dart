import 'package:dio/dio.dart';
import 'package:despesas_pessoais/modules/expense/urls.dart';
import 'package:despesas_pessoais/modules/expense/models.dart';
import 'package:despesas_pessoais/services/dio.dart';
import 'package:despesas_pessoais/utils/api.dart';
import 'package:despesas_pessoais/utils/response.dart';

class ExpensesApi extends BaseApi {

  @override
  Future<ApiResponse<List<Expense>>> fetch() async {
    try {
      final Dio dio = DioService.dio();
      final response = await dio.get(FETCH_EXPENSES);

      if(response.statusCode == 200) {
        List data = response.data;
        final parse = data.map<Expense>((item) => Expense.fromMap(item)).toList();

        return ApiResponse.success(parse);
      }

      return ApiResponse.error("Ocorreu um erro");
    } on DioError catch (error) {
      return ApiResponse.error("erro");
    }
  }
}