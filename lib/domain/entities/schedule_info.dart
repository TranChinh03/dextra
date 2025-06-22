class ScheduleInfo {
  String scheduleId;
  String email;
  String dateFrom;
  String dateTo;
  String createdAt;
  String status;

  ScheduleInfo({
    required this.scheduleId,
    required this.email,
    required this.dateFrom,
    required this.dateTo,
    required this.createdAt,
    required this.status,
  });

  factory ScheduleInfo.fromJson(Map<String, dynamic> json) {
    return ScheduleInfo(
      scheduleId: (json.containsKey('scheduleId') &&
              (json['scheduleId'] ?? '').toString().isNotEmpty)
          ? json['scheduleId']
          : '',
      email: (json.containsKey('email') &&
              (json['email'] ?? '').toString().isNotEmpty)
          ? json['email']
          : '',
      dateFrom: (json.containsKey('dateFrom') &&
              (json['dateFrom'] ?? '').toString().isNotEmpty)
          ? json['dateFrom'].toString()
          : '',
      dateTo: (json.containsKey('dateTo') &&
              (json['dateTo'] ?? '').toString().isNotEmpty)
          ? json['dateTo'].toString()
          : '',
      createdAt: (json.containsKey('createdAt') &&
              (json['createdAt'] ?? '').toString().isNotEmpty)
          ? json['createdAt'].toString()
          : '',
      status: (json.containsKey('status') &&
              (json['status'] ?? '').toString().isNotEmpty)
          ? json['status']
          : '',
    );
  }
}
