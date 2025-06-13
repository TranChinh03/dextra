class TimeValidators {
  static DateTime _parseTime(String value) {
    final parts = value.split(':');
    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    return DateTime(0, 1, 1, hour, minute);
  }

  static String? validateStart(String? value, String? end,
      {required String Function(String key) tr}) {
    if (value == null || value.isEmpty) return null;
    final startTime = _parseTime(value);
    final endTime = _parseTime(end ?? '23:59');
    if (endTime.isBefore(startTime)) {
      return tr('Common.invalid_time_range');
    }
    return null;
  }

  static String? validateEnd(String? start, String? value,
      {required String Function(String key) tr}) {
    if (value == null || value.isEmpty) return null;
    final endTime = _parseTime(value);
    final startTime = _parseTime(start ?? '00:00');
    if (endTime.isBefore(startTime)) {
      return tr('Common.invalid_time_range');
    }
    return null;
  }
}
