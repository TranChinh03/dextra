class DetectByDateQuery {
  final String? date;

  DetectByDateQuery({
    this.date,
  });

  Map<String, dynamic> toJson() {
    return {
      if (date != null) 'date': date,
    };
  }
}
