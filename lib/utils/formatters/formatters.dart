import 'package:intl/intl.dart';

class Formatters {
  // Format date to 'MM/dd/yyyy' format
  static String formatDate(DateTime date) {
    return DateFormat('MM/dd/yyyy').format(date);
  }

  // Format time to 'hh:mm a' format
  static String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  // Format numbers with commas as thousand separators
  static String formatNumber(double number) {
    return NumberFormat('#,###').format(number);
  }

  // Capitalize the first letter of a string
  static String capitalize(String input) {
    if (input.isEmpty) return '';
    return '${input[0].toUpperCase()}${input.substring(1)}';
  }

  // Format currency with a given locale
  static String formatCurrency(double value, {String locale = 'en_US'}) {
    return NumberFormat.currency(locale: locale, symbol: '\$').format(value);
  }
}
