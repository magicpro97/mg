import 'package:email_validator/email_validator.dart';

extension StringValidator on String {
  bool get isEmail => EmailValidator.validate(this);

  bool get isPhone => RegExp(r'[0-9]{3}-[0-9]{3} [0-9]{4}').hasMatch(this);

  bool get isPassword => RegExp(r'(?=.*[A-Z])(?=.*[0-9]).{8,}').hasMatch(this);
}
