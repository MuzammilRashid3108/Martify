class MValidatorHelper {
  // Validate email
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  // Validate password (at least 8 characters, 1 uppercase, 1 lowercase, 1 number)
  static bool isValidPassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  // Validate phone number (example for US phone numbers)
  static bool isValidPhoneNumber(String phoneNumber) {
    final phoneRegex = RegExp(r'^\+?1?\d{9,15}$');
    return phoneRegex.hasMatch(phoneNumber);
  }

  // Validate if a string is not empty
  static bool isNotEmpty(String input) {
    return input.isNotEmpty;
  }

  // Validate if a field contains only numeric characters
  static bool isNumeric(String input) {
    final numericRegex = RegExp(r'^[0-9]+$');
    return numericRegex.hasMatch(input);
  }

  // Validate if a string matches a given regex pattern
  static bool matchesPattern(String input, String pattern) {
    final regex = RegExp(pattern);
    return regex.hasMatch(input);
  }
}
