import 'package:intl/intl.dart';
import 'package:nolatech/extensions/date_time_extension.dart';

DateTime availableDefaultDate(List<DateTime> reservedDates) {
  var defaultDate = DateTime.now();

  for (var reservedDate in reservedDates) {
    if (reservedDate.sameDay(defaultDate)) {
      defaultDate = defaultDate.add(const Duration(days: 1));
    }
  }

  return defaultDate;
}

String stringDateFormat(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

String stringHourFormat(DateTime date) {
  return DateFormat('HH:mm').format(date);
}
