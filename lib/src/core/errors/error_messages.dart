class ErrorMessage {
  /// Validation messages
  static const String emptyEmail = "Email address is empty!";
  static const String invalidEmail = "Invalid email address!";
  static const String emptyPhone = "Phone number is empty!";
  static const String invalidPhone = "Invalid phone number!";
  static const String emptyPassword = "Password is empty!";
  static const String invalidPassword = "Password must be at least 6 characters long!";
  static const String doNotMatchPasswords = "Passwords do not match!";
  static const String emptyOTP = "Please enter the OTP!";
  static const String invalidOTP = "OTP must be 5 characters long!";
  static const String emptyField = "This field is required!";
  static const String dataAdded = "Data has been added!";
  static const String dataUpdated = "Data has been updated!";
  static const String dataUpdateFailed = "Data update failed!";
  static const String dataDeleted = "Data has been deleted!";
  static const String loginSuccess = "Logged in successfully!";
  static const String registerSuccess = "Registration completed successfully!";
  static const String verificationEmailSent = "Verification email has been sent!";
  static const String logoutSuccess = "Logged out successfully!";
  static const String pleaseVerifyEmail = "Please verify your email address!";
  static const String emailAlreadyVerifiedOrUserNotLoggedIn =
      "Email is already verified or the user is not logged in!";

  /// Network error messages
  static const String noInternet = "No internet connection. Please try again.";
  static const String error401 = "Unauthorized!";
  static const String error404 = "Page not found!";
  static const String error500 = "Server error occurred!";
  static const String unknown = "Something went wrong!";
  static const String badResponse = "Received an invalid response!";
}
