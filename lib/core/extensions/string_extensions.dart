/// String extensions
/// 
/// This file contains the extension methods for the String class.
/// 
/// Extensions:
/// - isValidEmail: checks if the string is a valid email.
/// - capitalizeFirstLetter: capitalizes the first letter of the string.
/// 
/// Author: Gonzalo Quedena
/// 
extension StringExtensions on String {
  bool get isValidEmail {
    final regex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(this);
  }

  String get capitalize {
    return length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  }
}
