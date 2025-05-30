class StatisticResult {
  final String? district;
  final String? date;
  final String? timeFrom;
  final String? timeTo;
  final String? numberOfBycicle;
  final String? numberOfCar;
  final String? numberOfVan;
  final String? numberOfTruck;
  final String? numberOfBus;
  final String? numberOfFireTruck;
  final String? numberOfContainer;
  final List<ResultDetail>? details;

  StatisticResult({
    this.district,
    this.date,
    this.timeFrom,
    this.timeTo,
    this.numberOfBycicle,
    this.numberOfCar,
    this.numberOfVan,
    this.numberOfTruck,
    this.numberOfBus,
    this.numberOfFireTruck,
    this.numberOfContainer,
    this.details,
  });

  factory StatisticResult.fromJson(Map<String, dynamic> json) {
    return StatisticResult(
      district:
          json.containsKey('district') ? json['district'] as String? : null,
      date: json.containsKey('date') ? json['date'] as String? : null,
      timeFrom:
          json.containsKey('timeFrom') ? json['timeFrom'] as String? : null,
      timeTo: json.containsKey('timeTo') ? json['timeTo'] as String? : null,
      numberOfBycicle: json.containsKey('numberOfBycicle')
          ? json['numberOfBycicle'] as String?
          : null,
      numberOfCar: json.containsKey('numberOfCar')
          ? json['numberOfCar'] as String?
          : null,
      numberOfVan: json.containsKey('numberOfVan')
          ? json['numberOfVan'] as String?
          : null,
      numberOfTruck: json.containsKey('numberOfTruck')
          ? json['numberOfTruck'] as String?
          : null,
      numberOfBus: json.containsKey('numberOfBus')
          ? json['numberOfBus'] as String?
          : null,
      numberOfFireTruck: json.containsKey('numberOfFireTruck')
          ? json['numberOfFireTruck'] as String?
          : null,
      numberOfContainer: json.containsKey('numberOfContainer')
          ? json['numberOfContainer'] as String?
          : null,
      details: json.containsKey('details') && json['details'] != null
          ? (json['details'] as List)
              .map((e) => ResultDetail.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}

class ResultDetail {
  final String? date;
  final String? time;
  final String? numberOfBycicle;
  final String? numberOfCar;
  final String? numberOfVan;
  final String? numberOfTruck;
  final String? numberOfBus;
  final String? numberOfFireTruck;
  final String? numberOfContainer;

  ResultDetail({
    this.date,
    this.time,
    this.numberOfBycicle,
    this.numberOfCar,
    this.numberOfVan,
    this.numberOfTruck,
    this.numberOfBus,
    this.numberOfFireTruck,
    this.numberOfContainer,
  });

  factory ResultDetail.fromJson(Map<String, dynamic> json) {
    return ResultDetail(
      date: json.containsKey('date') ? json['date'].toString() : null,
      time: json.containsKey('time') ? json['time'].toString() : null,
      numberOfBycicle: json.containsKey('numberOfBycicle')
          ? json['numberOfBycicle'].toString()
          : null,
      numberOfCar: json.containsKey('numberOfCar')
          ? json['numberOfCar'].toString()
          : null,
      numberOfVan: json.containsKey('numberOfVan')
          ? json['numberOfVan'].toString()
          : null,
      numberOfTruck: json.containsKey('numberOfTruck')
          ? json['numberOfTruck'].toString()
          : null,
      numberOfBus: json.containsKey('numberOfBus')
          ? json['numberOfBus'].toString()
          : null,
      numberOfFireTruck: json.containsKey('numberOfFireTruck')
          ? json['numberOfFireTruck'].toString()
          : null,
      numberOfContainer: json.containsKey('numberOfContainer')
          ? json['numberOfContainer'].toString()
          : null,
    );
  }
}
