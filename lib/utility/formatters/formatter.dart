
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TFormatter {
  static String formatDate(DateTime ? date,DateFormat) {
    date ??= DateTime.now();
    return DateFormat('dd-mmm-yyy').format(date);
  }

  static String formatCurrency(double amount,NumberFormat) {

    return NumberFormat.currency(locale: 'en_us', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // assuming a 10 digit US phone format: (123) 456-7890

    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(
          3, 6)} ${phoneNumber.substring(6)}';
    }
    else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(
          4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
    // Not fully tested
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //add the remaining digits with proper formatting

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;

    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength ;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('');
      }
      i = end;
    }
    return  digitsOnly;
  }
}
