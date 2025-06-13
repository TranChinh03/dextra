class ApiPath {
  static const String fetchCamerasUrl = 'http://localhost:8002/cameras';
  static const String searchCamerasUrl = 'http://localhost:8002/cameras/search';
  static const String fetchVihiclesUrl =
      'http://localhost:8002/cameras/detection/classes';
  static const String fetchDistrictsUrl =
      'http://localhost:8002/cameras/district/classes';

  static const String detectionStreamlineUrl =
      'http://localhost:8003/detect/images';
  static const String detectionDetailsUrl =
      'http://localhost:8003/detect-vehicles';
  static const String fetchTimestampUrl = 'http://localhost:8004/timestamp';
  static const String fetchDateUrl = 'http://localhost:8004/date';
  static const String detectByDateUrl =
      'http://localhost:8004/detection_results_by_date?date=';
  static const String detectByCustomUrl =
      'http://localhost:8004/custom_detection_results';
  static const String detectByDistrictUrl =
      'http://localhost:8004/custom_detection_results_by_district';
  static const String detectByCameraUrl =
      'http://localhost:8004/custom_detection_results_by_camera';
  static const String trackingByDateUrl =
      'http://localhost:8004/traffic_tracking_by_date';
  static const String fetchHeatmapUrl = 'http://localhost:8004/heatmap';
  static const String sendEmailByDateUrl =
      'http://localhost:8004/send_email_by_date';
  static const String fetchHeatmapInDayUrl =
      'http://localhost:8004/heatmap_in_a_day';
}
