class Timestamp {
  final String date;
  final String time;

  Timestamp({required this.date, required this.time});

  factory Timestamp.fromJson(Map<String, dynamic> json) {
    return Timestamp(
      date: json['date'] as String,
      time: json['time'] as String,
    );
  }
}
