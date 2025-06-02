class DetectByCustomQuery {
  final String? date;
  final String? timeFrom;
  final String? timeTo;

  DetectByCustomQuery({
    this.date,
    this.timeFrom,
    this.timeTo,
  });

  Map<String, dynamic> toJson() {
    return {
      if (date != null) 'date': date,
      if (timeFrom != null) 'timeFrom': timeFrom,
      if (timeTo != null) 'timeTo': timeTo,
    };
  }
}
