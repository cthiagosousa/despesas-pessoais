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

class FutureResponse<T> {
  T? value;
  String? message;
  late bool error;
  late bool success;
  late bool pending;

  FutureResponse({
    this.pending = true,
    this.success = false,
    this.error = false
  });

  FutureResponse.value(T newValue) {
    pending = false;
    success = true;
    error = false;
    value = newValue;
  }

  FutureResponse.error(String message) {
    pending = false;
    success = false;
    error = true;
    message = message;
  }
}
