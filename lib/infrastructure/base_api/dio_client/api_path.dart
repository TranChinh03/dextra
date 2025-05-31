class ApiPath {
  static const String fetchCamerasUrl = 'http://localhost:8002/cameras';
  static const String searchCamerasUrl = 'http://localhost:8002/cameras/search';
  static const String fectchVihicles =
      'http://localhost:8002/cameras/detection/classes';
  static const String fectcDistricts =
      'http://localhost:8002/cameras/district/classes';

  static const String detectionStreamlineUrl =
      'http://localhost:8003/detect/images';
  static const String detectionDetailsUrl =
      'http://localhost:8003/detect-vehicles';
}
