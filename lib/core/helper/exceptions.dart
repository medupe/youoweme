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

class EmailExistException extends AppException {
  final String? message;
  const EmailExistException({this.message = 'Email already exist'})
      : super(message: "Email already exists");
}

class UserRegistrationException extends AppException {
  final String? message;
  const UserRegistrationException(
      {this.message = 'User could not be registered '})
      : super(message: "User could not be registred ");
}

class WeakPasswordException extends AppException {
  final String? message;
  const WeakPasswordException({this.message = 'You have entered weak password'})
      : super(message: "You have entered weak password");
}
