class ApiResponse<T> {
  T? result;
  String? errorMessage;

  ApiResponse.success(T? value) {
    result = value;
  }

  ApiResponse.error(String msg) {
    errorMessage = msg;
  }
}