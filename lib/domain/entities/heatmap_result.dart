import 'package:dextra/domain/entities/camera.dart';

class HeatmapResult {
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
  final List<HeatmapDetail>? details;

  HeatmapResult({
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

  factory HeatmapResult.fromJson(Map<String, dynamic> json) {
    return HeatmapResult(
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
                .map((e) => HeatmapDetail.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        totalVehicles: json["numberOfBicycle"] +
            json["numberOfMotorcycle"] +
            json["numberOfCar"] +
            json["numberOfVan"] +
            json["numberOfTruck"] +
            json["numberOfBus"] +
            json["numberOfFireTruck"] +
            json["numberOfContainer"]);
  }
}

class HeatmapDetail {
  final String? time;
  final List<HeatmapData>? data;

  HeatmapDetail({this.time, this.data});
  factory HeatmapDetail.fromJson(Map<String, dynamic> json) {
    return HeatmapDetail(
        time: json.containsKey('time') ? json['time'] as String? : null,
        data: json.containsKey('data') && json['data'] != null
            ? (json['data'] as List)
                .map((e) => HeatmapData.fromJson(e as Map<String, dynamic>))
                .toList()
            : null);
  }
}

class HeatmapData {
  final String? camera;
  final Location? loc;
  final String? numberOfBicycle;
  final String? numberOfMotorcycle;
  final String? numberOfCar;
  final String? numberOfVan;
  final String? numberOfTruck;
  final String? numberOfBus;
  final String? numberOfFireTruck;
  final String? numberOfContainer;
  final int? totalVehicles;

  HeatmapData({
    this.camera,
    this.loc,
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

  factory HeatmapData.fromJson(Map<String, dynamic> json) {
    return HeatmapData(
        camera: json.containsKey('camera') ? json['camera'].toString() : null,
        loc: json.containsKey('loc') ? Location.fromJson(json['loc']) : null,
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
        totalVehicles: json["numberOfBicycle"] +
            json["numberOfMotorcycle"] +
            json["numberOfCar"] +
            json["numberOfVan"] +
            json["numberOfTruck"] +
            json["numberOfBus"] +
            json["numberOfFireTruck"] +
            json["numberOfContainer"]);
  }
}
