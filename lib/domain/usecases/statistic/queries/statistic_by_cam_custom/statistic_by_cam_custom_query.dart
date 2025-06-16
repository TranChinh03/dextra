class DetectByCameraCustomQuery {
  final String? camera;
  final String? date;
  final String? timeFrom;
  final String? timeTo;

  DetectByCameraCustomQuery({
    this.camera,
    this.date,
    this.timeFrom,
    this.timeTo,
  });

  Map<String, dynamic> toJson() {
    return {
      if (camera != null) 'camera': camera,
      if (date != null) 'date': date,
      if (timeFrom != timeFrom) 'timeFrom': timeFrom,
      if (timeTo != null) 'timeTo': timeTo,
    };
  }
}
