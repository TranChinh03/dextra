class StatisticResult {
  final String? district;
  final String? date;
  final String? timeFrom;
  final String? timeTo;
  final String? numberOfBicycle;
  final String? numberOfMotorcycle;
  final String? numberOfCar;
  final String? numberOfVan;
  final String? numberOfTruck;
  final String? numberOfBus;
  final String? numberOfFireTruck;
  final String? numberOfContainer;
  final int? totalVehicles;
  final List<ResultDetail>? details;

  StatisticResult({
    this.district,
    this.date,
    this.timeFrom,
    this.timeTo,
    this.numberOfBicycle,
    this.numberOfMotorcycle,
    this.numberOfCar,
    this.numberOfVan,
    this.numberOfTruck,
    this.numberOfBus,
    this.numberOfFireTruck,
    this.numberOfContainer,
    this.details,
    this.totalVehicles,
  });

  factory StatisticResult.fromJson(Map<String, dynamic> json) {
    return StatisticResult(
        district:
            json.containsKey('district') ? json['district'] as String? : null,
        date: json.containsKey('date') ? json['date'] as String? : null,
        timeFrom:
            json.containsKey('timeFrom') ? json['timeFrom'] as String? : null,
        timeTo: json.containsKey('timeTo') ? json['timeTo'] as String? : null,
        numberOfBicycle: json.containsKey('numberOfBicycle')
            ? json['numberOfBicycle'].toString()
            : null,
        numberOfMotorcycle: json.containsKey('numberOfMotorcycle')
            ? json['numberOfMotorcycle'].toString()
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
        details: json.containsKey('details') && json['details'] != null
            ? (json['details'] as List)
                .map((e) => ResultDetail.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        totalVehicles: json["numberOfBicycle"] ??
            0 + json["numberOfCar"] ??
            0 + json["numberOfVan"] ??
            0 + json["numberOfTruck"] ??
            0 + json["numberOfBus"] ??
            0 + json["numberOfFireTruck"] ??
            0 + json["numberOfContainer"] ??
            0);
  }
}

class ResultDetail {
  final String? date;
  final String? time;
  final String? numberOfBicycle;
  final String? numberOfMotorcycle;
  final String? numberOfCar;
  final String? numberOfVan;
  final String? numberOfTruck;
  final String? numberOfBus;
  final String? numberOfFireTruck;
  final String? numberOfContainer;
  final int? totalVehicles;

  ResultDetail({
    this.date,
    this.time,
    this.numberOfBicycle,
    this.numberOfMotorcycle,
    this.numberOfCar,
    this.numberOfVan,
    this.numberOfTruck,
    this.numberOfBus,
    this.numberOfFireTruck,
    this.numberOfContainer,
    this.totalVehicles,
  });

  factory ResultDetail.fromJson(Map<String, dynamic> json) {
    return ResultDetail(
        date: json.containsKey('date') ? json['date'].toString() : null,
        time: json.containsKey('time') ? json['time'].toString() : null,
        numberOfBicycle: json.containsKey('numberOfBicycle')
            ? json['numberOfBicycle'].toString()
            : null,
        numberOfMotorcycle: json.containsKey('numberOfMotorcycle')
            ? json['numberOfMotorcycle'].toString()
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
        totalVehicles: json["numberOfBicycle"] ??
            0 + json["numberOfCar"] ??
            0 + json["numberOfVan"] ??
            0 + json["numberOfTruck"] ??
            0 + json["numberOfBus"] ??
            0 + json["numberOfFireTruck"] ??
            0 + json["numberOfContainer"] ??
            0);
  }
}
