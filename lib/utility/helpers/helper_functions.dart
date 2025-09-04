import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  /// Case-insensitive color resolver. Returns null if unknown.
  static Color? getColor(String value) {
    switch (value.trim().toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
      case 'gray':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'brown':
        return Colors.brown;
      case 'teal':
        return Colors.teal;
      case 'indigo':
        return Colors.indigo;
      default:
        return null;
    }
  }

  static void showSnackBar(String message, {BuildContext? context}) {
    final ctx = context ?? Get.context;
    if (ctx == null) return;
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message, {BuildContext? context}) {
    final ctx = context ?? Get.context;
    if (ctx == null) return;
    showDialog(
      context: ctx,
      builder: (c) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(c).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  /// Truncate with ellipsis.
  static String truncateText(String text, int maxLength) {
    if (maxLength <= 0) return '';
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /// Prefer passing context from the widget tree.
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Correct default format uses 4-digit year: 'yyyy'
  static String getFormattedDate(
      DateTime date, {
        String format = 'dd MMM yyyy',
      }) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// Wrap a flat list of widgets into rows of [rowSize].
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize,
      {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start}) {
    final wrappedList = <Widget>[];
    for (int i = 0; i < widgets.length; i += rowSize) {
      final end = (i + rowSize > widgets.length) ? widgets.length : i + rowSize;
      final rowChildren = widgets.sublist(i, end);
      wrappedList.add(
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: rowChildren,
        ),
      );
    }
    return wrappedList;
  }
}
