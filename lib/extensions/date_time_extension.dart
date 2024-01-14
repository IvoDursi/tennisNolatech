extension DateTimeExtension on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return month == now.month && day == now.day && year == now.year;
  }

  bool sameDay(DateTime dateTime) {
    return month == dateTime.month &&
        day == dateTime.day &&
        year == dateTime.year;
  }

  DateTime relatedDay() {
    return DateTime(
      year,
      month,
      day,
      hour,
    );
  }
}
