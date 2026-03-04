import 'package:intl/intl.dart';

class TFormatter {

  // ------------------------------------------------
  // Format Date
  // ------------------------------------------------
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  // ------------------------------------------------
  // Format Currency
  // ------------------------------------------------
  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
    ).format(amount);
  }

  // ------------------------------------------------
  // Format Phone Number (Basic)
  // ------------------------------------------------
  static String formatPhoneNumber(String phoneNumber) {

    // 10 digit format: (123) 456 7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) '
          '${phoneNumber.substring(3, 6)} '
          '${phoneNumber.substring(6)}';
    }

    // 11 digit format
    else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) '
          '${phoneNumber.substring(4, 7)} '
          '${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }

  // ------------------------------------------------
  // International Phone Format
  // ------------------------------------------------
  static String internationalFormatPhoneNumber(String phoneNumber) {

    // Remove all non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract country code (first 2 digits assumed)
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;

    while (i < digitsOnly.length) {

      int groupLength = 2;

      // Special case for US country code +1
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;

      formattedNumber.write(
        digitsOnly.substring(
          i,
          end > digitsOnly.length ? digitsOnly.length : end,
        ),
      );

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      i = end;
    }

    return formattedNumber.toString();
  }
}