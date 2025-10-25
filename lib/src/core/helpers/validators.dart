import 'package:sokrio_users/src/core/errors/error_messages.dart';
import 'package:sokrio_users/src/core/extensions/string_extension.dart';

class Validators {
  static String? emptyValidator(value) {
    if (value.toString().isEmpty) {
      return ErrorMessage.emptyField;
    }
    return null;
  }

  static String? emailValidator(value) {
    if (value.toString().isEmpty) {
      return ErrorMessage.emptyEmail;
    } else if (!value.toString().isValidEmail) {
      return ErrorMessage.invalidEmail;
    }
    return null;
  }

  static String? dropDownValidator(value) {
    if (value == null) {
      return ErrorMessage.emptyField;
    }
    return null;
  }

  static String? multiSelectDropDownValidator<T>(List<T>? items) {
    if (items!.isEmpty) {
      return ErrorMessage.emptyField;
    }
    return null;
  }

  static String? phoneNumberValidator(value) {
    if (value.toString().isEmpty) {
      return ErrorMessage.emptyPhone;
    } else if (value.toString().length != 11) {
      return ErrorMessage.invalidPhone;
    }
    return null;
  }

  static String? passwordValidator(value) {
    if (value.toString().isEmpty) {
      return ErrorMessage.emptyPassword;
    } else if (value.toString().length < 6) {
      return ErrorMessage.invalidPassword;
    }
    return null;
  }

  static String? confirmPasswordValidator(value, String previousPassword) {
    if (value == null || value.isEmpty) {
      return ErrorMessage.emptyPassword;
    } else if (value.length < 6) {
      return ErrorMessage.invalidPassword;
    } else if (value != previousPassword) {
      return ErrorMessage.doNotMatchPasswords;
    }
    return null;
  }

  static String? otpValidator(value) {
    if (value.toString().isEmpty) {
      return ErrorMessage.emptyOTP;
    } else if (value.toString().length != 6) {
      return ErrorMessage.invalidOTP;
    }
    return null;
  }
}
