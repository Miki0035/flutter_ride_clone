class RValidator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'email is required';
    }

    // Regular expression for valid email
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    // check if string contains uppercase
    final upperCaseReg = RegExp(r'[A-Z]');
    if (!value.contains(upperCaseReg)) {
      return "Password must contain at least one uppercase letter";
    }

    //Regular Expression for contain numbers
    final numberRegExp = RegExp(r'[0-9]');
    // Check for numbers
    if (!value.contains(numberRegExp)) {
      return 'Password must contain at least one number.';
    }

    //Regular Expression for contain special charactes
    final specialCharRegExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    // Check for numbers
    if (!value.contains(specialCharRegExp)) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }
}
