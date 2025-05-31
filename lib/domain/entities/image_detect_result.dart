class ImageDetectResult {
  final String? detectAt;
  final int? numberOfBicycle;
  final int? numberOfMotorcycle;
  final int? numberOfCar;
  final int? numberOfVan;
  final int? numberOfTruck;
  final int? numberOfBus;
  final int? numberOfFireTruck;
  final int? numberOfContainer;

  ImageDetectResult({
    this.detectAt,
    this.numberOfBicycle,
    this.numberOfMotorcycle,
    this.numberOfCar,
    this.numberOfVan,
    this.numberOfTruck,
    this.numberOfBus,
    this.numberOfFireTruck,
    this.numberOfContainer,
  });

  factory ImageDetectResult.fromJson(dynamic jsonData) {
    Map<String, dynamic> json = jsonData;
    return ImageDetectResult(
      detectAt:
          json.containsKey('detect_at') ? json['detect_at'] as String? : null,
      numberOfBicycle: json.containsKey('numberOfBicycle')
          ? json['numberOfBicycle'] as int?
          : null,
      numberOfMotorcycle: json.containsKey('numberOfMotorcycle')
          ? json['numberOfMotorcycle'] as int?
          : null,
      numberOfCar:
          json.containsKey('numberOfCar') ? json['numberOfCar'] as int? : null,
      numberOfVan:
          json.containsKey('numberOfVan') ? json['numberOfVan'] as int? : null,
      numberOfTruck: json.containsKey('numberOfTruck')
          ? json['numberOfTruck'] as int?
          : null,
      numberOfBus:
          json.containsKey('numberOfBus') ? json['numberOfBus'] as int? : null,
      numberOfFireTruck: json.containsKey('numberOfFireTruck')
          ? json['numberOfFireTruck'] as int?
          : null,
      numberOfContainer: json.containsKey('numberOfContainer')
          ? json['numberOfContainer'] as int?
          : null,
    );
  }
}
