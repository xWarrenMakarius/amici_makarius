class EmailValidator {
  EmailValidator._();

  static bool isValid(String email) {
    final value = email.trim();

    if (value.isEmpty) {
      return false;
    }

    final emailRegex = RegExp(
      r'''^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$''',
    );

    return emailRegex.hasMatch(value);
  }
}