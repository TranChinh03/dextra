class DetectByDistrictQuery {
  final String? district;
  final String? date;
  final String? timeFrom;
  final String? timeTo;

  DetectByDistrictQuery({
    this.district,
    this.date,
    this.timeFrom,
    this.timeTo,
  });

  Map<String, dynamic> toJson() {
    return {
      if (district != null) 'district': district,
      if (date != null) 'date': date,
      if (timeFrom != null) 'timeFrom': timeFrom,
      if (timeTo != null) 'timeTo': timeTo,
    };
  }
}
