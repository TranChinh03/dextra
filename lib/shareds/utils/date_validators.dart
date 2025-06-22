class DateValidators {
  static bool? validateDates(DateTime? start, DateTime? end,
      {required String Function(String key) tr}) {
    if (start == null || end == null) {
      return null;
    }

    if (start.isAfter(end)) {
      return false;
    }
    return true;
  }
}
