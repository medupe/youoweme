class AppException implements Exception {
  final String? message;
  const AppException({this.message = 'Something went wrong'});
}

class SmsHttpException extends AppException {
  final String? message;
  const SmsHttpException(
      {this.message = 'Communication could not be sent to lendee'})
      : super(message: "Something went wrong");
}
