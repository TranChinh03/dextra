import 'package:dextra/domain/entities/statistic_result.dart';

final List<ResultDetail> sampleTracking = [
  {
    "date": "2025-05-27",
    "numberOfBicycle": 74886,
    "numberOfMotorcycle": 450370,
    "numberOfCar": 225212,
    "numberOfVan": 14919,
    "numberOfTruck": 14850,
    "numberOfBus": 14919,
    "numberOfFireTruck": 15018,
    "numberOfContainer": 15112
  },
  {
    "date": "2025-05-28",
    "numberOfBicycle": 75454,
    "numberOfMotorcycle": 448603,
    "numberOfCar": 224319,
    "numberOfVan": 15061,
    "numberOfTruck": 15004,
    "numberOfBus": 14988,
    "numberOfFireTruck": 15103,
    "numberOfContainer": 14805
  },
  {
    "date": "2025-05-29",
    "numberOfBicycle": 74739,
    "numberOfMotorcycle": 448218,
    "numberOfCar": 224652,
    "numberOfVan": 15118,
    "numberOfTruck": 14979,
    "numberOfBus": 14913,
    "numberOfFireTruck": 15036,
    "numberOfContainer": 14894
  },
  {
    "date": "2025-05-30",
    "numberOfBicycle": 74980,
    "numberOfMotorcycle": 452019,
    "numberOfCar": 224481,
    "numberOfVan": 15023,
    "numberOfTruck": 15110,
    "numberOfBus": 14859,
    "numberOfFireTruck": 15042,
    "numberOfContainer": 15126
  },
  {
    "date": "2025-05-31",
    "numberOfBicycle": 74757,
    "numberOfMotorcycle": 451661,
    "numberOfCar": 224681,
    "numberOfVan": 14818,
    "numberOfTruck": 15081,
    "numberOfBus": 14988,
    "numberOfFireTruck": 15125,
    "numberOfContainer": 15118
  },
  {
    "date": "2025-06-01",
    "numberOfBicycle": 74363,
    "numberOfMotorcycle": 448287,
    "numberOfCar": 225158,
    "numberOfVan": 14968,
    "numberOfTruck": 15020,
    "numberOfBus": 15014,
    "numberOfFireTruck": 15085,
    "numberOfContainer": 14945
  },
  {
    "date": "2025-06-02",
    "numberOfBicycle": 56311,
    "numberOfMotorcycle": 340211,
    "numberOfCar": 170150,
    "numberOfVan": 11323,
    "numberOfTruck": 11272,
    "numberOfBus": 11472,
    "numberOfFireTruck": 11297,
    "numberOfContainer": 11343
  }
].map((e) => ResultDetail.fromJson(e)).toList();
final StatisticResult sampleByCam = StatisticResult.fromJson({
  "camera": "56de42f611f398ec0c48127d",
  "numberOfBicycle": 821,
  "numberOfMotorcycle": 5010,
  "numberOfCar": 2390,
  "numberOfVan": 171,
  "numberOfTruck": 161,
  "numberOfBus": 159,
  "numberOfFireTruck": 159,
  "numberOfContainer": 178,
  "details": [
    {
      "date": "2025-05-27",
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 903,
      "numberOfCar": 357,
      "numberOfVan": 22,
      "numberOfTruck": 24,
      "numberOfBus": 31,
      "numberOfFireTruck": 16,
      "numberOfContainer": 25
    },
    {
      "date": "2025-05-28",
      "numberOfBicycle": 129,
      "numberOfMotorcycle": 640,
      "numberOfCar": 324,
      "numberOfVan": 24,
      "numberOfTruck": 27,
      "numberOfBus": 25,
      "numberOfFireTruck": 26,
      "numberOfContainer": 25
    },
    {
      "date": "2025-05-29",
      "numberOfBicycle": 135,
      "numberOfMotorcycle": 689,
      "numberOfCar": 365,
      "numberOfVan": 26,
      "numberOfTruck": 24,
      "numberOfBus": 18,
      "numberOfFireTruck": 26,
      "numberOfContainer": 28
    },
    {
      "date": "2025-05-30",
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 695,
      "numberOfCar": 345,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 26,
      "numberOfFireTruck": 19,
      "numberOfContainer": 31
    },
    {
      "date": "2025-05-31",
      "numberOfBicycle": 128,
      "numberOfMotorcycle": 773,
      "numberOfCar": 356,
      "numberOfVan": 32,
      "numberOfTruck": 21,
      "numberOfBus": 19,
      "numberOfFireTruck": 28,
      "numberOfContainer": 24
    },
    {
      "date": "2025-06-01",
      "numberOfBicycle": 112,
      "numberOfMotorcycle": 661,
      "numberOfCar": 355,
      "numberOfVan": 24,
      "numberOfTruck": 26,
      "numberOfBus": 22,
      "numberOfFireTruck": 26,
      "numberOfContainer": 22
    },
    {
      "date": "2025-06-02",
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 649,
      "numberOfCar": 288,
      "numberOfVan": 21,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 23
    }
  ]
});
