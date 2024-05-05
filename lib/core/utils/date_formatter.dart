import 'package:intl/intl.dart';

class DateFormatter {
  static String format(DateTime dateTime, {String locale = 'ru_RU'}) {
    return DateFormat("d MMM 'в' HH:mm", locale).format(dateTime);
  }
}
