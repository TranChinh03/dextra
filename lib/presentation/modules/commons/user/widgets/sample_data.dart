import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/entities/timestamp.dart';

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

final StatisticResult sampleHeatmap = StatisticResult.fromJson({
  "date": "2025-06-02",
  "timeFrom": "00:00:00",
  "timeTo": "23:59:59",
  "numberOfBicycle": 56020,
  "numberOfMotorcycle": 338630,
  "numberOfCar": 169316,
  "numberOfVan": 11273,
  "numberOfTruck": 11220,
  "numberOfBus": 11418,
  "numberOfFireTruck": 11241,
  "numberOfContainer": 11278,
  "details": [
    {
      "camera": "56de42f611f398ec0c48127d",
      "loc": {
        "type": "Point",
        "coordinates": [106.75270736217499, 10.80498476893258]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 649,
      "numberOfCar": 288,
      "numberOfVan": 21,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 23
    },
    {
      "camera": "56de42f611f398ec0c48127e",
      "loc": {
        "type": "Point",
        "coordinates": [106.75406455993652, 10.80625467043043]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 586,
      "numberOfCar": 287,
      "numberOfVan": 15,
      "numberOfTruck": 22,
      "numberOfBus": 18,
      "numberOfFireTruck": 21,
      "numberOfContainer": 21
    },
    {
      "camera": "56de42f611f398ec0c48127f",
      "loc": {
        "type": "Point",
        "coordinates": [106.75110340118408, 10.791531914197964]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 575,
      "numberOfCar": 287,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "56de42f611f398ec0c481280",
      "loc": {
        "type": "Point",
        "coordinates": [106.75144672393799, 10.792627978171955]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 596,
      "numberOfCar": 300,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 24
    },
    {
      "camera": "56de42f611f398ec0c481282",
      "loc": {
        "type": "Point",
        "coordinates": [106.74994468688965, 10.787685119587834]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 627,
      "numberOfCar": 281,
      "numberOfVan": 18,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 24
    },
    {
      "camera": "56de42f611f398ec0c481283",
      "loc": {
        "type": "Point",
        "coordinates": [106.72761797904968, 10.775796632402953]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 570,
      "numberOfCar": 302,
      "numberOfVan": 17,
      "numberOfTruck": 16,
      "numberOfBus": 20,
      "numberOfFireTruck": 25,
      "numberOfContainer": 20
    },
    {
      "camera": "56de42f611f398ec0c481284",
      "loc": {
        "type": "Point",
        "coordinates": [106.68248176574707, 10.766489980132722]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 536,
      "numberOfCar": 292,
      "numberOfVan": 22,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 22
    },
    {
      "camera": "56de42f611f398ec0c481286",
      "loc": {
        "type": "Point",
        "coordinates": [106.72291874885558, 10.773383043524362]
      },
      "numberOfBicycle": 123,
      "numberOfMotorcycle": 604,
      "numberOfCar": 309,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 26
    },
    {
      "camera": "56de42f611f398ec0c481287",
      "loc": {
        "type": "Point",
        "coordinates": [106.70014679431915, 10.765478141038592]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 577,
      "numberOfCar": 264,
      "numberOfVan": 26,
      "numberOfTruck": 22,
      "numberOfBus": 28,
      "numberOfFireTruck": 19,
      "numberOfContainer": 12
    },
    {
      "camera": "56de42f611f398ec0c481288",
      "loc": {
        "type": "Point",
        "coordinates": [106.6976523399353, 10.763791734998435]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 516,
      "numberOfCar": 269,
      "numberOfVan": 23,
      "numberOfTruck": 24,
      "numberOfBus": 17,
      "numberOfFireTruck": 24,
      "numberOfContainer": 23
    },
    {
      "camera": "56de42f611f398ec0c481289",
      "loc": {
        "type": "Point",
        "coordinates": [106.6982853412628, 10.76390240568414]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 549,
      "numberOfCar": 298,
      "numberOfVan": 13,
      "numberOfTruck": 17,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 16
    },
    {
      "camera": "56de42f611f398ec0c48128c",
      "loc": {
        "type": "Point",
        "coordinates": [106.6864407, 10.7536415]
      },
      "numberOfBicycle": 114,
      "numberOfMotorcycle": 611,
      "numberOfCar": 275,
      "numberOfVan": 25,
      "numberOfTruck": 14,
      "numberOfBus": 23,
      "numberOfFireTruck": 16,
      "numberOfContainer": 22
    },
    {
      "camera": "56de42f611f398ec0c48128b",
      "loc": {
        "type": "Point",
        "coordinates": [106.68691277503967, 10.75432133583737]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 570,
      "numberOfCar": 302,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 22,
      "numberOfContainer": 23
    },
    {
      "camera": "56de42f611f398ec0c48128e",
      "loc": {
        "type": "Point",
        "coordinates": [106.68410181999207, 10.751433252881714]
      },
      "numberOfBicycle": 116,
      "numberOfMotorcycle": 621,
      "numberOfCar": 298,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "56de42f611f398ec0c481292",
      "loc": {
        "type": "Point",
        "coordinates": [106.64552092552185, 10.741361637875348]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 537,
      "numberOfCar": 272,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 20,
      "numberOfFireTruck": 8,
      "numberOfContainer": 20
    },
    {
      "camera": "56de42f611f398ec0c481294",
      "loc": {
        "type": "Point",
        "coordinates": [106.70204043388367, 10.767533435639743]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 583,
      "numberOfCar": 290,
      "numberOfVan": 23,
      "numberOfTruck": 20,
      "numberOfBus": 14,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "56de42f611f398ec0c481296",
      "loc": {
        "type": "Point",
        "coordinates": [106.6508424282074, 10.744249817197534]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 661,
      "numberOfCar": 287,
      "numberOfVan": 24,
      "numberOfTruck": 22,
      "numberOfBus": 16,
      "numberOfFireTruck": 22,
      "numberOfContainer": 22
    },
    {
      "camera": "56de42f611f398ec0c481298",
      "loc": {
        "type": "Point",
        "coordinates": [106.61993265151978, 10.726361634826802]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 561,
      "numberOfCar": 296,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 17,
      "numberOfFireTruck": 20,
      "numberOfContainer": 14
    },
    {
      "camera": "56de42f611f398ec0c48129a",
      "loc": {
        "type": "Point",
        "coordinates": [106.61090433597563, 10.722239929521004]
      },
      "numberOfBicycle": 72,
      "numberOfMotorcycle": 593,
      "numberOfCar": 284,
      "numberOfVan": 16,
      "numberOfTruck": 14,
      "numberOfBus": 11,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "56de42f611f398ec0c48129b",
      "loc": {
        "type": "Point",
        "coordinates": [106.61146759986876, 10.721839351587027]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 493,
      "numberOfCar": 267,
      "numberOfVan": 17,
      "numberOfTruck": 13,
      "numberOfBus": 25,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "56de42f611f398ec0c48129c",
      "loc": {
        "type": "Point",
        "coordinates": [106.60094261169434, 10.71705345841978]
      },
      "numberOfBicycle": 115,
      "numberOfMotorcycle": 606,
      "numberOfCar": 299,
      "numberOfVan": 16,
      "numberOfTruck": 25,
      "numberOfBus": 15,
      "numberOfFireTruck": 19,
      "numberOfContainer": 20
    },
    {
      "camera": "56de42f611f398ec0c48129d",
      "loc": {
        "type": "Point",
        "coordinates": [106.60066902637482, 10.722398052243674]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 600,
      "numberOfCar": 300,
      "numberOfVan": 18,
      "numberOfTruck": 18,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 24
    },
    {
      "camera": "56de42f611f398ec0c481299",
      "loc": {
        "type": "Point",
        "coordinates": [106.62035107612608, 10.726567191549575]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 577,
      "numberOfCar": 287,
      "numberOfVan": 19,
      "numberOfTruck": 27,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 23
    },
    {
      "camera": "56de42f611f398ec0c48129e",
      "loc": {
        "type": "Point",
        "coordinates": [106.7572618, 10.7785053]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 632,
      "numberOfCar": 282,
      "numberOfVan": 20,
      "numberOfTruck": 21,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 26
    },
    {
      "camera": "56de42f611f398ec0c48129f",
      "loc": {
        "type": "Point",
        "coordinates": [106.7702866, 10.7731722]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 522,
      "numberOfCar": 296,
      "numberOfVan": 23,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 21,
      "numberOfContainer": 21
    },
    {
      "camera": "56de42f611f398ec0c4812a0",
      "loc": {
        "type": "Point",
        "coordinates": [106.78359031677245, 10.762785156896125]
      },
      "numberOfBicycle": 113,
      "numberOfMotorcycle": 576,
      "numberOfCar": 263,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 26,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "56de42f611f398ec0c4812a1",
      "loc": {
        "type": "Point",
        "coordinates": [106.7747069, 10.769926]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 555,
      "numberOfCar": 272,
      "numberOfVan": 21,
      "numberOfTruck": 25,
      "numberOfBus": 24,
      "numberOfFireTruck": 23,
      "numberOfContainer": 17
    },
    {
      "camera": "56de42f611f398ec0c4812a2",
      "loc": {
        "type": "Point",
        "coordinates": [106.7755866, 10.7701157]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 611,
      "numberOfCar": 278,
      "numberOfVan": 25,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "56df8108c062921100c143db",
      "loc": {
        "type": "Point",
        "coordinates": [106.6740220785141, 10.80903157324385]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 447,
      "numberOfCar": 286,
      "numberOfVan": 16,
      "numberOfTruck": 29,
      "numberOfBus": 18,
      "numberOfFireTruck": 10,
      "numberOfContainer": 25
    },
    {
      "camera": "56df807bc062921100c143da",
      "loc": {
        "type": "Point",
        "coordinates": [106.63648724555968, 10.801918013706095]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 544,
      "numberOfCar": 299,
      "numberOfVan": 17,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 16
    },
    {
      "camera": "56df8159c062921100c143dc",
      "loc": {
        "type": "Point",
        "coordinates": [106.77428305149078, 10.849075129161237]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 536,
      "numberOfCar": 298,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 23
    },
    {
      "camera": "56df8198c062921100c143dd",
      "loc": {
        "type": "Point",
        "coordinates": [106.77378416061401, 10.849275333482579]
      },
      "numberOfBicycle": 120,
      "numberOfMotorcycle": 514,
      "numberOfCar": 308,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 23
    },
    {
      "camera": "56df81d8c062921100c143de",
      "loc": {
        "type": "Point",
        "coordinates": [106.77400946617126, 10.849180499873379]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 570,
      "numberOfCar": 277,
      "numberOfVan": 18,
      "numberOfTruck": 21,
      "numberOfBus": 14,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "56df82d4c062921100c143e0",
      "loc": {
        "type": "Point",
        "coordinates": [106.76086664199829, 10.826493329352697]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 587,
      "numberOfCar": 273,
      "numberOfVan": 18,
      "numberOfTruck": 24,
      "numberOfBus": 21,
      "numberOfFireTruck": 25,
      "numberOfContainer": 24
    },
    {
      "camera": "56df8274c062921100c143df",
      "loc": {
        "type": "Point",
        "coordinates": [106.7610329389572, 10.826493329352697]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 578,
      "numberOfCar": 292,
      "numberOfVan": 15,
      "numberOfTruck": 16,
      "numberOfBus": 20,
      "numberOfFireTruck": 22,
      "numberOfContainer": 20
    },
    {
      "camera": "56df8381c062921100c143e2",
      "loc": {
        "type": "Point",
        "coordinates": [106.70094609260559, 10.74049728686901]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 631,
      "numberOfCar": 291,
      "numberOfVan": 23,
      "numberOfTruck": 22,
      "numberOfBus": 27,
      "numberOfFireTruck": 17,
      "numberOfContainer": 19
    },
    {
      "camera": "56df83d8c062921100c143e3",
      "loc": {
        "type": "Point",
        "coordinates": [106.67835116386414, 10.814084732739182]
      },
      "numberOfBicycle": 119,
      "numberOfMotorcycle": 531,
      "numberOfCar": 278,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 21
    },
    {
      "camera": "56df84abc062921100c143e5",
      "loc": {
        "type": "Point",
        "coordinates": [106.67923629283905, 10.814221730664514]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 620,
      "numberOfCar": 276,
      "numberOfVan": 19,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 21,
      "numberOfContainer": 14
    },
    {
      "camera": "56df8544c062921100c143e6",
      "loc": {
        "type": "Point",
        "coordinates": [106.66536390781403, 10.813631585309611]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 619,
      "numberOfCar": 302,
      "numberOfVan": 14,
      "numberOfTruck": 16,
      "numberOfBus": 23,
      "numberOfFireTruck": 14,
      "numberOfContainer": 19
    },
    {
      "camera": "56f11ac33ac17b11001c504c",
      "loc": {
        "type": "Point",
        "coordinates": [106.66841089725494, 10.799631100247796]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 530,
      "numberOfCar": 302,
      "numberOfVan": 21,
      "numberOfTruck": 20,
      "numberOfBus": 21,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "56f8d743025e9511002786c5",
      "loc": {
        "type": "Point",
        "coordinates": [106.6649293899536, 10.81286755611663]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 476,
      "numberOfCar": 288,
      "numberOfVan": 18,
      "numberOfTruck": 13,
      "numberOfBus": 11,
      "numberOfFireTruck": 22,
      "numberOfContainer": 19
    },
    {
      "camera": "58175ac4edeb6c0012a2d5bb",
      "loc": {
        "type": "Point",
        "coordinates": [106.74960672855377, 10.78788009529324]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 532,
      "numberOfCar": 276,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "58175c81edeb6c0012a2d5c2",
      "loc": {
        "type": "Point",
        "coordinates": [106.72737658023834, 10.775722854863645]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 471,
      "numberOfCar": 283,
      "numberOfVan": 23,
      "numberOfTruck": 15,
      "numberOfBus": 20,
      "numberOfFireTruck": 17,
      "numberOfContainer": 20
    },
    {
      "camera": "5822adbbedeb6c0012a2d65f",
      "loc": {
        "type": "Point",
        "coordinates": [106.68367266654968, 10.751944466659413]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 557,
      "numberOfCar": 269,
      "numberOfVan": 15,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 18
    },
    {
      "camera": "5822f23aedeb6c0012a2d6a8",
      "loc": {
        "type": "Point",
        "coordinates": [106.65115356445312, 10.753551885780816]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 621,
      "numberOfCar": 293,
      "numberOfVan": 18,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 20,
      "numberOfContainer": 22
    },
    {
      "camera": "583f926761cfea0012cf68f1",
      "loc": {
        "type": "Point",
        "coordinates": [106.78657829761505, 10.75997093640807]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 576,
      "numberOfCar": 272,
      "numberOfVan": 18,
      "numberOfTruck": 21,
      "numberOfBus": 25,
      "numberOfFireTruck": 23,
      "numberOfContainer": 18
    },
    {
      "camera": "583f958161cfea0012cf68f5",
      "loc": {
        "type": "Point",
        "coordinates": [106.77987277507782, 10.76602095097508]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 556,
      "numberOfCar": 294,
      "numberOfVan": 22,
      "numberOfTruck": 14,
      "numberOfBus": 14,
      "numberOfFireTruck": 20,
      "numberOfContainer": 24
    },
    {
      "camera": "583f969161cfea0012cf68f7",
      "loc": {
        "type": "Point",
        "coordinates": [106.78142309188843, 10.764682369364285]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 489,
      "numberOfCar": 273,
      "numberOfVan": 21,
      "numberOfTruck": 22,
      "numberOfBus": 21,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "583f976361cfea0012cf68f9",
      "loc": {
        "type": "Point",
        "coordinates": [106.78451299667358, 10.761957757718944]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 532,
      "numberOfCar": 275,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 14,
      "numberOfFireTruck": 18,
      "numberOfContainer": 22
    },
    {
      "camera": "584e71cb61cfea0012cf694b",
      "loc": {
        "type": "Point",
        "coordinates": [106.60326540470123, 10.824896838073522]
      },
      "numberOfBicycle": 73,
      "numberOfMotorcycle": 511,
      "numberOfCar": 281,
      "numberOfVan": 12,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 25,
      "numberOfContainer": 21
    },
    {
      "camera": "584e734a61cfea0012cf694f",
      "loc": {
        "type": "Point",
        "coordinates": [106.60130739212036, 10.816234539123236]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 593,
      "numberOfCar": 305,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 14,
      "numberOfFireTruck": 24,
      "numberOfContainer": 19
    },
    {
      "camera": "584e738361cfea0012cf6951",
      "loc": {
        "type": "Point",
        "coordinates": [106.60091042518616, 10.816129156816537]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 599,
      "numberOfCar": 293,
      "numberOfVan": 22,
      "numberOfTruck": 16,
      "numberOfBus": 13,
      "numberOfFireTruck": 24,
      "numberOfContainer": 22
    },
    {
      "camera": "585b284ac3f96200127dc500",
      "loc": {
        "type": "Point",
        "coordinates": [106.72779500484465, 10.754532143729545]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 552,
      "numberOfCar": 302,
      "numberOfVan": 15,
      "numberOfTruck": 21,
      "numberOfBus": 25,
      "numberOfFireTruck": 22,
      "numberOfContainer": 23
    },
    {
      "camera": "585b2980c3f96200127dc502",
      "loc": {
        "type": "Point",
        "coordinates": [106.72799348831177, 10.755127675228971]
      },
      "numberOfBicycle": 117,
      "numberOfMotorcycle": 530,
      "numberOfCar": 262,
      "numberOfVan": 20,
      "numberOfTruck": 20,
      "numberOfBus": 21,
      "numberOfFireTruck": 23,
      "numberOfContainer": 19
    },
    {
      "camera": "585b2b1ec3f96200127dc505",
      "loc": {
        "type": "Point",
        "coordinates": [106.7285943031311, 10.752882568039677]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 611,
      "numberOfCar": 264,
      "numberOfVan": 14,
      "numberOfTruck": 19,
      "numberOfBus": 12,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "585b2baec3f96200127dc508",
      "loc": {
        "type": "Point",
        "coordinates": [106.72833144664764, 10.752545273497212]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 626,
      "numberOfCar": 267,
      "numberOfVan": 17,
      "numberOfTruck": 23,
      "numberOfBus": 23,
      "numberOfFireTruck": 23,
      "numberOfContainer": 19
    },
    {
      "camera": "586e1d4ef9fab7001111b0a2",
      "loc": {
        "type": "Point",
        "coordinates": [106.65111064910887, 10.801607120963805]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 527,
      "numberOfCar": 279,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 25,
      "numberOfContainer": 19
    },
    {
      "camera": "586e1f18f9fab7001111b0a5",
      "loc": {
        "type": "Point",
        "coordinates": [106.63495302200317, 10.807066139943608]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 496,
      "numberOfCar": 265,
      "numberOfVan": 24,
      "numberOfTruck": 17,
      "numberOfBus": 23,
      "numberOfFireTruck": 22,
      "numberOfContainer": 20
    },
    {
      "camera": "586e20a0f9fab7001111b0a7",
      "loc": {
        "type": "Point",
        "coordinates": [106.67836189270018, 10.806296824744877]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 594,
      "numberOfCar": 305,
      "numberOfVan": 17,
      "numberOfTruck": 22,
      "numberOfBus": 15,
      "numberOfFireTruck": 21,
      "numberOfContainer": 17
    },
    {
      "camera": "586e2492f9fab7001111b0ab",
      "loc": {
        "type": "Point",
        "coordinates": [106.6753363609314, 10.795594708203206]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 573,
      "numberOfCar": 294,
      "numberOfVan": 19,
      "numberOfTruck": 10,
      "numberOfBus": 16,
      "numberOfFireTruck": 23,
      "numberOfContainer": 16
    },
    {
      "camera": "586e25e1f9fab7001111b0ae",
      "loc": {
        "type": "Point",
        "coordinates": [106.63591861724854, 10.80377282473422]
      },
      "numberOfBicycle": 71,
      "numberOfMotorcycle": 497,
      "numberOfCar": 265,
      "numberOfVan": 13,
      "numberOfTruck": 19,
      "numberOfBus": 22,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "586e266ef9fab7001111b0b0",
      "loc": {
        "type": "Point",
        "coordinates": [106.63315057754517, 10.814084732739182]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 632,
      "numberOfCar": 261,
      "numberOfVan": 18,
      "numberOfTruck": 26,
      "numberOfBus": 15,
      "numberOfFireTruck": 24,
      "numberOfContainer": 17
    },
    {
      "camera": "586e28a0f9fab7001111b0b3",
      "loc": {
        "type": "Point",
        "coordinates": [106.76874160766602, 10.872081942302982]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 506,
      "numberOfCar": 289,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 15,
      "numberOfFireTruck": 12,
      "numberOfContainer": 18
    },
    {
      "camera": "586e2995f9fab7001111b0b5",
      "loc": {
        "type": "Point",
        "coordinates": [106.71639561653136, 10.807519297288547]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 513,
      "numberOfCar": 295,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "58744dd9b807da0011e33cb5",
      "loc": {
        "type": "Point",
        "coordinates": [106.6561907529831, 10.73416215096018]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 473,
      "numberOfCar": 265,
      "numberOfVan": 22,
      "numberOfTruck": 25,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "58744e3eb807da0011e33cb7",
      "loc": {
        "type": "Point",
        "coordinates": [106.6889190673828, 10.74441319877893]
      },
      "numberOfBicycle": 118,
      "numberOfMotorcycle": 652,
      "numberOfCar": 262,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 22
    },
    {
      "camera": "58744e97b807da0011e33cb9",
      "loc": {
        "type": "Point",
        "coordinates": [106.6890424489975, 10.746985129442232]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 548,
      "numberOfCar": 282,
      "numberOfVan": 22,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 19
    },
    {
      "camera": "58744f1fb807da0011e33cbd",
      "loc": {
        "type": "Point",
        "coordinates": [106.66898488998413, 10.745967954565412]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 587,
      "numberOfCar": 276,
      "numberOfVan": 18,
      "numberOfTruck": 10,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "58744fb0b807da0011e33cc0",
      "loc": {
        "type": "Point",
        "coordinates": [106.66912972927094, 10.746389581873245]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 497,
      "numberOfCar": 289,
      "numberOfVan": 22,
      "numberOfTruck": 16,
      "numberOfBus": 20,
      "numberOfFireTruck": 15,
      "numberOfContainer": 17
    },
    {
      "camera": "587460aab807da0011e33cc2",
      "loc": {
        "type": "Point",
        "coordinates": [106.78842902183533, 10.867193076987826]
      },
      "numberOfBicycle": 57,
      "numberOfMotorcycle": 455,
      "numberOfCar": 275,
      "numberOfVan": 22,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "58746122b807da0011e33cc5",
      "loc": {
        "type": "Point",
        "coordinates": [106.78794085979462, 10.867229954504454]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 442,
      "numberOfCar": 286,
      "numberOfVan": 15,
      "numberOfTruck": 21,
      "numberOfBus": 20,
      "numberOfFireTruck": 9,
      "numberOfContainer": 21
    },
    {
      "camera": "587461c1b807da0011e33cc8",
      "loc": {
        "type": "Point",
        "coordinates": [106.76550149917603, 10.873557015243474]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 589,
      "numberOfCar": 301,
      "numberOfVan": 17,
      "numberOfTruck": 17,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "58746295b807da0011e33ccb",
      "loc": {
        "type": "Point",
        "coordinates": [106.75896227359772, 10.87522173165726]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 509,
      "numberOfCar": 285,
      "numberOfVan": 20,
      "numberOfTruck": 20,
      "numberOfBus": 21,
      "numberOfFireTruck": 23,
      "numberOfContainer": 17
    },
    {
      "camera": "58746314b807da0011e33cce",
      "loc": {
        "type": "Point",
        "coordinates": [106.76504015922545, 10.873330486658844]
      },
      "numberOfBicycle": 58,
      "numberOfMotorcycle": 523,
      "numberOfCar": 263,
      "numberOfVan": 18,
      "numberOfTruck": 18,
      "numberOfBus": 21,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "58746371b807da0011e33cd1",
      "loc": {
        "type": "Point",
        "coordinates": [106.77595138549805, 10.869679665045766]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 566,
      "numberOfCar": 265,
      "numberOfVan": 14,
      "numberOfTruck": 19,
      "numberOfBus": 21,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "587463bab807da0011e33cd3",
      "loc": {
        "type": "Point",
        "coordinates": [106.74839973449707, 10.874779213010948]
      },
      "numberOfBicycle": 114,
      "numberOfMotorcycle": 578,
      "numberOfCar": 283,
      "numberOfVan": 15,
      "numberOfTruck": 14,
      "numberOfBus": 17,
      "numberOfFireTruck": 22,
      "numberOfContainer": 13
    },
    {
      "camera": "5874644cb807da0011e33cd5",
      "loc": {
        "type": "Point",
        "coordinates": [106.75098538398743, 10.875806487432769]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 628,
      "numberOfCar": 279,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "58746488b807da0011e33cd7",
      "loc": {
        "type": "Point",
        "coordinates": [106.74850702285767, 10.874305085161257]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 555,
      "numberOfCar": 253,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 20
    },
    {
      "camera": "587464e2b807da0011e33cd9",
      "loc": {
        "type": "Point",
        "coordinates": [106.73313260078429, 10.869958878088818]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 520,
      "numberOfCar": 284,
      "numberOfVan": 25,
      "numberOfTruck": 15,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 24
    },
    {
      "camera": "58746536b807da0011e33cdc",
      "loc": {
        "type": "Point",
        "coordinates": [106.72351956367493, 10.865949775189556]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 557,
      "numberOfCar": 270,
      "numberOfVan": 22,
      "numberOfTruck": 17,
      "numberOfBus": 21,
      "numberOfFireTruck": 23,
      "numberOfContainer": 20
    },
    {
      "camera": "5874656eb807da0011e33cde",
      "loc": {
        "type": "Point",
        "coordinates": [106.72421157360077, 10.864743346036335]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 479,
      "numberOfCar": 277,
      "numberOfVan": 21,
      "numberOfTruck": 18,
      "numberOfBus": 23,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "587470c2b807da0011e33ce4",
      "loc": {
        "type": "Point",
        "coordinates": [106.71509742736816, 10.789202764983797]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 588,
      "numberOfCar": 295,
      "numberOfVan": 18,
      "numberOfTruck": 21,
      "numberOfBus": 20,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "587475abb807da0011e33cea",
      "loc": {
        "type": "Point",
        "coordinates": [106.66478991508484, 10.809173842715063]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 517,
      "numberOfCar": 271,
      "numberOfVan": 24,
      "numberOfTruck": 13,
      "numberOfBus": 14,
      "numberOfFireTruck": 13,
      "numberOfContainer": 18
    },
    {
      "camera": "5874769eb807da0011e33cec",
      "loc": {
        "type": "Point",
        "coordinates": [106.65775716304778, 10.800105346405301]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 575,
      "numberOfCar": 248,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 22
    },
    {
      "camera": "587476e3b807da0011e33cee",
      "loc": {
        "type": "Point",
        "coordinates": [106.65785372257233, 10.801038028330572]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 572,
      "numberOfCar": 271,
      "numberOfVan": 22,
      "numberOfTruck": 26,
      "numberOfBus": 16,
      "numberOfFireTruck": 13,
      "numberOfContainer": 17
    },
    {
      "camera": "587478d8b807da0011e33cf3",
      "loc": {
        "type": "Point",
        "coordinates": [106.65359437465668, 10.792838759247182]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 519,
      "numberOfCar": 281,
      "numberOfVan": 22,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 17
    },
    {
      "camera": "58747923b807da0011e33cf5",
      "loc": {
        "type": "Point",
        "coordinates": [106.6536158323288, 10.793197086735836]
      },
      "numberOfBicycle": 67,
      "numberOfMotorcycle": 476,
      "numberOfCar": 262,
      "numberOfVan": 26,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "5874796db807da0011e33cf7",
      "loc": {
        "type": "Point",
        "coordinates": [106.63079023361206, 10.819922896525796]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 549,
      "numberOfCar": 273,
      "numberOfVan": 21,
      "numberOfTruck": 12,
      "numberOfBus": 17,
      "numberOfFireTruck": 14,
      "numberOfContainer": 18
    },
    {
      "camera": "587479b1b807da0011e33cf9",
      "loc": {
        "type": "Point",
        "coordinates": [106.62830114364624, 10.818953389832823]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 561,
      "numberOfCar": 275,
      "numberOfVan": 12,
      "numberOfTruck": 18,
      "numberOfBus": 13,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "5875cef0b807da0011e33d14",
      "loc": {
        "type": "Point",
        "coordinates": [106.6327965259552, 10.813462972137799]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 509,
      "numberOfCar": 286,
      "numberOfVan": 14,
      "numberOfTruck": 23,
      "numberOfBus": 22,
      "numberOfFireTruck": 12,
      "numberOfContainer": 18
    },
    {
      "camera": "5875d4f8b807da0011e33d1a",
      "loc": {
        "type": "Point",
        "coordinates": [106.67093753814697, 10.737271760059064]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 586,
      "numberOfCar": 270,
      "numberOfVan": 23,
      "numberOfTruck": 21,
      "numberOfBus": 13,
      "numberOfFireTruck": 21,
      "numberOfContainer": 17
    },
    {
      "camera": "587654d3b807da0011e33d36",
      "loc": {
        "type": "Point",
        "coordinates": [106.76758289337158, 10.76254800449792]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 561,
      "numberOfCar": 290,
      "numberOfVan": 14,
      "numberOfTruck": 15,
      "numberOfBus": 13,
      "numberOfFireTruck": 21,
      "numberOfContainer": 17
    },
    {
      "camera": "587c782db807da0011e33d3b",
      "loc": {
        "type": "Point",
        "coordinates": [106.73827707767487, 10.801011681423287]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 468,
      "numberOfCar": 275,
      "numberOfVan": 21,
      "numberOfTruck": 12,
      "numberOfBus": 21,
      "numberOfFireTruck": 22,
      "numberOfContainer": 18
    },
    {
      "camera": "587c79e9b807da0011e33d3d",
      "loc": {
        "type": "Point",
        "coordinates": [106.71896517276764, 10.798687875108948]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 556,
      "numberOfCar": 256,
      "numberOfVan": 19,
      "numberOfTruck": 13,
      "numberOfBus": 17,
      "numberOfFireTruck": 12,
      "numberOfContainer": 18
    },
    {
      "camera": "587c8183b807da0011e33d3f",
      "loc": {
        "type": "Point",
        "coordinates": [106.66226863861083, 10.801306766652873]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 597,
      "numberOfCar": 279,
      "numberOfVan": 18,
      "numberOfTruck": 20,
      "numberOfBus": 21,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "587c8661b807da0011e33d43",
      "loc": {
        "type": "Point",
        "coordinates": [106.66051983833313, 10.799968342036713]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 577,
      "numberOfCar": 287,
      "numberOfVan": 13,
      "numberOfTruck": 23,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "587c8c20b807da0011e33d47",
      "loc": {
        "type": "Point",
        "coordinates": [106.67493402957916, 10.799446670984318]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 618,
      "numberOfCar": 272,
      "numberOfVan": 14,
      "numberOfTruck": 16,
      "numberOfBus": 13,
      "numberOfFireTruck": 22,
      "numberOfContainer": 16
    },
    {
      "camera": "587c8d97b807da0011e33d49",
      "loc": {
        "type": "Point",
        "coordinates": [106.66918873786926, 10.80010007700767]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 523,
      "numberOfCar": 281,
      "numberOfVan": 21,
      "numberOfTruck": 18,
      "numberOfBus": 13,
      "numberOfFireTruck": 25,
      "numberOfContainer": 11
    },
    {
      "camera": "587ed91db807da0011e33d4e",
      "loc": {
        "type": "Point",
        "coordinates": [106.69796347618102, 10.802481835315886]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 491,
      "numberOfCar": 259,
      "numberOfVan": 22,
      "numberOfTruck": 17,
      "numberOfBus": 17,
      "numberOfFireTruck": 22,
      "numberOfContainer": 22
    },
    {
      "camera": "587ee0ecb807da0011e33d50",
      "loc": {
        "type": "Point",
        "coordinates": [106.69648289680481, 10.80199705418249]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 512,
      "numberOfCar": 272,
      "numberOfVan": 19,
      "numberOfTruck": 17,
      "numberOfBus": 18,
      "numberOfFireTruck": 21,
      "numberOfContainer": 16
    },
    {
      "camera": "587ee2aeb807da0011e33d52",
      "loc": {
        "type": "Point",
        "coordinates": [106.68323278427124, 10.802039209094714]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 422,
      "numberOfCar": 257,
      "numberOfVan": 16,
      "numberOfTruck": 16,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "587ee7d7b807da0011e33d55",
      "loc": {
        "type": "Point",
        "coordinates": [106.69485211372375, 10.803187928175252]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 591,
      "numberOfCar": 235,
      "numberOfVan": 13,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 19
    },
    {
      "camera": "587ef2e4b807da0011e33d57",
      "loc": {
        "type": "Point",
        "coordinates": [106.6723108291626, 10.797686683173783]
      },
      "numberOfBicycle": 63,
      "numberOfMotorcycle": 576,
      "numberOfCar": 261,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 18,
      "numberOfFireTruck": 26,
      "numberOfContainer": 19
    },
    {
      "camera": "587ef5dfb807da0011e33d59",
      "loc": {
        "type": "Point",
        "coordinates": [106.67985320091246, 10.792891454492903]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 516,
      "numberOfCar": 279,
      "numberOfVan": 17,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 17,
      "numberOfContainer": 15
    },
    {
      "camera": "587ef859b807da0011e33d5b",
      "loc": {
        "type": "Point",
        "coordinates": [106.68986856937408, 10.820054622736702]
      },
      "numberOfBicycle": 72,
      "numberOfMotorcycle": 577,
      "numberOfCar": 288,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 26,
      "numberOfFireTruck": 23,
      "numberOfContainer": 16
    },
    {
      "camera": "587efb60b807da0011e33d5d",
      "loc": {
        "type": "Point",
        "coordinates": [106.68919265270233, 10.819274802725177]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 620,
      "numberOfCar": 248,
      "numberOfVan": 15,
      "numberOfTruck": 23,
      "numberOfBus": 23,
      "numberOfFireTruck": 22,
      "numberOfContainer": 15
    },
    {
      "camera": "589add0fb3bf7600110283ae",
      "loc": {
        "type": "Point",
        "coordinates": [106.62333905696869, 10.855613311493862]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 569,
      "numberOfCar": 269,
      "numberOfVan": 23,
      "numberOfTruck": 19,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "589b3705b3bf7600110283bd",
      "loc": {
        "type": "Point",
        "coordinates": [106.60738527774811, 10.855133884772608]
      },
      "numberOfBicycle": 117,
      "numberOfMotorcycle": 440,
      "numberOfCar": 277,
      "numberOfVan": 14,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 22
    },
    {
      "camera": "589b39d9b3bf7600110283c1",
      "loc": {
        "type": "Point",
        "coordinates": [106.60715997219086, 10.855465795661573]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 508,
      "numberOfCar": 255,
      "numberOfVan": 15,
      "numberOfTruck": 15,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 26
    },
    {
      "camera": "589b3f7db3bf7600110283c6",
      "loc": {
        "type": "Point",
        "coordinates": [106.58692538738251, 10.884108842088843]
      },
      "numberOfBicycle": 117,
      "numberOfMotorcycle": 598,
      "numberOfCar": 268,
      "numberOfVan": 20,
      "numberOfTruck": 19,
      "numberOfBus": 22,
      "numberOfFireTruck": 25,
      "numberOfContainer": 18
    },
    {
      "camera": "589b4644b3bf7600110283ce",
      "loc": {
        "type": "Point",
        "coordinates": [106.69312477111816, 10.898421431845435]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 449,
      "numberOfCar": 240,
      "numberOfVan": 22,
      "numberOfTruck": 21,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 14
    },
    {
      "camera": "589d0b74b3bf7600110283d4",
      "loc": {
        "type": "Point",
        "coordinates": [106.73042893409729, 10.799741757751526]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 586,
      "numberOfCar": 240,
      "numberOfVan": 22,
      "numberOfTruck": 16,
      "numberOfBus": 12,
      "numberOfFireTruck": 11,
      "numberOfContainer": 15
    },
    {
      "camera": "589d0bceb3bf7600110283d6",
      "loc": {
        "type": "Point",
        "coordinates": [106.7273873090744, 10.799030387373364]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 555,
      "numberOfCar": 263,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 21
    },
    {
      "camera": "58abbee5bd82540010390ba2",
      "loc": {
        "type": "Point",
        "coordinates": [106.72939896583557, 10.79916212275568]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 501,
      "numberOfCar": 274,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "58abbf72bd82540010390ba4",
      "loc": {
        "type": "Point",
        "coordinates": [106.72631978988647, 10.79856140894338]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 646,
      "numberOfCar": 264,
      "numberOfVan": 21,
      "numberOfTruck": 21,
      "numberOfBus": 22,
      "numberOfFireTruck": 15,
      "numberOfContainer": 22
    },
    {
      "camera": "58abc0cbbd82540010390ba6",
      "loc": {
        "type": "Point",
        "coordinates": [106.72431148588657, 10.798228995993401]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 542,
      "numberOfCar": 251,
      "numberOfVan": 19,
      "numberOfTruck": 15,
      "numberOfBus": 25,
      "numberOfFireTruck": 14,
      "numberOfContainer": 12
    },
    {
      "camera": "58ad6214bd82540010390be2",
      "loc": {
        "type": "Point",
        "coordinates": [106.6473662853241, 10.801312036029335]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 605,
      "numberOfCar": 256,
      "numberOfVan": 17,
      "numberOfTruck": 19,
      "numberOfBus": 15,
      "numberOfFireTruck": 13,
      "numberOfContainer": 21
    },
    {
      "camera": "58ad6961bd82540010390be5",
      "loc": {
        "type": "Point",
        "coordinates": [106.68037891387938, 10.799046195622289]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 565,
      "numberOfCar": 245,
      "numberOfVan": 13,
      "numberOfTruck": 20,
      "numberOfBus": 23,
      "numberOfFireTruck": 15,
      "numberOfContainer": 20
    },
    {
      "camera": "58ad69c4bd82540010390be7",
      "loc": {
        "type": "Point",
        "coordinates": [106.68036818504333, 10.799309666315283]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 533,
      "numberOfCar": 266,
      "numberOfVan": 20,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "58ad7291bd82540010390bf9",
      "loc": {
        "type": "Point",
        "coordinates": [106.68719708919525, 10.803841326058494]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 465,
      "numberOfCar": 267,
      "numberOfVan": 20,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 23,
      "numberOfContainer": 14
    },
    {
      "camera": "58af8a0bbd82540010390c25",
      "loc": {
        "type": "Point",
        "coordinates": [106.68854355812073, 10.784533873087986]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 596,
      "numberOfCar": 296,
      "numberOfVan": 14,
      "numberOfTruck": 14,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "58af8b69bd82540010390c28",
      "loc": {
        "type": "Point",
        "coordinates": [106.69091463088989, 10.783274419182169]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 566,
      "numberOfCar": 255,
      "numberOfVan": 21,
      "numberOfTruck": 23,
      "numberOfBus": 19,
      "numberOfFireTruck": 15,
      "numberOfContainer": 18
    },
    {
      "camera": "58af8d68bd82540010390c2e",
      "loc": {
        "type": "Point",
        "coordinates": [106.6907000541687, 10.783337655487262]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 534,
      "numberOfCar": 251,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 22,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "58af8eb2bd82540010390c30",
      "loc": {
        "type": "Point",
        "coordinates": [106.69508278369902, 10.779754243901596]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 564,
      "numberOfCar": 264,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 21,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "58af9670bd82540010390c34",
      "loc": {
        "type": "Point",
        "coordinates": [106.69371485710144, 10.821229617977183]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 576,
      "numberOfCar": 273,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 15,
      "numberOfContainer": 14
    },
    {
      "camera": "58af994abd82540010390c37",
      "loc": {
        "type": "Point",
        "coordinates": [106.70623540878296, 10.782631515992442]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 592,
      "numberOfCar": 278,
      "numberOfVan": 15,
      "numberOfTruck": 17,
      "numberOfBus": 26,
      "numberOfFireTruck": 11,
      "numberOfContainer": 21
    },
    {
      "camera": "58af99abbd82540010390c39",
      "loc": {
        "type": "Point",
        "coordinates": [106.70791447162627, 10.784623457474549]
      },
      "numberOfBicycle": 115,
      "numberOfMotorcycle": 628,
      "numberOfCar": 272,
      "numberOfVan": 20,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 12
    },
    {
      "camera": "58af9a07bd82540010390c3b",
      "loc": {
        "type": "Point",
        "coordinates": [106.70326352119446, 10.785292704694674]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 582,
      "numberOfCar": 288,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 15,
      "numberOfFireTruck": 18,
      "numberOfContainer": 21
    },
    {
      "camera": "58afccadbd82540010390c3f",
      "loc": {
        "type": "Point",
        "coordinates": [106.59646332263947, 10.696633500705465]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 609,
      "numberOfCar": 253,
      "numberOfVan": 19,
      "numberOfTruck": 24,
      "numberOfBus": 25,
      "numberOfFireTruck": 23,
      "numberOfContainer": 17
    },
    {
      "camera": "58afcd9bbd82540010390c41",
      "loc": {
        "type": "Point",
        "coordinates": [106.59669935703278, 10.696554432630442]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 492,
      "numberOfCar": 253,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 20,
      "numberOfFireTruck": 16,
      "numberOfContainer": 16
    },
    {
      "camera": "58afea5dbd82540010390c4d",
      "loc": {
        "type": "Point",
        "coordinates": [106.5804773569107, 10.674193154478866]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 627,
      "numberOfCar": 256,
      "numberOfVan": 18,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 21
    },
    {
      "camera": "58aff01fbd82540010390c50",
      "loc": {
        "type": "Point",
        "coordinates": [106.58026278018951, 10.673702895852937]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 563,
      "numberOfCar": 276,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 19
    },
    {
      "camera": "58aff2c6bd82540010390c55",
      "loc": {
        "type": "Point",
        "coordinates": [106.56980752944946, 10.66478848556424]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 415,
      "numberOfCar": 249,
      "numberOfVan": 13,
      "numberOfTruck": 20,
      "numberOfBus": 24,
      "numberOfFireTruck": 14,
      "numberOfContainer": 16
    },
    {
      "camera": "58affc6017139d0010f35cc8",
      "loc": {
        "type": "Point",
        "coordinates": [106.71401381492615, 10.826272034039675]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 589,
      "numberOfCar": 277,
      "numberOfVan": 16,
      "numberOfTruck": 22,
      "numberOfBus": 25,
      "numberOfFireTruck": 14,
      "numberOfContainer": 14
    },
    {
      "camera": "58b5510817139d0010f35d4e",
      "loc": {
        "type": "Point",
        "coordinates": [106.71435713768005, 10.82547115439782]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 467,
      "numberOfCar": 283,
      "numberOfVan": 19,
      "numberOfTruck": 23,
      "numberOfBus": 15,
      "numberOfFireTruck": 20,
      "numberOfContainer": 13
    },
    {
      "camera": "58b5528e17139d0010f35d52",
      "loc": {
        "type": "Point",
        "coordinates": [106.80777311325073, 10.871944970874125]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 554,
      "numberOfCar": 266,
      "numberOfVan": 24,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 24,
      "numberOfContainer": 22
    },
    {
      "camera": "58b555ac17139d0010f35d59",
      "loc": {
        "type": "Point",
        "coordinates": [106.65607273578644, 10.744381576544276]
      },
      "numberOfBicycle": 117,
      "numberOfMotorcycle": 574,
      "numberOfCar": 276,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 23,
      "numberOfFireTruck": 13,
      "numberOfContainer": 15
    },
    {
      "camera": "58b5752e17139d0010f35d5f",
      "loc": {
        "type": "Point",
        "coordinates": [106.69517397880554, 10.779469677034921]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 510,
      "numberOfCar": 261,
      "numberOfVan": 15,
      "numberOfTruck": 13,
      "numberOfBus": 17,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "58c2717ed56e930010a39ac0",
      "loc": {
        "type": "Point",
        "coordinates": [106.65606251653571, 10.741807325938474]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 625,
      "numberOfCar": 253,
      "numberOfVan": 15,
      "numberOfTruck": 14,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "58d7b3e8c1e33c00112b3207",
      "loc": {
        "type": "Point",
        "coordinates": [106.59536361694336, 10.690149850119596]
      },
      "numberOfBicycle": 121,
      "numberOfMotorcycle": 602,
      "numberOfCar": 243,
      "numberOfVan": 21,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "58d7b5a7c1e33c00112b320a",
      "loc": {
        "type": "Point",
        "coordinates": [106.57628774642944, 10.685964395604419]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 519,
      "numberOfCar": 297,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 21
    },
    {
      "camera": "58d7bbf2c1e33c00112b3216",
      "loc": {
        "type": "Point",
        "coordinates": [106.57079458236694, 10.665626693756879]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 568,
      "numberOfCar": 263,
      "numberOfVan": 15,
      "numberOfTruck": 13,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "58d7c20ac1e33c00112b321c",
      "loc": {
        "type": "Point",
        "coordinates": [106.69480919837952, 10.820765943275457]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 501,
      "numberOfCar": 268,
      "numberOfVan": 18,
      "numberOfTruck": 21,
      "numberOfBus": 16,
      "numberOfFireTruck": 13,
      "numberOfContainer": 23
    },
    {
      "camera": "58d7c2e6c1e33c00112b321e",
      "loc": {
        "type": "Point",
        "coordinates": [106.62542581558226, 10.82698333982128]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 447,
      "numberOfCar": 252,
      "numberOfVan": 14,
      "numberOfTruck": 21,
      "numberOfBus": 16,
      "numberOfFireTruck": 11,
      "numberOfContainer": 17
    },
    {
      "camera": "58d8ec0adc195800111e042b",
      "loc": {
        "type": "Point",
        "coordinates": [106.75608158111572, 10.793523796720807]
      },
      "numberOfBicycle": 113,
      "numberOfMotorcycle": 569,
      "numberOfCar": 295,
      "numberOfVan": 14,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 22
    },
    {
      "camera": "58df4adedc195800111e04b4",
      "loc": {
        "type": "Point",
        "coordinates": [106.66659235954285, 10.804968960996266]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 533,
      "numberOfCar": 279,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 25,
      "numberOfContainer": 15
    },
    {
      "camera": "58df4d95dc195800111e04b9",
      "loc": {
        "type": "Point",
        "coordinates": [106.67287945747375, 10.807961915430065]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 668,
      "numberOfCar": 262,
      "numberOfVan": 22,
      "numberOfTruck": 15,
      "numberOfBus": 13,
      "numberOfFireTruck": 19,
      "numberOfContainer": 22
    },
    {
      "camera": "58df4e22dc195800111e04bb",
      "loc": {
        "type": "Point",
        "coordinates": [106.66859328746794, 10.814163770011437]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 596,
      "numberOfCar": 265,
      "numberOfVan": 15,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 18,
      "numberOfContainer": 21
    },
    {
      "camera": "58df5016dc195800111e04bd",
      "loc": {
        "type": "Point",
        "coordinates": [106.66856646537781, 10.813325973865927]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 625,
      "numberOfCar": 270,
      "numberOfVan": 12,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 14,
      "numberOfContainer": 9
    },
    {
      "camera": "58df50ffdc195800111e04c0",
      "loc": {
        "type": "Point",
        "coordinates": [106.66075587272644, 10.800948448836364]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 545,
      "numberOfCar": 271,
      "numberOfVan": 22,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 14
    },
    {
      "camera": "58e49783d9d6200011e0b9ce",
      "loc": {
        "type": "Point",
        "coordinates": [106.62476062774657, 10.82747334948839]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 558,
      "numberOfCar": 275,
      "numberOfVan": 14,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "58e49ff8d9d6200011e0b9d4",
      "loc": {
        "type": "Point",
        "coordinates": [106.6872239112854, 10.786315016471113]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 594,
      "numberOfCar": 279,
      "numberOfVan": 17,
      "numberOfTruck": 13,
      "numberOfBus": 23,
      "numberOfFireTruck": 16,
      "numberOfContainer": 12
    },
    {
      "camera": "591c6833a6bfb500119400a3",
      "loc": {
        "type": "Point",
        "coordinates": [106.61337733268738, 10.890809558636011]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 522,
      "numberOfCar": 248,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 19
    },
    {
      "camera": "59414c883dcfc400106f260b",
      "loc": {
        "type": "Point",
        "coordinates": [106.64510786533354, 10.801865320043618]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 489,
      "numberOfCar": 294,
      "numberOfVan": 21,
      "numberOfTruck": 22,
      "numberOfBus": 20,
      "numberOfFireTruck": 22,
      "numberOfContainer": 16
    },
    {
      "camera": "595d92013dcfc400106f2877",
      "loc": {
        "type": "Point",
        "coordinates": [106.7151403427124, 10.860702563100757]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 582,
      "numberOfCar": 267,
      "numberOfVan": 17,
      "numberOfTruck": 13,
      "numberOfBus": 15,
      "numberOfFireTruck": 17,
      "numberOfContainer": 13
    },
    {
      "camera": "595d9b3b3dcfc400106f287e",
      "loc": {
        "type": "Point",
        "coordinates": [106.70542538166046, 10.859285378559079]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 518,
      "numberOfCar": 266,
      "numberOfVan": 19,
      "numberOfTruck": 13,
      "numberOfBus": 17,
      "numberOfFireTruck": 18,
      "numberOfContainer": 22
    },
    {
      "camera": "595da2853dcfc400106f2883",
      "loc": {
        "type": "Point",
        "coordinates": [106.69882714748383, 10.860101972703431]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 512,
      "numberOfCar": 281,
      "numberOfVan": 19,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 15,
      "numberOfContainer": 19
    },
    {
      "camera": "595da2dd3dcfc400106f2885",
      "loc": {
        "type": "Point",
        "coordinates": [106.69870913028716, 10.86011777772936]
      },
      "numberOfBicycle": 62,
      "numberOfMotorcycle": 604,
      "numberOfCar": 263,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 12
    },
    {
      "camera": "595dc2f03dcfc400106f2896",
      "loc": {
        "type": "Point",
        "coordinates": [106.68622612953186, 10.861092419378847]
      },
      "numberOfBicycle": 71,
      "numberOfMotorcycle": 507,
      "numberOfCar": 266,
      "numberOfVan": 16,
      "numberOfTruck": 16,
      "numberOfBus": 24,
      "numberOfFireTruck": 16,
      "numberOfContainer": 19
    },
    {
      "camera": "595dcab53dcfc400106f289d",
      "loc": {
        "type": "Point",
        "coordinates": [106.67849063873291, 10.861629788008976]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 573,
      "numberOfCar": 254,
      "numberOfVan": 15,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "595dd3a63dcfc400106f28a7",
      "loc": {
        "type": "Point",
        "coordinates": [106.67101800441742, 10.861766764171795]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 530,
      "numberOfCar": 280,
      "numberOfVan": 13,
      "numberOfTruck": 17,
      "numberOfBus": 13,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "595dd4133dcfc400106f28a9",
      "loc": {
        "type": "Point",
        "coordinates": [106.67102336883545, 10.861961691679786]
      },
      "numberOfBicycle": 113,
      "numberOfMotorcycle": 516,
      "numberOfCar": 263,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 23
    },
    {
      "camera": "595dd4f43dcfc400106f28ab",
      "loc": {
        "type": "Point",
        "coordinates": [106.66330933570862, 10.86164032463911]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 618,
      "numberOfCar": 266,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 23
    },
    {
      "camera": "595dd7693dcfc400106f28b0",
      "loc": {
        "type": "Point",
        "coordinates": [106.6542649269104, 10.861924813512363]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 596,
      "numberOfCar": 254,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "595dd9ac3dcfc400106f28b4",
      "loc": {
        "type": "Point",
        "coordinates": [106.65329933166504, 10.861982764916263]
      },
      "numberOfBicycle": 114,
      "numberOfMotorcycle": 542,
      "numberOfCar": 272,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "595ddb493dcfc400106f28b6",
      "loc": {
        "type": "Point",
        "coordinates": [106.64973199367523, 10.862088131076382]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 568,
      "numberOfCar": 273,
      "numberOfVan": 17,
      "numberOfTruck": 16,
      "numberOfBus": 21,
      "numberOfFireTruck": 16,
      "numberOfContainer": 19
    },
    {
      "camera": "595ddc123dcfc400106f28ba",
      "loc": {
        "type": "Point",
        "coordinates": [106.64981245994568, 10.86175095923314]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 539,
      "numberOfCar": 289,
      "numberOfVan": 14,
      "numberOfTruck": 22,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 20
    },
    {
      "camera": "595f86c43dcfc400106f28ea",
      "loc": {
        "type": "Point",
        "coordinates": [106.63948595523833, 10.856624846667557]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 576,
      "numberOfCar": 290,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 21,
      "numberOfFireTruck": 16,
      "numberOfContainer": 20
    },
    {
      "camera": "595f874d3dcfc400106f28ec",
      "loc": {
        "type": "Point",
        "coordinates": [106.63957178592682, 10.856666993892127]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 607,
      "numberOfCar": 295,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 17,
      "numberOfFireTruck": 23,
      "numberOfContainer": 22
    },
    {
      "camera": "595f8d233dcfc400106f28f0",
      "loc": {
        "type": "Point",
        "coordinates": [106.63250684738159, 10.852810498226859]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 515,
      "numberOfCar": 241,
      "numberOfVan": 17,
      "numberOfTruck": 16,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 19
    },
    {
      "camera": "595f8d813dcfc400106f28f2",
      "loc": {
        "type": "Point",
        "coordinates": [106.63243174552917, 10.852915867622238]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 561,
      "numberOfCar": 258,
      "numberOfVan": 20,
      "numberOfTruck": 19,
      "numberOfBus": 15,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "597bf277faa7ea0011c7c29f",
      "loc": {
        "type": "Point",
        "coordinates": [106.79230213165283, 10.820892400083416]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 580,
      "numberOfCar": 265,
      "numberOfVan": 16,
      "numberOfTruck": 22,
      "numberOfBus": 17,
      "numberOfFireTruck": 14,
      "numberOfContainer": 22
    },
    {
      "camera": "5990ffdbbec3b90016d2ad2d",
      "loc": {
        "type": "Point",
        "coordinates": [106.71340227127075, 10.77058473176459]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 562,
      "numberOfCar": 283,
      "numberOfVan": 18,
      "numberOfTruck": 13,
      "numberOfBus": 20,
      "numberOfFireTruck": 17,
      "numberOfContainer": 18
    },
    {
      "camera": "59ca2d9d02eb490011a0a3f0",
      "loc": {
        "type": "Point",
        "coordinates": [106.60696148872375, 10.834296519079377]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 510,
      "numberOfCar": 272,
      "numberOfVan": 15,
      "numberOfTruck": 13,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 21
    },
    {
      "camera": "59ca301902eb490011a0a400",
      "loc": {
        "type": "Point",
        "coordinates": [106.59129202365875, 10.770236917186804]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 566,
      "numberOfCar": 278,
      "numberOfVan": 15,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 17,
      "numberOfContainer": 13
    },
    {
      "camera": "59ca308302eb490011a0a403",
      "loc": {
        "type": "Point",
        "coordinates": [106.59075558185577, 10.767201427461313]
      },
      "numberOfBicycle": 115,
      "numberOfMotorcycle": 501,
      "numberOfCar": 262,
      "numberOfVan": 23,
      "numberOfTruck": 12,
      "numberOfBus": 19,
      "numberOfFireTruck": 10,
      "numberOfContainer": 17
    },
    {
      "camera": "59ca30fd02eb490011a0a406",
      "loc": {
        "type": "Point",
        "coordinates": [106.59132421016692, 10.75646629926325]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 535,
      "numberOfCar": 261,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "59ca317602eb490011a0a408",
      "loc": {
        "type": "Point",
        "coordinates": [106.59397423267365, 10.749235550797692]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 555,
      "numberOfCar": 279,
      "numberOfVan": 22,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 19
    },
    {
      "camera": "59ca31d602eb490011a0a40b",
      "loc": {
        "type": "Point",
        "coordinates": [106.6028094291687, 10.73420958591557]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 506,
      "numberOfCar": 283,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 23
    },
    {
      "camera": "59ca321b02eb490011a0a40d",
      "loc": {
        "type": "Point",
        "coordinates": [106.60178482532501, 10.728617480445795]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 599,
      "numberOfCar": 259,
      "numberOfVan": 14,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 11
    },
    {
      "camera": "59ca329d02eb490011a0a410",
      "loc": {
        "type": "Point",
        "coordinates": [106.60102844238281, 10.724000357838937]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 484,
      "numberOfCar": 264,
      "numberOfVan": 15,
      "numberOfTruck": 18,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 13
    },
    {
      "camera": "59d3414302eb490011a0a610",
      "loc": {
        "type": "Point",
        "coordinates": [106.80381417274474, 10.86748282878141]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 578,
      "numberOfCar": 288,
      "numberOfVan": 23,
      "numberOfTruck": 22,
      "numberOfBus": 17,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "59d34ce302eb490011a0a616",
      "loc": {
        "type": "Point",
        "coordinates": [106.77621960639952, 10.810448995724885]
      },
      "numberOfBicycle": 113,
      "numberOfMotorcycle": 580,
      "numberOfCar": 258,
      "numberOfVan": 12,
      "numberOfTruck": 13,
      "numberOfBus": 16,
      "numberOfFireTruck": 15,
      "numberOfContainer": 18
    },
    {
      "camera": "5a10c79f02eb490011a0b0dd",
      "loc": {
        "type": "Point",
        "coordinates": [106.71671748161314, 10.771317249031346]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 534,
      "numberOfCar": 287,
      "numberOfVan": 17,
      "numberOfTruck": 13,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 21
    },
    {
      "camera": "5a60604f8576340017d0660b",
      "loc": {
        "type": "Point",
        "coordinates": [106.6863763332367, 10.824317251676183]
      },
      "numberOfBicycle": 68,
      "numberOfMotorcycle": 468,
      "numberOfCar": 278,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "5a6060a88576340017d0660d",
      "loc": {
        "type": "Point",
        "coordinates": [106.689493060112, 10.826124503740187]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 580,
      "numberOfCar": 260,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 25,
      "numberOfFireTruck": 19,
      "numberOfContainer": 16
    },
    {
      "camera": "5a6060e08576340017d0660f",
      "loc": {
        "type": "Point",
        "coordinates": [106.6891497373581, 10.826272034039675]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 483,
      "numberOfCar": 286,
      "numberOfVan": 14,
      "numberOfTruck": 22,
      "numberOfBus": 26,
      "numberOfFireTruck": 12,
      "numberOfContainer": 14
    },
    {
      "camera": "5a6065c58576340017d06615",
      "loc": {
        "type": "Point",
        "coordinates": [106.67798638343811, 10.879710097959782]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 605,
      "numberOfCar": 271,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 11
    },
    {
      "camera": "5a6066608576340017d06617",
      "loc": {
        "type": "Point",
        "coordinates": [106.64721608161926, 10.839438820584958]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 551,
      "numberOfCar": 297,
      "numberOfVan": 15,
      "numberOfTruck": 17,
      "numberOfBus": 21,
      "numberOfFireTruck": 21,
      "numberOfContainer": 19
    },
    {
      "camera": "5a6069238576340017d0661c",
      "loc": {
        "type": "Point",
        "coordinates": [106.69843554496765, 10.802618838537821]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 477,
      "numberOfCar": 266,
      "numberOfVan": 18,
      "numberOfTruck": 21,
      "numberOfBus": 20,
      "numberOfFireTruck": 13,
      "numberOfContainer": 16
    },
    {
      "camera": "5a606a0f8576340017d0661e",
      "loc": {
        "type": "Point",
        "coordinates": [106.7041164636612, 10.820080967971945]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 591,
      "numberOfCar": 271,
      "numberOfVan": 10,
      "numberOfTruck": 17,
      "numberOfBus": 22,
      "numberOfFireTruck": 21,
      "numberOfContainer": 16
    },
    {
      "camera": "5a606a958576340017d06621",
      "loc": {
        "type": "Point",
        "coordinates": [106.70946478843688, 10.802866498049633]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 506,
      "numberOfCar": 267,
      "numberOfVan": 14,
      "numberOfTruck": 24,
      "numberOfBus": 20,
      "numberOfFireTruck": 22,
      "numberOfContainer": 20
    },
    {
      "camera": "5a606c078576340017d06624",
      "loc": {
        "type": "Point",
        "coordinates": [106.71891689300537, 10.84955456560158]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 574,
      "numberOfCar": 270,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 15,
      "numberOfFireTruck": 12,
      "numberOfContainer": 16
    },
    {
      "camera": "5a606c758576340017d06626",
      "loc": {
        "type": "Point",
        "coordinates": [106.7127799987793, 10.81423226896388]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 548,
      "numberOfCar": 283,
      "numberOfVan": 18,
      "numberOfTruck": 17,
      "numberOfBus": 21,
      "numberOfFireTruck": 14,
      "numberOfContainer": 19
    },
    {
      "camera": "5a606cd08576340017d06628",
      "loc": {
        "type": "Point",
        "coordinates": [106.71005487442017, 10.814411419996292]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 690,
      "numberOfCar": 256,
      "numberOfVan": 20,
      "numberOfTruck": 23,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "5a606dbc8576340017d0662b",
      "loc": {
        "type": "Point",
        "coordinates": [106.72112703323363, 10.797818419145367]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 590,
      "numberOfCar": 261,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 24,
      "numberOfFireTruck": 18,
      "numberOfContainer": 14
    },
    {
      "camera": "5a607f078576340017d0666f",
      "loc": {
        "type": "Point",
        "coordinates": [106.60677909851074, 10.834444045353402]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 523,
      "numberOfCar": 252,
      "numberOfVan": 21,
      "numberOfTruck": 13,
      "numberOfBus": 26,
      "numberOfFireTruck": 23,
      "numberOfContainer": 21
    },
    {
      "camera": "5a607fa38576340017d06671",
      "loc": {
        "type": "Point",
        "coordinates": [106.60308837890624, 10.82538158219951]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 617,
      "numberOfCar": 292,
      "numberOfVan": 21,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "5a6082698576340017d06678",
      "loc": {
        "type": "Point",
        "coordinates": [106.59654378890991, 10.794767399221058]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 590,
      "numberOfCar": 271,
      "numberOfVan": 22,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 14,
      "numberOfContainer": 17
    },
    {
      "camera": "5a60839c8576340017d0667c",
      "loc": {
        "type": "Point",
        "coordinates": [106.59143686294556, 10.769962881175976]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 501,
      "numberOfCar": 274,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 22,
      "numberOfContainer": 18
    },
    {
      "camera": "5a6084208576340017d0667e",
      "loc": {
        "type": "Point",
        "coordinates": [106.59055709838867, 10.766100000884261]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 566,
      "numberOfCar": 274,
      "numberOfVan": 13,
      "numberOfTruck": 17,
      "numberOfBus": 21,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "5a6084898576340017d06680",
      "loc": {
        "type": "Point",
        "coordinates": [106.59053564071655, 10.764223877445483]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 510,
      "numberOfCar": 250,
      "numberOfVan": 21,
      "numberOfTruck": 16,
      "numberOfBus": 13,
      "numberOfFireTruck": 24,
      "numberOfContainer": 17
    },
    {
      "camera": "5a6085188576340017d06682",
      "loc": {
        "type": "Point",
        "coordinates": [106.5924346446991, 10.756329275028753]
      },
      "numberOfBicycle": 62,
      "numberOfMotorcycle": 526,
      "numberOfCar": 273,
      "numberOfVan": 24,
      "numberOfTruck": 25,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 18
    },
    {
      "camera": "5a6085688576340017d06684",
      "loc": {
        "type": "Point",
        "coordinates": [106.59175872802734, 10.756524271036032]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 446,
      "numberOfCar": 264,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 16
    },
    {
      "camera": "5a6085fb8576340017d06686",
      "loc": {
        "type": "Point",
        "coordinates": [106.59350752830505, 10.7499628496621]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 633,
      "numberOfCar": 267,
      "numberOfVan": 15,
      "numberOfTruck": 14,
      "numberOfBus": 22,
      "numberOfFireTruck": 20,
      "numberOfContainer": 15
    },
    {
      "camera": "5a6086e88576340017d0668a",
      "loc": {
        "type": "Point",
        "coordinates": [106.5942370891571, 10.748566223482499]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 546,
      "numberOfCar": 269,
      "numberOfVan": 20,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 15,
      "numberOfContainer": 22
    },
    {
      "camera": "5a6087858576340017d0668e",
      "loc": {
        "type": "Point",
        "coordinates": [106.59887194633484, 10.741456505518086]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 438,
      "numberOfCar": 273,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 21,
      "numberOfFireTruck": 12,
      "numberOfContainer": 22
    },
    {
      "camera": "5a6088218576340017d06693",
      "loc": {
        "type": "Point",
        "coordinates": [106.6016936302185, 10.72350490898877]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 403,
      "numberOfCar": 278,
      "numberOfVan": 18,
      "numberOfTruck": 24,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "5a823ba75058170011f6ea9e",
      "loc": {
        "type": "Point",
        "coordinates": [106.69576942920685, 10.768250150460064]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 469,
      "numberOfCar": 276,
      "numberOfVan": 17,
      "numberOfTruck": 12,
      "numberOfBus": 12,
      "numberOfFireTruck": 18,
      "numberOfContainer": 22
    },
    {
      "camera": "5a823bd55058170011f6eaa0",
      "loc": {
        "type": "Point",
        "coordinates": [106.69586062431335, 10.767533435639743]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 575,
      "numberOfCar": 268,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "5a823d555058170011f6eaa2",
      "loc": {
        "type": "Point",
        "coordinates": [106.70211553573608, 10.779111333190405]
      },
      "numberOfBicycle": 127,
      "numberOfMotorcycle": 515,
      "numberOfCar": 286,
      "numberOfVan": 22,
      "numberOfTruck": 17,
      "numberOfBus": 21,
      "numberOfFireTruck": 18,
      "numberOfContainer": 14
    },
    {
      "camera": "5a823e425058170011f6eaa4",
      "loc": {
        "type": "Point",
        "coordinates": [106.69577479362488, 10.79177431330566]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 540,
      "numberOfCar": 267,
      "numberOfVan": 12,
      "numberOfTruck": 24,
      "numberOfBus": 15,
      "numberOfFireTruck": 16,
      "numberOfContainer": 23
    },
    {
      "camera": "5a8241105058170011f6eaa6",
      "loc": {
        "type": "Point",
        "coordinates": [106.69578552246094, 10.79192186049289]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 644,
      "numberOfCar": 259,
      "numberOfVan": 20,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "5a82439f5058170011f6eaa9",
      "loc": {
        "type": "Point",
        "coordinates": [106.68364584445953, 10.75113811876003]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 502,
      "numberOfCar": 258,
      "numberOfVan": 23,
      "numberOfTruck": 21,
      "numberOfBus": 13,
      "numberOfFireTruck": 16,
      "numberOfContainer": 13
    },
    {
      "camera": "5a824b6c5058170011f6eaab",
      "loc": {
        "type": "Point",
        "coordinates": [106.62139713764189, 10.773841521502957]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 611,
      "numberOfCar": 259,
      "numberOfVan": 11,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 21
    },
    {
      "camera": "5a824c3e5058170011f6eaae",
      "loc": {
        "type": "Point",
        "coordinates": [106.6216492652893, 10.773883680362491]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 488,
      "numberOfCar": 259,
      "numberOfVan": 18,
      "numberOfTruck": 20,
      "numberOfBus": 20,
      "numberOfFireTruck": 23,
      "numberOfContainer": 14
    },
    {
      "camera": "5a824c905058170011f6eab0",
      "loc": {
        "type": "Point",
        "coordinates": [106.62178337574005, 10.7736939654481]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 586,
      "numberOfCar": 287,
      "numberOfVan": 20,
      "numberOfTruck": 16,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "5a824dc05058170011f6eab2",
      "loc": {
        "type": "Point",
        "coordinates": [106.65818095207213, 10.836604243182496]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 628,
      "numberOfCar": 294,
      "numberOfVan": 14,
      "numberOfTruck": 15,
      "numberOfBus": 11,
      "numberOfFireTruck": 28,
      "numberOfContainer": 11
    },
    {
      "camera": "5a824e465058170011f6eab4",
      "loc": {
        "type": "Point",
        "coordinates": [106.65832579135895, 10.836699080778736]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 592,
      "numberOfCar": 278,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 22,
      "numberOfContainer": 15
    },
    {
      "camera": "5a824ee15058170011f6eab6",
      "loc": {
        "type": "Point",
        "coordinates": [106.67790055274962, 10.830608338604561]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 487,
      "numberOfCar": 275,
      "numberOfVan": 18,
      "numberOfTruck": 13,
      "numberOfBus": 11,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "5a824f975058170011f6eab8",
      "loc": {
        "type": "Point",
        "coordinates": [106.67691349983214, 10.83107199807494]
      },
      "numberOfBicycle": 61,
      "numberOfMotorcycle": 453,
      "numberOfCar": 281,
      "numberOfVan": 12,
      "numberOfTruck": 15,
      "numberOfBus": 15,
      "numberOfFireTruck": 15,
      "numberOfContainer": 15
    },
    {
      "camera": "5a8253615058170011f6eabf",
      "loc": {
        "type": "Point",
        "coordinates": [106.71002268791199, 10.80307200259584]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 521,
      "numberOfCar": 284,
      "numberOfVan": 11,
      "numberOfTruck": 15,
      "numberOfBus": 21,
      "numberOfFireTruck": 11,
      "numberOfContainer": 13
    },
    {
      "camera": "5a8253bc5058170011f6eac1",
      "loc": {
        "type": "Point",
        "coordinates": [106.7093950510025, 10.803093079977254]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 534,
      "numberOfCar": 288,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 12,
      "numberOfContainer": 12
    },
    {
      "camera": "5a8254b05058170011f6eac3",
      "loc": {
        "type": "Point",
        "coordinates": [106.71225428581238, 10.809674419947996]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 514,
      "numberOfCar": 275,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 24,
      "numberOfContainer": 23
    },
    {
      "camera": "5a8254f25058170011f6eac5",
      "loc": {
        "type": "Point",
        "coordinates": [106.71241521835327, 10.810280380744318]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 523,
      "numberOfCar": 271,
      "numberOfVan": 13,
      "numberOfTruck": 14,
      "numberOfBus": 14,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "5a8255a55058170011f6eac7",
      "loc": {
        "type": "Point",
        "coordinates": [106.71143352985382, 10.816814141148168]
      },
      "numberOfBicycle": 68,
      "numberOfMotorcycle": 552,
      "numberOfCar": 279,
      "numberOfVan": 21,
      "numberOfTruck": 20,
      "numberOfBus": 16,
      "numberOfFireTruck": 12,
      "numberOfContainer": 19
    },
    {
      "camera": "5a8256315058170011f6eac9",
      "loc": {
        "type": "Point",
        "coordinates": [106.70956671237944, 10.813357588857302]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 578,
      "numberOfCar": 256,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 18,
      "numberOfFireTruck": 14,
      "numberOfContainer": 19
    },
    {
      "camera": "5a8256df5058170011f6eacb",
      "loc": {
        "type": "Point",
        "coordinates": [106.71319842338562, 10.817262014672893]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 465,
      "numberOfCar": 274,
      "numberOfVan": 22,
      "numberOfTruck": 21,
      "numberOfBus": 20,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "5a8257e25058170011f6eacd",
      "loc": {
        "type": "Point",
        "coordinates": [106.81409776210785, 10.870085314097832]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 474,
      "numberOfCar": 282,
      "numberOfVan": 20,
      "numberOfTruck": 24,
      "numberOfBus": 18,
      "numberOfFireTruck": 14,
      "numberOfContainer": 17
    },
    {
      "camera": "5a8259035058170011f6eacf",
      "loc": {
        "type": "Point",
        "coordinates": [106.70054912567139, 10.729123462199427]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 541,
      "numberOfCar": 257,
      "numberOfVan": 20,
      "numberOfTruck": 11,
      "numberOfBus": 16,
      "numberOfFireTruck": 11,
      "numberOfContainer": 16
    },
    {
      "camera": "5a825b7d5058170011f6ead4",
      "loc": {
        "type": "Point",
        "coordinates": [106.70044183731078, 10.728201098992683]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 603,
      "numberOfCar": 264,
      "numberOfVan": 23,
      "numberOfTruck": 13,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "5a825ded5058170011f6ead7",
      "loc": {
        "type": "Point",
        "coordinates": [106.6558313369751, 10.648450872522051]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 519,
      "numberOfCar": 286,
      "numberOfVan": 10,
      "numberOfTruck": 13,
      "numberOfBus": 17,
      "numberOfFireTruck": 23,
      "numberOfContainer": 16
    },
    {
      "camera": "5a82602c5058170011f6ead9",
      "loc": {
        "type": "Point",
        "coordinates": [106.57917380332947, 10.813578893703603]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 554,
      "numberOfCar": 267,
      "numberOfVan": 17,
      "numberOfTruck": 19,
      "numberOfBus": 13,
      "numberOfFireTruck": 20,
      "numberOfContainer": 24
    },
    {
      "camera": "5a82628e5058170011f6eadb",
      "loc": {
        "type": "Point",
        "coordinates": [106.65566504001617, 10.719936599159299]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 598,
      "numberOfCar": 267,
      "numberOfVan": 13,
      "numberOfTruck": 12,
      "numberOfBus": 14,
      "numberOfFireTruck": 22,
      "numberOfContainer": 25
    },
    {
      "camera": "5a8266105058170011f6eadf",
      "loc": {
        "type": "Point",
        "coordinates": [106.6557615995407, 10.719077457716304]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 489,
      "numberOfCar": 271,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "5a8267fe5058170011f6eae1",
      "loc": {
        "type": "Point",
        "coordinates": [106.69770061969756, 10.72357869929447]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 501,
      "numberOfCar": 293,
      "numberOfVan": 21,
      "numberOfTruck": 17,
      "numberOfBus": 20,
      "numberOfFireTruck": 13,
      "numberOfContainer": 18
    },
    {
      "camera": "5a8269c45058170011f6eae4",
      "loc": {
        "type": "Point",
        "coordinates": [106.7367374897003, 10.740961085277492]
      },
      "numberOfBicycle": 67,
      "numberOfMotorcycle": 610,
      "numberOfCar": 280,
      "numberOfVan": 14,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 22,
      "numberOfContainer": 17
    },
    {
      "camera": "5a8278f35058170011f6eaed",
      "loc": {
        "type": "Point",
        "coordinates": [106.67711734771729, 10.728448819673103]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 437,
      "numberOfCar": 256,
      "numberOfVan": 8,
      "numberOfTruck": 12,
      "numberOfBus": 16,
      "numberOfFireTruck": 22,
      "numberOfContainer": 18
    },
    {
      "camera": "5a8279865058170011f6eaef",
      "loc": {
        "type": "Point",
        "coordinates": [106.67788982391357, 10.727573890405179]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 621,
      "numberOfCar": 287,
      "numberOfVan": 21,
      "numberOfTruck": 18,
      "numberOfBus": 15,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "5aab1f852d266a0017e5afd4",
      "loc": {
        "type": "Point",
        "coordinates": [106.75403237342834, 10.74966771410236]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 487,
      "numberOfCar": 280,
      "numberOfVan": 17,
      "numberOfTruck": 13,
      "numberOfBus": 15,
      "numberOfFireTruck": 10,
      "numberOfContainer": 22
    },
    {
      "camera": "5abbb6d698d8fc001102dfc8",
      "loc": {
        "type": "Point",
        "coordinates": [106.72045111656189, 10.73144253440327]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 570,
      "numberOfCar": 270,
      "numberOfVan": 19,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 20,
      "numberOfContainer": 11
    },
    {
      "camera": "5abbb77298d8fc001102dfce",
      "loc": {
        "type": "Point",
        "coordinates": [106.7203277349472, 10.731563758142881]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 551,
      "numberOfCar": 268,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 25,
      "numberOfFireTruck": 23,
      "numberOfContainer": 14
    },
    {
      "camera": "5ad0621c98d8fc001102e268",
      "loc": {
        "type": "Point",
        "coordinates": [106.70233547687529, 10.779137682017028]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 552,
      "numberOfCar": 282,
      "numberOfVan": 20,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 18,
      "numberOfContainer": 13
    },
    {
      "camera": "5ad0644698d8fc001102e26b",
      "loc": {
        "type": "Point",
        "coordinates": [106.80682897567749, 10.826403757459977]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 539,
      "numberOfCar": 268,
      "numberOfVan": 20,
      "numberOfTruck": 12,
      "numberOfBus": 24,
      "numberOfFireTruck": 27,
      "numberOfContainer": 14
    },
    {
      "camera": "5ad064b498d8fc001102e26f",
      "loc": {
        "type": "Point",
        "coordinates": [106.80599212646483, 10.827699912826953]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 519,
      "numberOfCar": 302,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 19
    },
    {
      "camera": "5ad0679598d8fc001102e274",
      "loc": {
        "type": "Point",
        "coordinates": [106.78670704364777, 10.845234341358218]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 587,
      "numberOfCar": 258,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 13
    },
    {
      "camera": "5ad068b198d8fc001102e278",
      "loc": {
        "type": "Point",
        "coordinates": [106.65458679199219, 10.652425964575363]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 530,
      "numberOfCar": 298,
      "numberOfVan": 22,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 22
    },
    {
      "camera": "5ad06a0d98d8fc001102e27b",
      "loc": {
        "type": "Point",
        "coordinates": [106.57931864261626, 10.813557817058603]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 517,
      "numberOfCar": 268,
      "numberOfVan": 16,
      "numberOfTruck": 11,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 14
    },
    {
      "camera": "5b0b7aba0e517b00119fd800",
      "loc": {
        "type": "Point",
        "coordinates": [106.6853678226471, 10.756371436338306]
      },
      "numberOfBicycle": 63,
      "numberOfMotorcycle": 513,
      "numberOfCar": 272,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 17
    },
    {
      "camera": "5b0b7bbe0e517b00119fd806",
      "loc": {
        "type": "Point",
        "coordinates": [106.68535709381104, 10.75639251699087]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 573,
      "numberOfCar": 260,
      "numberOfVan": 16,
      "numberOfTruck": 12,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 19
    },
    {
      "camera": "5b0b835b0e517b00119fd80d",
      "loc": {
        "type": "Point",
        "coordinates": [106.73014998435974, 10.85308445857757]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 569,
      "numberOfCar": 274,
      "numberOfVan": 18,
      "numberOfTruck": 14,
      "numberOfBus": 13,
      "numberOfFireTruck": 13,
      "numberOfContainer": 17
    },
    {
      "camera": "5b0e1faacddcc80011ceb449",
      "loc": {
        "type": "Point",
        "coordinates": [106.7119699716568, 10.801280419769162]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 576,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 24,
      "numberOfContainer": 18
    },
    {
      "camera": "5b6005b6fd4edb0019c7db25",
      "loc": {
        "type": "Point",
        "coordinates": [106.68352782726288, 10.756107928056906]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 606,
      "numberOfCar": 267,
      "numberOfVan": 17,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "5b6329fdfd4edb0019c7dc0b",
      "loc": {
        "type": "Point",
        "coordinates": [106.68437540531158, 10.759649460111168]
      },
      "numberOfBicycle": 120,
      "numberOfMotorcycle": 545,
      "numberOfCar": 272,
      "numberOfVan": 12,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 25
    },
    {
      "camera": "5b632a79fd4edb0019c7dc0f",
      "loc": {
        "type": "Point",
        "coordinates": [106.66951060295105, 10.752424058178907]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 483,
      "numberOfCar": 273,
      "numberOfVan": 11,
      "numberOfTruck": 20,
      "numberOfBus": 13,
      "numberOfFireTruck": 17,
      "numberOfContainer": 18
    },
    {
      "camera": "5b632b60fd4edb0019c7dc12",
      "loc": {
        "type": "Point",
        "coordinates": [106.6664206981659, 10.755717935377916]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 519,
      "numberOfCar": 274,
      "numberOfVan": 21,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 24
    },
    {
      "camera": "5b728aafca0577001163ff7e",
      "loc": {
        "type": "Point",
        "coordinates": [106.6589105129242, 10.754843085101587]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 532,
      "numberOfCar": 276,
      "numberOfVan": 20,
      "numberOfTruck": 24,
      "numberOfBus": 25,
      "numberOfFireTruck": 16,
      "numberOfContainer": 25
    },
    {
      "camera": "5b87c386ca057700116404a6",
      "loc": {
        "type": "Point",
        "coordinates": [106.71590209007263, 10.771043214003438]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 470,
      "numberOfCar": 281,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 22,
      "numberOfFireTruck": 16,
      "numberOfContainer": 25
    },
    {
      "camera": "5b8b2323ca057700116405d0",
      "loc": {
        "type": "Point",
        "coordinates": [106.66490256786346, 10.812946593709597]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 511,
      "numberOfCar": 290,
      "numberOfVan": 19,
      "numberOfTruck": 17,
      "numberOfBus": 15,
      "numberOfFireTruck": 23,
      "numberOfContainer": 23
    },
    {
      "camera": "5bbc7163ca0577001164127f",
      "loc": {
        "type": "Point",
        "coordinates": [106.7025500535965, 10.689564733373853]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 570,
      "numberOfCar": 269,
      "numberOfVan": 15,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 14,
      "numberOfContainer": 17
    },
    {
      "camera": "5d8cd1f9766c880017188938",
      "loc": {
        "type": "Point",
        "coordinates": [106.66956961154938, 10.753578236842605]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 460,
      "numberOfCar": 287,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 19,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "5d8cd2a3766c88001718893c",
      "loc": {
        "type": "Point",
        "coordinates": [106.64291381835938, 10.754442550393371]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 550,
      "numberOfCar": 276,
      "numberOfVan": 21,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 14,
      "numberOfContainer": 18
    },
    {
      "camera": "5d8cd326766c88001718893e",
      "loc": {
        "type": "Point",
        "coordinates": [106.64323568344116, 10.754189580829962]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 466,
      "numberOfCar": 263,
      "numberOfVan": 20,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 9,
      "numberOfContainer": 13
    },
    {
      "camera": "5d8cd372766c880017188940",
      "loc": {
        "type": "Point",
        "coordinates": [106.64326786994934, 10.755027541696245]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 492,
      "numberOfCar": 255,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 10,
      "numberOfFireTruck": 25,
      "numberOfContainer": 19
    },
    {
      "camera": "5d8cd3b7766c880017188942",
      "loc": {
        "type": "Point",
        "coordinates": [106.67818486690521, 10.757341144831328]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 554,
      "numberOfCar": 276,
      "numberOfVan": 17,
      "numberOfTruck": 21,
      "numberOfBus": 24,
      "numberOfFireTruck": 19,
      "numberOfContainer": 19
    },
    {
      "camera": "5d8cd49f766c880017188944",
      "loc": {
        "type": "Point",
        "coordinates": [106.66949987411498, 10.754700789937207]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 480,
      "numberOfCar": 262,
      "numberOfVan": 15,
      "numberOfTruck": 13,
      "numberOfBus": 10,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "5d8cd4ee766c880017188946",
      "loc": {
        "type": "Point",
        "coordinates": [106.67145252227783, 10.791890243244568]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 566,
      "numberOfCar": 251,
      "numberOfVan": 21,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 24
    },
    {
      "camera": "5d8cd542766c880017188948",
      "loc": {
        "type": "Point",
        "coordinates": [106.75798058509827, 10.851145656849512]
      },
      "numberOfBicycle": 35,
      "numberOfMotorcycle": 543,
      "numberOfCar": 262,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "5d8cd614766c88001718894a",
      "loc": {
        "type": "Point",
        "coordinates": [106.69519007205963, 10.808193762767512]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 566,
      "numberOfCar": 264,
      "numberOfVan": 23,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 12,
      "numberOfContainer": 19
    },
    {
      "camera": "5d8cd653766c88001718894c",
      "loc": {
        "type": "Point",
        "coordinates": [106.75500869750975, 10.850977064800553]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 666,
      "numberOfCar": 293,
      "numberOfVan": 26,
      "numberOfTruck": 16,
      "numberOfBus": 18,
      "numberOfFireTruck": 12,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cd70e766c88001718894e",
      "loc": {
        "type": "Point",
        "coordinates": [106.70344591140747, 10.822831397791592]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 508,
      "numberOfCar": 261,
      "numberOfVan": 19,
      "numberOfTruck": 24,
      "numberOfBus": 14,
      "numberOfFireTruck": 18,
      "numberOfContainer": 14
    },
    {
      "camera": "5d8cd767766c880017188950",
      "loc": {
        "type": "Point",
        "coordinates": [106.70296847820282, 10.823047426650916]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 576,
      "numberOfCar": 284,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cd7bb766c880017188952",
      "loc": {
        "type": "Point",
        "coordinates": [106.72274708747864, 10.828927567007197]
      },
      "numberOfBicycle": 56,
      "numberOfMotorcycle": 536,
      "numberOfCar": 273,
      "numberOfVan": 17,
      "numberOfTruck": 13,
      "numberOfBus": 23,
      "numberOfFireTruck": 19,
      "numberOfContainer": 14
    },
    {
      "camera": "5d8cd7fb766c880017188954",
      "loc": {
        "type": "Point",
        "coordinates": [106.72236621379852, 10.829138322583626]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 461,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 10
    },
    {
      "camera": "5d8cd8e2766c880017188958",
      "loc": {
        "type": "Point",
        "coordinates": [106.73284828662872, 10.837405093050696]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 446,
      "numberOfCar": 279,
      "numberOfVan": 28,
      "numberOfTruck": 24,
      "numberOfBus": 25,
      "numberOfFireTruck": 25,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cd98d766c88001718895a",
      "loc": {
        "type": "Point",
        "coordinates": [106.75146281719206, 10.85339529790214]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 489,
      "numberOfCar": 270,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 16,
      "numberOfFireTruck": 14,
      "numberOfContainer": 18
    },
    {
      "camera": "5d8cd9cb766c88001718895c",
      "loc": {
        "type": "Point",
        "coordinates": [106.75131797790527, 10.853600767786636]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 599,
      "numberOfCar": 289,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cda2e766c88001718895e",
      "loc": {
        "type": "Point",
        "coordinates": [106.74354493618011, 10.840819218445986]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 495,
      "numberOfCar": 270,
      "numberOfVan": 10,
      "numberOfTruck": 25,
      "numberOfBus": 16,
      "numberOfFireTruck": 9,
      "numberOfContainer": 22
    },
    {
      "camera": "5d8cda6a766c880017188960",
      "loc": {
        "type": "Point",
        "coordinates": [106.74382388591766, 10.84119329463218]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 557,
      "numberOfCar": 251,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 12,
      "numberOfFireTruck": 12,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cdac3766c880017188962",
      "loc": {
        "type": "Point",
        "coordinates": [106.64591252803801, 10.797038541352348]
      },
      "numberOfBicycle": 112,
      "numberOfMotorcycle": 534,
      "numberOfCar": 280,
      "numberOfVan": 19,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cdb0a766c880017188964",
      "loc": {
        "type": "Point",
        "coordinates": [106.65165781974792, 10.793713499129755]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 658,
      "numberOfCar": 272,
      "numberOfVan": 25,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "5d8cdb4b766c880017188966",
      "loc": {
        "type": "Point",
        "coordinates": [106.65837407112122, 10.79805554374863]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 648,
      "numberOfCar": 272,
      "numberOfVan": 12,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 20
    },
    {
      "camera": "5d8cdb9f766c880017188968",
      "loc": {
        "type": "Point",
        "coordinates": [106.67747139930725, 10.79937289924722]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 445,
      "numberOfCar": 290,
      "numberOfVan": 18,
      "numberOfTruck": 25,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "5d8cdbdc766c88001718896a",
      "loc": {
        "type": "Point",
        "coordinates": [106.66078269481659, 10.800674440805867]
      },
      "numberOfBicycle": 51,
      "numberOfMotorcycle": 525,
      "numberOfCar": 258,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 17,
      "numberOfFireTruck": 13,
      "numberOfContainer": 17
    },
    {
      "camera": "5d8cdc1d766c88001718896c",
      "loc": {
        "type": "Point",
        "coordinates": [106.66447877883911, 10.80767210600642]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 467,
      "numberOfCar": 275,
      "numberOfVan": 10,
      "numberOfTruck": 17,
      "numberOfBus": 14,
      "numberOfFireTruck": 18,
      "numberOfContainer": 21
    },
    {
      "camera": "5d8cdc57766c88001718896e",
      "loc": {
        "type": "Point",
        "coordinates": [106.65247321128845, 10.790446385361513]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 544,
      "numberOfCar": 286,
      "numberOfVan": 21,
      "numberOfTruck": 15,
      "numberOfBus": 24,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "5d8cdc9d766c880017188970",
      "loc": {
        "type": "Point",
        "coordinates": [106.64788126945496, 10.774769015049133]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 490,
      "numberOfCar": 260,
      "numberOfVan": 19,
      "numberOfTruck": 16,
      "numberOfBus": 16,
      "numberOfFireTruck": 23,
      "numberOfContainer": 20
    },
    {
      "camera": "5d9dddb9766c880017188c96",
      "loc": {
        "type": "Point",
        "coordinates": [106.70660018920898, 10.799878762223457]
      },
      "numberOfBicycle": 112,
      "numberOfMotorcycle": 516,
      "numberOfCar": 282,
      "numberOfVan": 20,
      "numberOfTruck": 15,
      "numberOfBus": 21,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "5d9dde1f766c880017188c98",
      "loc": {
        "type": "Point",
        "coordinates": [106.71129405498505, 10.80014223218617]
      },
      "numberOfBicycle": 72,
      "numberOfMotorcycle": 446,
      "numberOfCar": 274,
      "numberOfVan": 13,
      "numberOfTruck": 18,
      "numberOfBus": 13,
      "numberOfFireTruck": 17,
      "numberOfContainer": 15
    },
    {
      "camera": "5d9ddec9766c880017188c9c",
      "loc": {
        "type": "Point",
        "coordinates": [106.71150326728821, 10.802155135072839]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 497,
      "numberOfCar": 266,
      "numberOfVan": 16,
      "numberOfTruck": 22,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 15
    },
    {
      "camera": "5d9ddf49766c880017188ca0",
      "loc": {
        "type": "Point",
        "coordinates": [106.71232402324675, 10.801227725994805]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 600,
      "numberOfCar": 265,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 15,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "5d9de3c2766c880017188cb3",
      "loc": {
        "type": "Point",
        "coordinates": [106.75486385822296, 10.792901993540932]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 500,
      "numberOfCar": 258,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "5d9de43b766c880017188cb6",
      "loc": {
        "type": "Point",
        "coordinates": [106.7788964509964, 10.796553751433649]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 576,
      "numberOfCar": 296,
      "numberOfVan": 15,
      "numberOfTruck": 24,
      "numberOfBus": 17,
      "numberOfFireTruck": 24,
      "numberOfContainer": 13
    },
    {
      "camera": "5d9de49d766c880017188cb9",
      "loc": {
        "type": "Point",
        "coordinates": [106.77884817123413, 10.796179619548562]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 528,
      "numberOfCar": 265,
      "numberOfVan": 22,
      "numberOfTruck": 16,
      "numberOfBus": 15,
      "numberOfFireTruck": 16,
      "numberOfContainer": 25
    },
    {
      "camera": "5deb576d1dc17d7c5515acf2",
      "loc": {
        "type": "Point",
        "coordinates": [106.6836941242218, 10.776571295473905]
      },
      "numberOfBicycle": 118,
      "numberOfMotorcycle": 559,
      "numberOfCar": 278,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 17,
      "numberOfFireTruck": 9,
      "numberOfContainer": 18
    },
    {
      "camera": "5deb576d1dc17d7c5515acf3",
      "loc": {
        "type": "Point",
        "coordinates": [106.668459, 10.768198]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 454,
      "numberOfCar": 251,
      "numberOfVan": 19,
      "numberOfTruck": 17,
      "numberOfBus": 20,
      "numberOfFireTruck": 23,
      "numberOfContainer": 21
    },
    {
      "camera": "5deb576d1dc17d7c5515acf4",
      "loc": {
        "type": "Point",
        "coordinates": [106.674156, 10.767465]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 552,
      "numberOfCar": 272,
      "numberOfVan": 19,
      "numberOfTruck": 10,
      "numberOfBus": 17,
      "numberOfFireTruck": 20,
      "numberOfContainer": 12
    },
    {
      "camera": "5deb576d1dc17d7c5515acf5",
      "loc": {
        "type": "Point",
        "coordinates": [106.674596, 10.767428]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 565,
      "numberOfCar": 250,
      "numberOfVan": 12,
      "numberOfTruck": 14,
      "numberOfBus": 17,
      "numberOfFireTruck": 13,
      "numberOfContainer": 14
    },
    {
      "camera": "5deb576d1dc17d7c5515acf6",
      "loc": {
        "type": "Point",
        "coordinates": [106.681205, 10.765389]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 520,
      "numberOfCar": 273,
      "numberOfVan": 12,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 27,
      "numberOfContainer": 25
    },
    {
      "camera": "5deb576d1dc17d7c5515acf7",
      "loc": {
        "type": "Point",
        "coordinates": [106.68172, 10.765059]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 536,
      "numberOfCar": 274,
      "numberOfVan": 20,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 13
    },
    {
      "camera": "5deb576d1dc17d7c5515acf8",
      "loc": {
        "type": "Point",
        "coordinates": [106.67782, 10.773823]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 563,
      "numberOfCar": 249,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 12,
      "numberOfFireTruck": 24,
      "numberOfContainer": 22
    },
    {
      "camera": "5deb576d1dc17d7c5515acf9",
      "loc": {
        "type": "Point",
        "coordinates": [106.68202, 10.777768]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 454,
      "numberOfCar": 299,
      "numberOfVan": 16,
      "numberOfTruck": 20,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515acfa",
      "loc": {
        "type": "Point",
        "coordinates": [106.681336, 10.777664]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 489,
      "numberOfCar": 263,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 11,
      "numberOfFireTruck": 15,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515acfb",
      "loc": {
        "type": "Point",
        "coordinates": [106.68426275253296, 10.780186363443855]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 606,
      "numberOfCar": 277,
      "numberOfVan": 22,
      "numberOfTruck": 26,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515acfc",
      "loc": {
        "type": "Point",
        "coordinates": [106.68729364871979, 10.780012461751467]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 559,
      "numberOfCar": 267,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 20,
      "numberOfFireTruck": 8,
      "numberOfContainer": 21
    },
    {
      "camera": "5deb576d1dc17d7c5515acfd",
      "loc": {
        "type": "Point",
        "coordinates": [106.6821813583374, 10.779306314452835]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 599,
      "numberOfCar": 264,
      "numberOfVan": 19,
      "numberOfTruck": 15,
      "numberOfBus": 15,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "5deb576d1dc17d7c5515acfe",
      "loc": {
        "type": "Point",
        "coordinates": [106.68368875980377, 10.782515582484137]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 470,
      "numberOfCar": 271,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 15
    },
    {
      "camera": "5deb576d1dc17d7c5515acff",
      "loc": {
        "type": "Point",
        "coordinates": [106.687554, 10.791464]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 529,
      "numberOfCar": 281,
      "numberOfVan": 23,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "5deb576d1dc17d7c5515ad01",
      "loc": {
        "type": "Point",
        "coordinates": [106.6918158531189, 10.787859016844687]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 512,
      "numberOfCar": 271,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 17,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515ad02",
      "loc": {
        "type": "Point",
        "coordinates": [106.69155299663544, 10.784344164887198]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 559,
      "numberOfCar": 252,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 15,
      "numberOfFireTruck": 10,
      "numberOfContainer": 16
    },
    {
      "camera": "5deb576d1dc17d7c5515ad03",
      "loc": {
        "type": "Point",
        "coordinates": [106.69283509254456, 10.781472178899175]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 491,
      "numberOfCar": 292,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 15,
      "numberOfContainer": 25
    },
    {
      "camera": "5deb576d1dc17d7c5515ad04",
      "loc": {
        "type": "Point",
        "coordinates": [106.69000804424286, 10.786030455810181]
      },
      "numberOfBicycle": 60,
      "numberOfMotorcycle": 491,
      "numberOfCar": 274,
      "numberOfVan": 21,
      "numberOfTruck": 13,
      "numberOfBus": 22,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "5deb576d1dc17d7c5515ad05",
      "loc": {
        "type": "Point",
        "coordinates": [106.697491, 10.790705]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 585,
      "numberOfCar": 245,
      "numberOfVan": 12,
      "numberOfTruck": 17,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 24
    },
    {
      "camera": "5deb576d1dc17d7c5515ad06",
      "loc": {
        "type": "Point",
        "coordinates": [106.699558, 10.788566]
      },
      "numberOfBicycle": 73,
      "numberOfMotorcycle": 562,
      "numberOfCar": 304,
      "numberOfVan": 23,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 15,
      "numberOfContainer": 16
    },
    {
      "camera": "5deb576d1dc17d7c5515ad07",
      "loc": {
        "type": "Point",
        "coordinates": [106.672665, 10.797381]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 545,
      "numberOfCar": 296,
      "numberOfVan": 19,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 14,
      "numberOfContainer": 21
    },
    {
      "camera": "5deb576d1dc17d7c5515ad08",
      "loc": {
        "type": "Point",
        "coordinates": [106.63765132427216, 10.804136408507423]
      },
      "numberOfBicycle": 71,
      "numberOfMotorcycle": 511,
      "numberOfCar": 275,
      "numberOfVan": 21,
      "numberOfTruck": 12,
      "numberOfBus": 18,
      "numberOfFireTruck": 17,
      "numberOfContainer": 11
    },
    {
      "camera": "5deb576d1dc17d7c5515ad09",
      "loc": {
        "type": "Point",
        "coordinates": [106.64701759815216, 10.79645363167906]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 643,
      "numberOfCar": 273,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 14,
      "numberOfFireTruck": 23,
      "numberOfContainer": 22
    },
    {
      "camera": "5deb576d1dc17d7c5515ad0a",
      "loc": {
        "type": "Point",
        "coordinates": [106.655729, 10.795418]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 567,
      "numberOfCar": 277,
      "numberOfVan": 24,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515ad0b",
      "loc": {
        "type": "Point",
        "coordinates": [106.699042, 10.775615]
      },
      "numberOfBicycle": 116,
      "numberOfMotorcycle": 481,
      "numberOfCar": 280,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 25,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "5deb576d1dc17d7c5515ad0c",
      "loc": {
        "type": "Point",
        "coordinates": [106.693342, 10.771135]
      },
      "numberOfBicycle": 46,
      "numberOfMotorcycle": 511,
      "numberOfCar": 293,
      "numberOfVan": 17,
      "numberOfTruck": 22,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 23
    },
    {
      "camera": "5deb576d1dc17d7c5515ad0e",
      "loc": {
        "type": "Point",
        "coordinates": [106.686639, 10.774969]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 552,
      "numberOfCar": 292,
      "numberOfVan": 12,
      "numberOfTruck": 16,
      "numberOfBus": 23,
      "numberOfFireTruck": 13,
      "numberOfContainer": 13
    },
    {
      "camera": "5deb576d1dc17d7c5515ad0f",
      "loc": {
        "type": "Point",
        "coordinates": [106.691731, 10.776014]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 544,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515ad11",
      "loc": {
        "type": "Point",
        "coordinates": [106.689658, 10.777922]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 571,
      "numberOfCar": 273,
      "numberOfVan": 11,
      "numberOfTruck": 19,
      "numberOfBus": 17,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "5deb576d1dc17d7c5515ad13",
      "loc": {
        "type": "Point",
        "coordinates": [106.700359, 10.775708]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 516,
      "numberOfCar": 257,
      "numberOfVan": 17,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 15,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515ad14",
      "loc": {
        "type": "Point",
        "coordinates": [106.7010372877121, 10.777894014884904]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 551,
      "numberOfCar": 280,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "5deb576d1dc17d7c5515ad15",
      "loc": {
        "type": "Point",
        "coordinates": [106.704602, 10.781944]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 534,
      "numberOfCar": 247,
      "numberOfVan": 19,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 12
    },
    {
      "camera": "5deb576d1dc17d7c5515ad16",
      "loc": {
        "type": "Point",
        "coordinates": [106.695957, 10.780518]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 505,
      "numberOfCar": 266,
      "numberOfVan": 21,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515ad17",
      "loc": {
        "type": "Point",
        "coordinates": [106.698076, 10.782987]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 567,
      "numberOfCar": 257,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 23
    },
    {
      "camera": "5deb576d1dc17d7c5515ad18",
      "loc": {
        "type": "Point",
        "coordinates": [106.699614, 10.781431]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 665,
      "numberOfCar": 289,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 10,
      "numberOfFireTruck": 22,
      "numberOfContainer": 18
    },
    {
      "camera": "5deb576d1dc17d7c5515ad19",
      "loc": {
        "type": "Point",
        "coordinates": [106.699659, 10.784426]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 523,
      "numberOfCar": 255,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 15,
      "numberOfFireTruck": 15,
      "numberOfContainer": 22
    },
    {
      "camera": "5deb576d1dc17d7c5515ad1a",
      "loc": {
        "type": "Point",
        "coordinates": [106.697417, 10.779127]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 577,
      "numberOfCar": 257,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "5deb576d1dc17d7c5515ad1c",
      "loc": {
        "type": "Point",
        "coordinates": [106.70726001262665, 10.765293690837588]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 600,
      "numberOfCar": 277,
      "numberOfVan": 24,
      "numberOfTruck": 13,
      "numberOfBus": 17,
      "numberOfFireTruck": 16,
      "numberOfContainer": 14
    },
    {
      "camera": "5deb576d1dc17d7c5515ad1e",
      "loc": {
        "type": "Point",
        "coordinates": [106.702639, 10.770674]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 531,
      "numberOfCar": 271,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 12,
      "numberOfFireTruck": 18,
      "numberOfContainer": 22
    },
    {
      "camera": "5deb576d1dc17d7c5515ad1f",
      "loc": {
        "type": "Point",
        "coordinates": [106.66647434234619, 10.756329275028753]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 622,
      "numberOfCar": 257,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 21,
      "numberOfFireTruck": 16,
      "numberOfContainer": 19
    },
    {
      "camera": "5deb576d1dc17d7c5515ad20",
      "loc": {
        "type": "Point",
        "coordinates": [106.666241, 10.755881]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 530,
      "numberOfCar": 271,
      "numberOfVan": 20,
      "numberOfTruck": 13,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "5deb576d1dc17d7c5515ad21",
      "loc": {
        "type": "Point",
        "coordinates": [106.668851, 10.759539]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 495,
      "numberOfCar": 278,
      "numberOfVan": 20,
      "numberOfTruck": 15,
      "numberOfBus": 17,
      "numberOfFireTruck": 16,
      "numberOfContainer": 20
    },
    {
      "camera": "5deb576d1dc17d7c5515ad22",
      "loc": {
        "type": "Point",
        "coordinates": [106.669124, 10.76009]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 545,
      "numberOfCar": 255,
      "numberOfVan": 18,
      "numberOfTruck": 18,
      "numberOfBus": 24,
      "numberOfFireTruck": 20,
      "numberOfContainer": 16
    },
    {
      "camera": "5deb576d1dc17d7c5515ad23",
      "loc": {
        "type": "Point",
        "coordinates": [106.659903, 10.763649]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 518,
      "numberOfCar": 295,
      "numberOfVan": 10,
      "numberOfTruck": 22,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "62da3e390637a10017d706ff",
      "loc": {
        "type": "Point",
        "coordinates": [106.71823024749756, 10.844444049682709]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 552,
      "numberOfCar": 273,
      "numberOfVan": 11,
      "numberOfTruck": 11,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "62da3e620637a10017d70720",
      "loc": {
        "type": "Point",
        "coordinates": [106.71817660331726, 10.845697978169245]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 474,
      "numberOfCar": 290,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "62da3e840637a10017d7073d",
      "loc": {
        "type": "Point",
        "coordinates": [106.71789765357971, 10.845107894830463]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 545,
      "numberOfCar": 267,
      "numberOfVan": 20,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 20,
      "numberOfContainer": 14
    },
    {
      "camera": "631812e6c9eae60017a19567",
      "loc": {
        "type": "Point",
        "coordinates": [106.72335863113403, 10.798081890915219]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 517,
      "numberOfCar": 265,
      "numberOfVan": 21,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 16
    },
    {
      "camera": "631813ebc9eae60017a196b0",
      "loc": {
        "type": "Point",
        "coordinates": [106.73122823238373, 10.799552059148736]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 505,
      "numberOfCar": 282,
      "numberOfVan": 15,
      "numberOfTruck": 24,
      "numberOfBus": 18,
      "numberOfFireTruck": 21,
      "numberOfContainer": 17
    },
    {
      "camera": "6318283cc9eae60017a19f0c",
      "loc": {
        "type": "Point",
        "coordinates": [106.70156836509703, 10.786610116131385]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 629,
      "numberOfCar": 252,
      "numberOfVan": 22,
      "numberOfTruck": 11,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 24
    },
    {
      "camera": "6318287ec9eae60017a19f36",
      "loc": {
        "type": "Point",
        "coordinates": [106.70172929763793, 10.78656268941979]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 449,
      "numberOfCar": 256,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 21,
      "numberOfFireTruck": 25,
      "numberOfContainer": 16
    },
    {
      "camera": "631828cac9eae60017a19f50",
      "loc": {
        "type": "Point",
        "coordinates": [106.70353174209595, 10.788707423231353]
      },
      "numberOfBicycle": 68,
      "numberOfMotorcycle": 600,
      "numberOfCar": 285,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 20
    },
    {
      "camera": "63195512c9eae60017a1c279",
      "loc": {
        "type": "Point",
        "coordinates": [106.68810371554173, 10.766339939594687]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 490,
      "numberOfCar": 268,
      "numberOfVan": 19,
      "numberOfTruck": 11,
      "numberOfBus": 19,
      "numberOfFireTruck": 17,
      "numberOfContainer": 13
    },
    {
      "camera": "63195556c9eae60017a1c2ba",
      "loc": {
        "type": "Point",
        "coordinates": [106.68801572479424, 10.766830262802149]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 540,
      "numberOfCar": 282,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 17,
      "numberOfFireTruck": 25,
      "numberOfContainer": 18
    },
    {
      "camera": "631955e7c9eae60017a1c30a",
      "loc": {
        "type": "Point",
        "coordinates": [106.67714416980743, 10.780223251668712]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 529,
      "numberOfCar": 255,
      "numberOfVan": 16,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 20,
      "numberOfContainer": 23
    },
    {
      "camera": "63ae73cebfd3d90017e8f00d",
      "loc": {
        "type": "Point",
        "coordinates": [106.68436467647551, 10.768424058946168]
      },
      "numberOfBicycle": 73,
      "numberOfMotorcycle": 564,
      "numberOfCar": 288,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "63ae75a3bfd3d90017e8f051",
      "loc": {
        "type": "Point",
        "coordinates": [106.68545365333556, 10.767891793263033]
      },
      "numberOfBicycle": 124,
      "numberOfMotorcycle": 605,
      "numberOfCar": 269,
      "numberOfVan": 22,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 11,
      "numberOfContainer": 24
    },
    {
      "camera": "63ae75debfd3d90017e8f082",
      "loc": {
        "type": "Point",
        "coordinates": [106.6838926076889, 10.768503108224836]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 595,
      "numberOfCar": 256,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 18,
      "numberOfFireTruck": 10,
      "numberOfContainer": 22
    },
    {
      "camera": "63ae75f9bfd3d90017e8f097",
      "loc": {
        "type": "Point",
        "coordinates": [106.68327569961548, 10.769072262419003]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 601,
      "numberOfCar": 285,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "63ae763bbfd3d90017e8f0c4",
      "loc": {
        "type": "Point",
        "coordinates": [106.67878031730652, 10.766258100640426]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 559,
      "numberOfCar": 298,
      "numberOfVan": 20,
      "numberOfTruck": 21,
      "numberOfBus": 19,
      "numberOfFireTruck": 12,
      "numberOfContainer": 19
    },
    {
      "camera": "63ae7669bfd3d90017e8f0d9",
      "loc": {
        "type": "Point",
        "coordinates": [106.70217990875244, 10.75287202759093]
      },
      "numberOfBicycle": 71,
      "numberOfMotorcycle": 476,
      "numberOfCar": 263,
      "numberOfVan": 22,
      "numberOfTruck": 12,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 24
    },
    {
      "camera": "63ae768dbfd3d90017e8f0f1",
      "loc": {
        "type": "Point",
        "coordinates": [106.70127868652344, 10.756002524679882]
      },
      "numberOfBicycle": 111,
      "numberOfMotorcycle": 537,
      "numberOfCar": 247,
      "numberOfVan": 11,
      "numberOfTruck": 17,
      "numberOfBus": 20,
      "numberOfFireTruck": 12,
      "numberOfContainer": 15
    },
    {
      "camera": "63ae76afbfd3d90017e8f106",
      "loc": {
        "type": "Point",
        "coordinates": [106.69977664947508, 10.757952481191817]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 579,
      "numberOfCar": 259,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 24,
      "numberOfFireTruck": 25,
      "numberOfContainer": 20
    },
    {
      "camera": "63ae76ddbfd3d90017e8f11b",
      "loc": {
        "type": "Point",
        "coordinates": [106.69848918914795, 10.759638919898903]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 546,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 12
    },
    {
      "camera": "63ae7709bfd3d90017e8f135",
      "loc": {
        "type": "Point",
        "coordinates": [106.7038106918335, 10.763254191089795]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 482,
      "numberOfCar": 277,
      "numberOfVan": 10,
      "numberOfTruck": 27,
      "numberOfBus": 17,
      "numberOfFireTruck": 20,
      "numberOfContainer": 16
    },
    {
      "camera": "63ae7727bfd3d90017e8f14a",
      "loc": {
        "type": "Point",
        "coordinates": [106.70371949672699, 10.763507153048575]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 562,
      "numberOfCar": 251,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 16,
      "numberOfFireTruck": 16,
      "numberOfContainer": 15
    },
    {
      "camera": "63ae7759bfd3d90017e8f162",
      "loc": {
        "type": "Point",
        "coordinates": [106.70603692531586, 10.76750708579767]
      },
      "numberOfBicycle": 64,
      "numberOfMotorcycle": 535,
      "numberOfCar": 277,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 17,
      "numberOfFireTruck": 22,
      "numberOfContainer": 16
    },
    {
      "camera": "63ae777cbfd3d90017e8f177",
      "loc": {
        "type": "Point",
        "coordinates": [106.70645534992218, 10.766774559265741]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 576,
      "numberOfCar": 258,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 13
    },
    {
      "camera": "63ae77bfbfd3d90017e8f18f",
      "loc": {
        "type": "Point",
        "coordinates": [106.717768907547, 10.757040746338014]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 573,
      "numberOfCar": 280,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 15,
      "numberOfContainer": 18
    },
    {
      "camera": "63ae7829bfd3d90017e8f1ac",
      "loc": {
        "type": "Point",
        "coordinates": [106.71935141086578, 10.756434678291594]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 523,
      "numberOfCar": 270,
      "numberOfVan": 20,
      "numberOfTruck": 23,
      "numberOfBus": 15,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "63ae7893bfd3d90017e8f1e1",
      "loc": {
        "type": "Point",
        "coordinates": [106.70734584331512, 10.764345088020589]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 580,
      "numberOfCar": 276,
      "numberOfVan": 12,
      "numberOfTruck": 19,
      "numberOfBus": 14,
      "numberOfFireTruck": 15,
      "numberOfContainer": 23
    },
    {
      "camera": "63ae7903bfd3d90017e8f211",
      "loc": {
        "type": "Point",
        "coordinates": [106.6366696357727, 10.74839230354347]
      },
      "numberOfBicycle": 64,
      "numberOfMotorcycle": 524,
      "numberOfCar": 246,
      "numberOfVan": 22,
      "numberOfTruck": 11,
      "numberOfBus": 16,
      "numberOfFireTruck": 24,
      "numberOfContainer": 16
    },
    {
      "camera": "63ae7938bfd3d90017e8f226",
      "loc": {
        "type": "Point",
        "coordinates": [106.59547626972198, 10.747085265643749]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 513,
      "numberOfCar": 280,
      "numberOfVan": 14,
      "numberOfTruck": 15,
      "numberOfBus": 15,
      "numberOfFireTruck": 19,
      "numberOfContainer": 21
    },
    {
      "camera": "63ae7966bfd3d90017e8f240",
      "loc": {
        "type": "Point",
        "coordinates": [106.6720962524414, 10.782879191974121]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 453,
      "numberOfCar": 288,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 20,
      "numberOfFireTruck": 24,
      "numberOfContainer": 19
    },
    {
      "camera": "63ae798abfd3d90017e8f255",
      "loc": {
        "type": "Point",
        "coordinates": [106.66462361812592, 10.786910485131086]
      },
      "numberOfBicycle": 59,
      "numberOfMotorcycle": 561,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 14,
      "numberOfBus": 13,
      "numberOfFireTruck": 16,
      "numberOfContainer": 14
    },
    {
      "camera": "63ae79aabfd3d90017e8f26a",
      "loc": {
        "type": "Point",
        "coordinates": [106.66649043560028, 10.78586182714333]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 462,
      "numberOfCar": 277,
      "numberOfVan": 11,
      "numberOfTruck": 16,
      "numberOfBus": 21,
      "numberOfFireTruck": 13,
      "numberOfContainer": 21
    },
    {
      "camera": "63ae7a08bfd3d90017e8f285",
      "loc": {
        "type": "Point",
        "coordinates": [106.67326569557189, 10.771095913066636]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 508,
      "numberOfCar": 276,
      "numberOfVan": 14,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 22,
      "numberOfContainer": 23
    },
    {
      "camera": "63ae7a26bfd3d90017e8f29a",
      "loc": {
        "type": "Point",
        "coordinates": [106.672922372818, 10.77113807231056]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 601,
      "numberOfCar": 291,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "63ae7a50bfd3d90017e8f2b2",
      "loc": {
        "type": "Point",
        "coordinates": [106.67083024978636, 10.769778433720619]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 553,
      "numberOfCar": 274,
      "numberOfVan": 13,
      "numberOfTruck": 16,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "63ae7a74bfd3d90017e8f2c7",
      "loc": {
        "type": "Point",
        "coordinates": [106.66554093360901, 10.777894014884904]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 528,
      "numberOfCar": 269,
      "numberOfVan": 19,
      "numberOfTruck": 13,
      "numberOfBus": 19,
      "numberOfFireTruck": 13,
      "numberOfContainer": 22
    },
    {
      "camera": "63ae7a9cbfd3d90017e8f303",
      "loc": {
        "type": "Point",
        "coordinates": [106.67909145355225, 10.772729579451791]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 514,
      "numberOfCar": 277,
      "numberOfVan": 19,
      "numberOfTruck": 22,
      "numberOfBus": 21,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "63ae7af4bfd3d90017e8f32c",
      "loc": {
        "type": "Point",
        "coordinates": [106.65956497192383, 10.763612553802075]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 623,
      "numberOfCar": 253,
      "numberOfVan": 14,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 13
    },
    {
      "camera": "63ae7b3cbfd3d90017e8f34d",
      "loc": {
        "type": "Point",
        "coordinates": [106.65981709957123, 10.764461028525057]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 507,
      "numberOfCar": 283,
      "numberOfVan": 22,
      "numberOfTruck": 16,
      "numberOfBus": 24,
      "numberOfFireTruck": 16,
      "numberOfContainer": 20
    },
    {
      "camera": "63ae7be0bfd3d90017e8f3a8",
      "loc": {
        "type": "Point",
        "coordinates": [106.65719926357269, 10.762152750086269]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 634,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "63ae7c12bfd3d90017e8f3c0",
      "loc": {
        "type": "Point",
        "coordinates": [106.65659844875336, 10.762142209961533]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 590,
      "numberOfCar": 242,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "63ae7c53bfd3d90017e8f3d8",
      "loc": {
        "type": "Point",
        "coordinates": [106.65833652019501, 10.770495143199618]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 526,
      "numberOfCar": 285,
      "numberOfVan": 21,
      "numberOfTruck": 22,
      "numberOfBus": 18,
      "numberOfFireTruck": 21,
      "numberOfContainer": 10
    },
    {
      "camera": "63ae7c73bfd3d90017e8f3ed",
      "loc": {
        "type": "Point",
        "coordinates": [106.65800392627716, 10.770811338015845]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 505,
      "numberOfCar": 267,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 12
    },
    {
      "camera": "63ae7cd3bfd3d90017e8f408",
      "loc": {
        "type": "Point",
        "coordinates": [106.6426134109497, 10.766700779516317]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 468,
      "numberOfCar": 284,
      "numberOfVan": 27,
      "numberOfTruck": 21,
      "numberOfBus": 23,
      "numberOfFireTruck": 16,
      "numberOfContainer": 14
    },
    {
      "camera": "63ae7cfcbfd3d90017e8f422",
      "loc": {
        "type": "Point",
        "coordinates": [106.66068077087402, 10.789044677279122]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 468,
      "numberOfCar": 253,
      "numberOfVan": 24,
      "numberOfTruck": 23,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 11
    },
    {
      "camera": "63ae7d29bfd3d90017e8f437",
      "loc": {
        "type": "Point",
        "coordinates": [106.65613174438477, 10.777830777435803]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 473,
      "numberOfCar": 258,
      "numberOfVan": 13,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 19
    },
    {
      "camera": "63b3c274bfd3d90017e9ab93",
      "loc": {
        "type": "Point",
        "coordinates": [106.66252076625824, 10.75469551974465]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 551,
      "numberOfCar": 262,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 24,
      "numberOfFireTruck": 12,
      "numberOfContainer": 18
    },
    {
      "camera": "63b3c2fbbfd3d90017e9abbf",
      "loc": {
        "type": "Point",
        "coordinates": [106.7243792116642, 10.798008997269626]
      },
      "numberOfBicycle": 108,
      "numberOfMotorcycle": 466,
      "numberOfCar": 264,
      "numberOfVan": 11,
      "numberOfTruck": 9,
      "numberOfBus": 18,
      "numberOfFireTruck": 11,
      "numberOfContainer": 19
    },
    {
      "camera": "63b3c59fbfd3d90017e9ace8",
      "loc": {
        "type": "Point",
        "coordinates": [106.57759666442871, 10.812525059639839]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 543,
      "numberOfCar": 285,
      "numberOfVan": 20,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 22
    },
    {
      "camera": "63b3c9bfbfd3d90017e9b039",
      "loc": {
        "type": "Point",
        "coordinates": [106.74685478210449, 10.841883490311513]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 546,
      "numberOfCar": 281,
      "numberOfVan": 17,
      "numberOfTruck": 12,
      "numberOfBus": 20,
      "numberOfFireTruck": 13,
      "numberOfContainer": 24
    },
    {
      "camera": "63b54898bfd3d90017ea77ae",
      "loc": {
        "type": "Point",
        "coordinates": [106.79689407348633, 10.791205202047887]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 522,
      "numberOfCar": 268,
      "numberOfVan": 13,
      "numberOfTruck": 22,
      "numberOfBus": 13,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "63b548c3bfd3d90017ea77c0",
      "loc": {
        "type": "Point",
        "coordinates": [106.80694699287415, 10.792733368728047]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 531,
      "numberOfCar": 294,
      "numberOfVan": 27,
      "numberOfTruck": 21,
      "numberOfBus": 23,
      "numberOfFireTruck": 22,
      "numberOfContainer": 21
    },
    {
      "camera": "63b548ecbfd3d90017ea77d2",
      "loc": {
        "type": "Point",
        "coordinates": [106.79199099540709, 10.790962802481276]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 524,
      "numberOfCar": 268,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 13
    },
    {
      "camera": "63b54909bfd3d90017ea77e4",
      "loc": {
        "type": "Point",
        "coordinates": [106.79290294647217, 10.790983880712217]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 573,
      "numberOfCar": 276,
      "numberOfVan": 22,
      "numberOfTruck": 18,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 18
    },
    {
      "camera": "63b54938bfd3d90017ea77f6",
      "loc": {
        "type": "Point",
        "coordinates": [106.81716084480286, 10.805548584783494]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 566,
      "numberOfCar": 279,
      "numberOfVan": 14,
      "numberOfTruck": 21,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "63b54968bfd3d90017ea7808",
      "loc": {
        "type": "Point",
        "coordinates": [106.7816162109375, 10.79043584622739]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 586,
      "numberOfCar": 274,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 24,
      "numberOfFireTruck": 19,
      "numberOfContainer": 24
    },
    {
      "camera": "63b54996bfd3d90017ea781a",
      "loc": {
        "type": "Point",
        "coordinates": [106.77427768707275, 10.81670875904515]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 505,
      "numberOfCar": 272,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 27,
      "numberOfContainer": 15
    },
    {
      "camera": "63b549b8bfd3d90017ea782c",
      "loc": {
        "type": "Point",
        "coordinates": [106.76919221878052, 10.824433169045323]
      },
      "numberOfBicycle": 114,
      "numberOfMotorcycle": 513,
      "numberOfCar": 237,
      "numberOfVan": 19,
      "numberOfTruck": 16,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "63b54a04bfd3d90017ea783e",
      "loc": {
        "type": "Point",
        "coordinates": [106.8136739730835, 10.850207862370524]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 605,
      "numberOfCar": 275,
      "numberOfVan": 21,
      "numberOfTruck": 12,
      "numberOfBus": 12,
      "numberOfFireTruck": 25,
      "numberOfContainer": 19
    },
    {
      "camera": "63b54a48bfd3d90017ea7850",
      "loc": {
        "type": "Point",
        "coordinates": [106.80800914764404, 10.824380479337636]
      },
      "numberOfBicycle": 65,
      "numberOfMotorcycle": 561,
      "numberOfCar": 247,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 12,
      "numberOfContainer": 26
    },
    {
      "camera": "63b54a70bfd3d90017ea7862",
      "loc": {
        "type": "Point",
        "coordinates": [106.8044900894165, 10.830049838743976]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 621,
      "numberOfCar": 264,
      "numberOfVan": 17,
      "numberOfTruck": 16,
      "numberOfBus": 17,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "63b54a9ebfd3d90017ea7911",
      "loc": {
        "type": "Point",
        "coordinates": [106.82869434356688, 10.842810773602949]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 506,
      "numberOfCar": 271,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 14,
      "numberOfFireTruck": 15,
      "numberOfContainer": 16
    },
    {
      "camera": "63b54ad1bfd3d90017ea7974",
      "loc": {
        "type": "Point",
        "coordinates": [106.79254353046417, 10.804536877081373]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 625,
      "numberOfCar": 284,
      "numberOfVan": 17,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "63b54aedbfd3d90017ea79c3",
      "loc": {
        "type": "Point",
        "coordinates": [106.7919373512268, 10.804947883746554]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 573,
      "numberOfCar": 284,
      "numberOfVan": 15,
      "numberOfTruck": 18,
      "numberOfBus": 16,
      "numberOfFireTruck": 9,
      "numberOfContainer": 17
    },
    {
      "camera": "63b54bcdbfd3d90017ea7a82",
      "loc": {
        "type": "Point",
        "coordinates": [106.71809077262878, 10.896082579408835]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 521,
      "numberOfCar": 261,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 17,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "63b54c51bfd3d90017ea7aa0",
      "loc": {
        "type": "Point",
        "coordinates": [106.76022827625275, 10.826688279850183]
      },
      "numberOfBicycle": 84,
      "numberOfMotorcycle": 642,
      "numberOfCar": 278,
      "numberOfVan": 16,
      "numberOfTruck": 16,
      "numberOfBus": 20,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "63b54c93bfd3d90017ea7ab8",
      "loc": {
        "type": "Point",
        "coordinates": [106.77785038948058, 10.858900788285478]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 481,
      "numberOfCar": 257,
      "numberOfVan": 22,
      "numberOfTruck": 20,
      "numberOfBus": 19,
      "numberOfFireTruck": 15,
      "numberOfContainer": 19
    },
    {
      "camera": "63b54cffbfd3d90017ea7ad0",
      "loc": {
        "type": "Point",
        "coordinates": [106.73239231109619, 10.873051276771323]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 582,
      "numberOfCar": 257,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "63b54d27bfd3d90017ea7ae5",
      "loc": {
        "type": "Point",
        "coordinates": [106.7877745628357, 10.858194826768456]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 572,
      "numberOfCar": 253,
      "numberOfVan": 15,
      "numberOfTruck": 25,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "63b54d5abfd3d90017ea7afe",
      "loc": {
        "type": "Point",
        "coordinates": [106.75588846206665, 10.826667204126831]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 512,
      "numberOfCar": 275,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 21,
      "numberOfFireTruck": 16,
      "numberOfContainer": 21
    },
    {
      "camera": "63b54dcbbfd3d90017ea7ba8",
      "loc": {
        "type": "Point",
        "coordinates": [106.79384708404541, 10.865338658847957]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 414,
      "numberOfCar": 278,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 17,
      "numberOfFireTruck": 22,
      "numberOfContainer": 22
    },
    {
      "camera": "63b54f70bfd3d90017ea7c86",
      "loc": {
        "type": "Point",
        "coordinates": [106.72627687454224, 10.79856140894338]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 586,
      "numberOfCar": 295,
      "numberOfVan": 17,
      "numberOfTruck": 14,
      "numberOfBus": 19,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "63b55020bfd3d90017ea7cb7",
      "loc": {
        "type": "Point",
        "coordinates": [106.77515745162964, 10.770273806630767]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 542,
      "numberOfCar": 264,
      "numberOfVan": 18,
      "numberOfTruck": 14,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "63b5503bbfd3d90017ea7ccc",
      "loc": {
        "type": "Point",
        "coordinates": [106.77508234977722, 10.769746814145492]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 569,
      "numberOfCar": 282,
      "numberOfVan": 17,
      "numberOfTruck": 20,
      "numberOfBus": 14,
      "numberOfFireTruck": 18,
      "numberOfContainer": 21
    },
    {
      "camera": "63b65e6abfd3d90017eaa361",
      "loc": {
        "type": "Point",
        "coordinates": [106.75423622131348, 10.790330454865765]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 492,
      "numberOfCar": 254,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 15,
      "numberOfFireTruck": 22,
      "numberOfContainer": 18
    },
    {
      "camera": "63b65ebebfd3d90017eaa3ae",
      "loc": {
        "type": "Point",
        "coordinates": [106.71642780303955, 10.789144799501733]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 535,
      "numberOfCar": 252,
      "numberOfVan": 17,
      "numberOfTruck": 19,
      "numberOfBus": 14,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "63b65f33bfd3d90017eaa405",
      "loc": {
        "type": "Point",
        "coordinates": [106.71695351600647, 10.788797006374688]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 558,
      "numberOfCar": 278,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 14
    },
    {
      "camera": "63b65f64bfd3d90017eaa41f",
      "loc": {
        "type": "Point",
        "coordinates": [106.71161592006683, 10.806818483896206]
      },
      "numberOfBicycle": 73,
      "numberOfMotorcycle": 543,
      "numberOfCar": 265,
      "numberOfVan": 11,
      "numberOfTruck": 16,
      "numberOfBus": 11,
      "numberOfFireTruck": 14,
      "numberOfContainer": 19
    },
    {
      "camera": "63b65f8dbfd3d90017eaa434",
      "loc": {
        "type": "Point",
        "coordinates": [106.70740485191345, 10.792743907781624]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 550,
      "numberOfCar": 273,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 13
    },
    {
      "camera": "63b65fa9bfd3d90017eaa449",
      "loc": {
        "type": "Point",
        "coordinates": [106.70981884002686, 10.795315425807853]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 507,
      "numberOfCar": 275,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 14,
      "numberOfFireTruck": 14,
      "numberOfContainer": 21
    },
    {
      "camera": "63b65fd8bfd3d90017eaa461",
      "loc": {
        "type": "Point",
        "coordinates": [106.6960859298706, 10.795652672441406]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 518,
      "numberOfCar": 279,
      "numberOfVan": 22,
      "numberOfTruck": 23,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 15
    },
    {
      "camera": "63b66035bfd3d90017eaa48e",
      "loc": {
        "type": "Point",
        "coordinates": [106.69502377510071, 10.805348351238072]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 530,
      "numberOfCar": 282,
      "numberOfVan": 13,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "63b66051bfd3d90017eaa4a3",
      "loc": {
        "type": "Point",
        "coordinates": [106.69548511505126, 10.811228838664457]
      },
      "numberOfBicycle": 114,
      "numberOfMotorcycle": 527,
      "numberOfCar": 289,
      "numberOfVan": 18,
      "numberOfTruck": 13,
      "numberOfBus": 23,
      "numberOfFireTruck": 20,
      "numberOfContainer": 14
    },
    {
      "camera": "63b66089bfd3d90017eaa4bd",
      "loc": {
        "type": "Point",
        "coordinates": [106.69575333595276, 10.811407991490512]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 594,
      "numberOfCar": 293,
      "numberOfVan": 16,
      "numberOfTruck": 14,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 15
    },
    {
      "camera": "63b660d8bfd3d90017eaa4d5",
      "loc": {
        "type": "Point",
        "coordinates": [106.72369122505188, 10.752766623083232]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 520,
      "numberOfCar": 252,
      "numberOfVan": 12,
      "numberOfTruck": 21,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 12
    },
    {
      "camera": "63b660f8bfd3d90017eaa4ea",
      "loc": {
        "type": "Point",
        "coordinates": [106.72386288642883, 10.752650678082237]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 605,
      "numberOfCar": 290,
      "numberOfVan": 15,
      "numberOfTruck": 22,
      "numberOfBus": 15,
      "numberOfFireTruck": 27,
      "numberOfContainer": 23
    },
    {
      "camera": "63b6617ebfd3d90017eaa50b",
      "loc": {
        "type": "Point",
        "coordinates": [106.7139172554016, 10.759243661673208]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 469,
      "numberOfCar": 264,
      "numberOfVan": 22,
      "numberOfTruck": 21,
      "numberOfBus": 20,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "63b661a3bfd3d90017eaa520",
      "loc": {
        "type": "Point",
        "coordinates": [106.7133218050003, 10.75961256936665]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 490,
      "numberOfCar": 244,
      "numberOfVan": 14,
      "numberOfTruck": 18,
      "numberOfBus": 12,
      "numberOfFireTruck": 17,
      "numberOfContainer": 24
    },
    {
      "camera": "63b664d2bfd3d90017eaaa0f",
      "loc": {
        "type": "Point",
        "coordinates": [106.57115936279295, 10.685258028572397]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 557,
      "numberOfCar": 246,
      "numberOfVan": 17,
      "numberOfTruck": 12,
      "numberOfBus": 21,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "63b664edbfd3d90017eaaa24",
      "loc": {
        "type": "Point",
        "coordinates": [106.56688392162323, 10.684630731099254]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 569,
      "numberOfCar": 258,
      "numberOfVan": 18,
      "numberOfTruck": 24,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "63bd1e95bfd3d90017ec3cd5",
      "loc": {
        "type": "Point",
        "coordinates": [106.73168420791625, 10.713110837606749]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 572,
      "numberOfCar": 276,
      "numberOfVan": 21,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "63bd1f21bfd3d90017ec3d04",
      "loc": {
        "type": "Point",
        "coordinates": [106.73766016960144, 10.705204357796118]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 535,
      "numberOfCar": 253,
      "numberOfVan": 28,
      "numberOfTruck": 17,
      "numberOfBus": 22,
      "numberOfFireTruck": 21,
      "numberOfContainer": 12
    },
    {
      "camera": "63bd1f48bfd3d90017ec3d19",
      "loc": {
        "type": "Point",
        "coordinates": [106.73035383224486, 10.737524743798526]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 550,
      "numberOfCar": 281,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 18,
      "numberOfFireTruck": 23,
      "numberOfContainer": 20
    },
    {
      "camera": "649da419a6068200171a6c90",
      "loc": {
        "type": "Point",
        "coordinates": [106.66560530662537, 10.759206770879036]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 570,
      "numberOfCar": 271,
      "numberOfVan": 17,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 22,
      "numberOfContainer": 17
    },
    {
      "camera": "649da495a6068200171a6cb6",
      "loc": {
        "type": "Point",
        "coordinates": [106.74000978469849, 10.781793631904456]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 549,
      "numberOfCar": 272,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "649da72ca6068200171a6dbb",
      "loc": {
        "type": "Point",
        "coordinates": [106.70635342597961, 10.77107483344246]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 549,
      "numberOfCar": 251,
      "numberOfVan": 12,
      "numberOfTruck": 16,
      "numberOfBus": 22,
      "numberOfFireTruck": 21,
      "numberOfContainer": 23
    },
    {
      "camera": "649da77ea6068200171a6dd4",
      "loc": {
        "type": "Point",
        "coordinates": [106.70676112174988, 10.77530126857797]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 611,
      "numberOfCar": 287,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 12
    },
    {
      "camera": "65e054fb6b18080018db6632",
      "loc": {
        "type": "Point",
        "coordinates": [106.70118749141692, 10.783216452557472]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 485,
      "numberOfCar": 278,
      "numberOfVan": 17,
      "numberOfTruck": 17,
      "numberOfBus": 14,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "65e0552f6b18080018db6647",
      "loc": {
        "type": "Point",
        "coordinates": [106.69788837432861, 10.771707221525785]
      },
      "numberOfBicycle": 72,
      "numberOfMotorcycle": 599,
      "numberOfCar": 268,
      "numberOfVan": 15,
      "numberOfTruck": 15,
      "numberOfBus": 21,
      "numberOfFireTruck": 19,
      "numberOfContainer": 20
    },
    {
      "camera": "65e0556b6b18080018db665e",
      "loc": {
        "type": "Point",
        "coordinates": [106.69463753700256, 10.768977403461305]
      },
      "numberOfBicycle": 110,
      "numberOfMotorcycle": 515,
      "numberOfCar": 272,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 15,
      "numberOfFireTruck": 17,
      "numberOfContainer": 19
    },
    {
      "camera": "6623df636f998a001b251e92",
      "loc": {
        "type": "Point",
        "coordinates": [106.69704079627991, 10.7839015119534]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 567,
      "numberOfCar": 287,
      "numberOfVan": 18,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 27,
      "numberOfContainer": 14
    },
    {
      "camera": "6623e2e16f998a001b252233",
      "loc": {
        "type": "Point",
        "coordinates": [106.68938040733336, 10.78990888904981]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 590,
      "numberOfCar": 256,
      "numberOfVan": 19,
      "numberOfTruck": 24,
      "numberOfBus": 15,
      "numberOfFireTruck": 14,
      "numberOfContainer": 20
    },
    {
      "camera": "6623e31e6f998a001b252250",
      "loc": {
        "type": "Point",
        "coordinates": [106.6816771030426, 10.781667158631887]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 586,
      "numberOfCar": 289,
      "numberOfVan": 14,
      "numberOfTruck": 9,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 13
    },
    {
      "camera": "6623e3566f998a001b25226d",
      "loc": {
        "type": "Point",
        "coordinates": [106.68093681335449, 10.786135848678958]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 574,
      "numberOfCar": 278,
      "numberOfVan": 20,
      "numberOfTruck": 16,
      "numberOfBus": 15,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "6623e3a26f998a001b252291",
      "loc": {
        "type": "Point",
        "coordinates": [106.68446660041808, 10.784386322275484]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 467,
      "numberOfCar": 280,
      "numberOfVan": 17,
      "numberOfTruck": 22,
      "numberOfBus": 17,
      "numberOfFireTruck": 14,
      "numberOfContainer": 15
    },
    {
      "camera": "6623e3ea6f998a001b2522ae",
      "loc": {
        "type": "Point",
        "coordinates": [106.68213844299316, 10.770041930050843]
      },
      "numberOfBicycle": 115,
      "numberOfMotorcycle": 526,
      "numberOfCar": 284,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "6623e43e6f998a001b2522cb",
      "loc": {
        "type": "Point",
        "coordinates": [106.69062495231628, 10.774805903937924]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 603,
      "numberOfCar": 262,
      "numberOfVan": 21,
      "numberOfTruck": 10,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "6623e4b06f998a001b2522f1",
      "loc": {
        "type": "Point",
        "coordinates": [106.68638706207275, 10.77037920501717]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 502,
      "numberOfCar": 252,
      "numberOfVan": 21,
      "numberOfTruck": 15,
      "numberOfBus": 22,
      "numberOfFireTruck": 23,
      "numberOfContainer": 18
    },
    {
      "camera": "6623e5066f998a001b252317",
      "loc": {
        "type": "Point",
        "coordinates": [106.68719172477722, 10.771264550006899]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 531,
      "numberOfCar": 266,
      "numberOfVan": 21,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 11
    },
    {
      "camera": "6623e5776f998a001b252337",
      "loc": {
        "type": "Point",
        "coordinates": [106.67843699455261, 10.784512794404923]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 548,
      "numberOfCar": 289,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 14,
      "numberOfFireTruck": 20,
      "numberOfContainer": 18
    },
    {
      "camera": "6623e5d66f998a001b25235a",
      "loc": {
        "type": "Point",
        "coordinates": [106.67032599449156, 10.783880433226015]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 545,
      "numberOfCar": 252,
      "numberOfVan": 14,
      "numberOfTruck": 23,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 22
    },
    {
      "camera": "6623e61d6f998a001b252377",
      "loc": {
        "type": "Point",
        "coordinates": [106.67858719825745, 10.779453867756652]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 599,
      "numberOfCar": 246,
      "numberOfVan": 18,
      "numberOfTruck": 18,
      "numberOfBus": 11,
      "numberOfFireTruck": 19,
      "numberOfContainer": 21
    },
    {
      "camera": "6623e6706f998a001b25239b",
      "loc": {
        "type": "Point",
        "coordinates": [106.67504668235779, 10.761272648401206]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 502,
      "numberOfCar": 271,
      "numberOfVan": 19,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 20,
      "numberOfContainer": 14
    },
    {
      "camera": "6623e6b86f998a001b2523b8",
      "loc": {
        "type": "Point",
        "coordinates": [106.676344871521, 10.766964278538435]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 559,
      "numberOfCar": 254,
      "numberOfVan": 17,
      "numberOfTruck": 20,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 21
    },
    {
      "camera": "6623e7076f998a001b2523ea",
      "loc": {
        "type": "Point",
        "coordinates": [106.67149543762206, 10.767775854078609]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 539,
      "numberOfCar": 284,
      "numberOfVan": 13,
      "numberOfTruck": 19,
      "numberOfBus": 15,
      "numberOfFireTruck": 24,
      "numberOfContainer": 18
    },
    {
      "camera": "6623e7526f998a001b252407",
      "loc": {
        "type": "Point",
        "coordinates": [106.6663134098053, 10.769420078341605]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 521,
      "numberOfCar": 246,
      "numberOfVan": 21,
      "numberOfTruck": 22,
      "numberOfBus": 16,
      "numberOfFireTruck": 23,
      "numberOfContainer": 22
    },
    {
      "camera": "6623e7b76f998a001b25242d",
      "loc": {
        "type": "Point",
        "coordinates": [106.70926094055176, 10.808351840394893]
      },
      "numberOfBicycle": 67,
      "numberOfMotorcycle": 478,
      "numberOfCar": 247,
      "numberOfVan": 15,
      "numberOfTruck": 18,
      "numberOfBus": 21,
      "numberOfFireTruck": 17,
      "numberOfContainer": 15
    },
    {
      "camera": "6623e7f06f998a001b25244a",
      "loc": {
        "type": "Point",
        "coordinates": [106.70917510986328, 10.810596533717474]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 458,
      "numberOfCar": 279,
      "numberOfVan": 16,
      "numberOfTruck": 22,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "6623e8406f998a001b252465",
      "loc": {
        "type": "Point",
        "coordinates": [106.69235229492188, 10.803177389488075]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 547,
      "numberOfCar": 291,
      "numberOfVan": 25,
      "numberOfTruck": 20,
      "numberOfBus": 15,
      "numberOfFireTruck": 16,
      "numberOfContainer": 17
    },
    {
      "camera": "6623e88c6f998a001b25248b",
      "loc": {
        "type": "Point",
        "coordinates": [106.67603373527527, 10.811197223448751]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 527,
      "numberOfCar": 280,
      "numberOfVan": 13,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 20
    },
    {
      "camera": "6623e8da6f998a001b2524a6",
      "loc": {
        "type": "Point",
        "coordinates": [106.68453097343445, 10.803293315026787]
      },
      "numberOfBicycle": 59,
      "numberOfMotorcycle": 595,
      "numberOfCar": 279,
      "numberOfVan": 23,
      "numberOfTruck": 23,
      "numberOfBus": 20,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "6623e9e96f998a001b2525ce",
      "loc": {
        "type": "Point",
        "coordinates": [106.68192386627197, 10.795863451395165]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 533,
      "numberOfCar": 273,
      "numberOfVan": 19,
      "numberOfTruck": 13,
      "numberOfBus": 18,
      "numberOfFireTruck": 13,
      "numberOfContainer": 14
    },
    {
      "camera": "6623ea416f998a001b25260a",
      "loc": {
        "type": "Point",
        "coordinates": [106.68115139007568, 10.797191355403706]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 641,
      "numberOfCar": 267,
      "numberOfVan": 18,
      "numberOfTruck": 16,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 19
    },
    {
      "camera": "6623eb466f998a001b252632",
      "loc": {
        "type": "Point",
        "coordinates": [106.67922019958496, 10.853695599993376]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 489,
      "numberOfCar": 268,
      "numberOfVan": 15,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 16
    },
    {
      "camera": "6623ec826f998a001b252686",
      "loc": {
        "type": "Point",
        "coordinates": [106.67661309242249, 10.841936176939177]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 425,
      "numberOfCar": 271,
      "numberOfVan": 14,
      "numberOfTruck": 18,
      "numberOfBus": 22,
      "numberOfFireTruck": 19,
      "numberOfContainer": 18
    },
    {
      "camera": "6623ecc16f998a001b25269e",
      "loc": {
        "type": "Point",
        "coordinates": [106.67551875114441, 10.838553676620977]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 527,
      "numberOfCar": 277,
      "numberOfVan": 22,
      "numberOfTruck": 11,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "6623ed396f998a001b2526b8",
      "loc": {
        "type": "Point",
        "coordinates": [106.68346881866455, 10.820344420196985]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 484,
      "numberOfCar": 302,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 13,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "6623ed9b6f998a001b2526cd",
      "loc": {
        "type": "Point",
        "coordinates": [106.68009996414185, 10.8260981590362]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 545,
      "numberOfCar": 260,
      "numberOfVan": 18,
      "numberOfTruck": 20,
      "numberOfBus": 15,
      "numberOfFireTruck": 12,
      "numberOfContainer": 20
    },
    {
      "camera": "6623edd26f998a001b2526f7",
      "loc": {
        "type": "Point",
        "coordinates": [106.67954206466675, 10.826793658444643]
      },
      "numberOfBicycle": 108,
      "numberOfMotorcycle": 532,
      "numberOfCar": 270,
      "numberOfVan": 25,
      "numberOfTruck": 16,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "6623ee176f998a001b25270c",
      "loc": {
        "type": "Point",
        "coordinates": [106.68190240859985, 10.829417573493968]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 491,
      "numberOfCar": 265,
      "numberOfVan": 19,
      "numberOfTruck": 21,
      "numberOfBus": 16,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "6623ee666f998a001b252726",
      "loc": {
        "type": "Point",
        "coordinates": [106.64012432098389, 10.84429652833867]
      },
      "numberOfBicycle": 71,
      "numberOfMotorcycle": 494,
      "numberOfCar": 269,
      "numberOfVan": 15,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 16
    },
    {
      "camera": "6623eec96f998a001b25273b",
      "loc": {
        "type": "Point",
        "coordinates": [106.66437149047852, 10.83464425946617]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 582,
      "numberOfCar": 249,
      "numberOfVan": 13,
      "numberOfTruck": 20,
      "numberOfBus": 14,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "6623ef2b6f998a001b252753",
      "loc": {
        "type": "Point",
        "coordinates": [106.58770322799683, 10.849828528936568]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 571,
      "numberOfCar": 265,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 17,
      "numberOfFireTruck": 16,
      "numberOfContainer": 13
    },
    {
      "camera": "6623ef776f998a001b252768",
      "loc": {
        "type": "Point",
        "coordinates": [106.60274505615233, 10.861671934527296]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 648,
      "numberOfCar": 283,
      "numberOfVan": 20,
      "numberOfTruck": 14,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 19
    },
    {
      "camera": "6623efc26f998a001b25277f",
      "loc": {
        "type": "Point",
        "coordinates": [106.61551237106323, 10.867572388369775]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 539,
      "numberOfCar": 269,
      "numberOfVan": 16,
      "numberOfTruck": 17,
      "numberOfBus": 22,
      "numberOfFireTruck": 25,
      "numberOfContainer": 16
    },
    {
      "camera": "6623f0246f998a001b252797",
      "loc": {
        "type": "Point",
        "coordinates": [106.6382360458374, 10.795747522988904]
      },
      "numberOfBicycle": 63,
      "numberOfMotorcycle": 549,
      "numberOfCar": 268,
      "numberOfVan": 22,
      "numberOfTruck": 17,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 14
    },
    {
      "camera": "6623f0576f998a001b2527ac",
      "loc": {
        "type": "Point",
        "coordinates": [106.64158344268797, 10.785925062904486]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 555,
      "numberOfCar": 280,
      "numberOfVan": 20,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 15,
      "numberOfContainer": 17
    },
    {
      "camera": "6623f0b46f998a001b2527c3",
      "loc": {
        "type": "Point",
        "coordinates": [106.63140177726746, 10.770421364361408]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 569,
      "numberOfCar": 249,
      "numberOfVan": 17,
      "numberOfTruck": 14,
      "numberOfBus": 22,
      "numberOfFireTruck": 17,
      "numberOfContainer": 24
    },
    {
      "camera": "6623f1046f998a001b2527db",
      "loc": {
        "type": "Point",
        "coordinates": [106.63612246513365, 10.782151972554702]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 658,
      "numberOfCar": 270,
      "numberOfVan": 19,
      "numberOfTruck": 10,
      "numberOfBus": 27,
      "numberOfFireTruck": 23,
      "numberOfContainer": 15
    },
    {
      "camera": "6623f14b6f998a001b2527f0",
      "loc": {
        "type": "Point",
        "coordinates": [106.63257122039795, 10.803757016734105]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 549,
      "numberOfCar": 261,
      "numberOfVan": 14,
      "numberOfTruck": 22,
      "numberOfBus": 15,
      "numberOfFireTruck": 11,
      "numberOfContainer": 15
    },
    {
      "camera": "6623f1996f998a001b252805",
      "loc": {
        "type": "Point",
        "coordinates": [106.75603866577148, 10.80919491966803]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 588,
      "numberOfCar": 272,
      "numberOfVan": 15,
      "numberOfTruck": 11,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "6623f1f16f998a001b25281f",
      "loc": {
        "type": "Point",
        "coordinates": [106.75904273986816, 10.86506470973697]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 527,
      "numberOfCar": 269,
      "numberOfVan": 15,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 14,
      "numberOfContainer": 19
    },
    {
      "camera": "6623f3436f998a001b252863",
      "loc": {
        "type": "Point",
        "coordinates": [106.7616605758667, 10.866497671535535]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 539,
      "numberOfCar": 261,
      "numberOfVan": 14,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 24
    },
    {
      "camera": "6623f36e6f998a001b252878",
      "loc": {
        "type": "Point",
        "coordinates": [106.76228284835815, 10.866392306931726]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 535,
      "numberOfCar": 286,
      "numberOfVan": 17,
      "numberOfTruck": 20,
      "numberOfBus": 26,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "6623f3d66f998a001b252890",
      "loc": {
        "type": "Point",
        "coordinates": [106.76983594894409, 10.88228086887948]
      },
      "numberOfBicycle": 66,
      "numberOfMotorcycle": 516,
      "numberOfCar": 266,
      "numberOfVan": 26,
      "numberOfTruck": 19,
      "numberOfBus": 21,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "6623f44f6f998a001b2528aa",
      "loc": {
        "type": "Point",
        "coordinates": [106.76571607589722, 10.834970924310076]
      },
      "numberOfBicycle": 68,
      "numberOfMotorcycle": 554,
      "numberOfCar": 261,
      "numberOfVan": 18,
      "numberOfTruck": 14,
      "numberOfBus": 14,
      "numberOfFireTruck": 16,
      "numberOfContainer": 17
    },
    {
      "camera": "6623f4836f998a001b2528bf",
      "loc": {
        "type": "Point",
        "coordinates": [106.7658019065857, 10.835497802339427]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 543,
      "numberOfCar": 248,
      "numberOfVan": 20,
      "numberOfTruck": 16,
      "numberOfBus": 28,
      "numberOfFireTruck": 13,
      "numberOfContainer": 20
    },
    {
      "camera": "6623f4df6f998a001b2528eb",
      "loc": {
        "type": "Point",
        "coordinates": [106.71380996704102, 10.836193279918211]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 546,
      "numberOfCar": 267,
      "numberOfVan": 13,
      "numberOfTruck": 24,
      "numberOfBus": 12,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "6623f51a6f998a001b252900",
      "loc": {
        "type": "Point",
        "coordinates": [106.7163634300232, 10.840345036692701]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 544,
      "numberOfCar": 243,
      "numberOfVan": 21,
      "numberOfTruck": 16,
      "numberOfBus": 13,
      "numberOfFireTruck": 18,
      "numberOfContainer": 25
    },
    {
      "camera": "6623f5876f998a001b25291a",
      "loc": {
        "type": "Point",
        "coordinates": [106.74593210220337, 10.8021340576256]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 587,
      "numberOfCar": 262,
      "numberOfVan": 18,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 23,
      "numberOfContainer": 19
    },
    {
      "camera": "6623f5b56f998a001b25292f",
      "loc": {
        "type": "Point",
        "coordinates": [106.74660801887511, 10.80227106100622]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 504,
      "numberOfCar": 249,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 21,
      "numberOfFireTruck": 15,
      "numberOfContainer": 19
    },
    {
      "camera": "662a861e1afb9c00172d23ad",
      "loc": {
        "type": "Point",
        "coordinates": [106.7181873321533, 10.695484375988409]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 559,
      "numberOfCar": 279,
      "numberOfVan": 18,
      "numberOfTruck": 14,
      "numberOfBus": 26,
      "numberOfFireTruck": 20,
      "numberOfContainer": 22
    },
    {
      "camera": "662a86a11afb9c00172d2410",
      "loc": {
        "type": "Point",
        "coordinates": [106.65856719017029, 10.745604300539469]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 549,
      "numberOfCar": 277,
      "numberOfVan": 21,
      "numberOfTruck": 13,
      "numberOfBus": 23,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "662a873b1afb9c00172d2483",
      "loc": {
        "type": "Point",
        "coordinates": [106.58182382583618, 10.748950955112786]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 563,
      "numberOfCar": 268,
      "numberOfVan": 17,
      "numberOfTruck": 14,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 12
    },
    {
      "camera": "662a87641afb9c00172d24b0",
      "loc": {
        "type": "Point",
        "coordinates": [106.58087968826294, 10.74922501022156]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 540,
      "numberOfCar": 237,
      "numberOfVan": 23,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 12
    },
    {
      "camera": "662a87a41afb9c00172d24e9",
      "loc": {
        "type": "Point",
        "coordinates": [106.56967878341675, 10.761725874739577]
      },
      "numberOfBicycle": 74,
      "numberOfMotorcycle": 621,
      "numberOfCar": 273,
      "numberOfVan": 12,
      "numberOfTruck": 16,
      "numberOfBus": 22,
      "numberOfFireTruck": 14,
      "numberOfContainer": 23
    },
    {
      "camera": "662a87df1afb9c00172d2522",
      "loc": {
        "type": "Point",
        "coordinates": [106.58502101898192, 10.747854732189253]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 550,
      "numberOfCar": 290,
      "numberOfVan": 16,
      "numberOfTruck": 12,
      "numberOfBus": 14,
      "numberOfFireTruck": 16,
      "numberOfContainer": 16
    },
    {
      "camera": "662a881a1afb9c00172d2559",
      "loc": {
        "type": "Point",
        "coordinates": [106.61497592926025, 10.73805179257537]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 574,
      "numberOfCar": 300,
      "numberOfVan": 13,
      "numberOfTruck": 28,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 16
    },
    {
      "camera": "662a88521afb9c00172d2592",
      "loc": {
        "type": "Point",
        "coordinates": [106.60726189613342, 10.72818528702747]
      },
      "numberOfBicycle": 119,
      "numberOfMotorcycle": 564,
      "numberOfCar": 271,
      "numberOfVan": 23,
      "numberOfTruck": 20,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 19
    },
    {
      "camera": "662a89211afb9c00172d2636",
      "loc": {
        "type": "Point",
        "coordinates": [106.5979814529419, 10.705952846726015]
      },
      "numberOfBicycle": 111,
      "numberOfMotorcycle": 539,
      "numberOfCar": 251,
      "numberOfVan": 17,
      "numberOfTruck": 25,
      "numberOfBus": 22,
      "numberOfFireTruck": 15,
      "numberOfContainer": 12
    },
    {
      "camera": "662a896e1afb9c00172d2674",
      "loc": {
        "type": "Point",
        "coordinates": [106.57742500305174, 10.730272459287301]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 563,
      "numberOfCar": 271,
      "numberOfVan": 10,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 14,
      "numberOfContainer": 13
    },
    {
      "camera": "662a89ae1afb9c00172d26ad",
      "loc": {
        "type": "Point",
        "coordinates": [106.63353681564331, 10.702821831431617]
      },
      "numberOfBicycle": 124,
      "numberOfMotorcycle": 543,
      "numberOfCar": 258,
      "numberOfVan": 23,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 13,
      "numberOfContainer": 22
    },
    {
      "camera": "662a89f51afb9c00172d26ef",
      "loc": {
        "type": "Point",
        "coordinates": [106.63465261459349, 10.702400143398902]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 555,
      "numberOfCar": 263,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 23,
      "numberOfFireTruck": 21,
      "numberOfContainer": 17
    },
    {
      "camera": "662a8a661afb9c00172d2762",
      "loc": {
        "type": "Point",
        "coordinates": [106.61046981811523, 10.69398734459857]
      },
      "numberOfBicycle": 61,
      "numberOfMotorcycle": 549,
      "numberOfCar": 257,
      "numberOfVan": 22,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 15,
      "numberOfContainer": 21
    },
    {
      "camera": "662a8b061afb9c00172d27d7",
      "loc": {
        "type": "Point",
        "coordinates": [106.6608738899231, 10.723272996482265]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 540,
      "numberOfCar": 304,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 24,
      "numberOfFireTruck": 20,
      "numberOfContainer": 18
    },
    {
      "camera": "662a8b9e1afb9c00172d284d",
      "loc": {
        "type": "Point",
        "coordinates": [106.58578276634216, 10.688283798182258]
      },
      "numberOfBicycle": 69,
      "numberOfMotorcycle": 573,
      "numberOfCar": 291,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 16
    },
    {
      "camera": "662a8c381afb9c00172d28b6",
      "loc": {
        "type": "Point",
        "coordinates": [106.68958425521849, 10.73885290495532]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 487,
      "numberOfCar": 258,
      "numberOfVan": 17,
      "numberOfTruck": 15,
      "numberOfBus": 15,
      "numberOfFireTruck": 21,
      "numberOfContainer": 15
    },
    {
      "camera": "662a8c931afb9c00172d2901",
      "loc": {
        "type": "Point",
        "coordinates": [106.73694133758544, 10.714333688056662]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 549,
      "numberOfCar": 275,
      "numberOfVan": 13,
      "numberOfTruck": 24,
      "numberOfBus": 15,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "662a8cc51afb9c00172d2938",
      "loc": {
        "type": "Point",
        "coordinates": [106.73200607299803, 10.73079952071083]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 575,
      "numberOfCar": 263,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 13,
      "numberOfFireTruck": 21,
      "numberOfContainer": 23
    },
    {
      "camera": "662a8cfe1afb9c00172d296e",
      "loc": {
        "type": "Point",
        "coordinates": [106.72958135604858, 10.743343311333486]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 576,
      "numberOfCar": 279,
      "numberOfVan": 16,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 14
    },
    {
      "camera": "662a8d821afb9c00172d29c8",
      "loc": {
        "type": "Point",
        "coordinates": [106.71831607818604, 10.738199366068127]
      },
      "numberOfBicycle": 94,
      "numberOfMotorcycle": 538,
      "numberOfCar": 270,
      "numberOfVan": 16,
      "numberOfTruck": 20,
      "numberOfBus": 27,
      "numberOfFireTruck": 19,
      "numberOfContainer": 16
    },
    {
      "camera": "662a8ddd1afb9c00172d2a0f",
      "loc": {
        "type": "Point",
        "coordinates": [106.7250645160675, 10.752102573837988]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 582,
      "numberOfCar": 258,
      "numberOfVan": 27,
      "numberOfTruck": 23,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 13
    },
    {
      "camera": "662a8e121afb9c00172d2a3f",
      "loc": {
        "type": "Point",
        "coordinates": [106.72386825084685, 10.755422805447822]
      },
      "numberOfBicycle": 67,
      "numberOfMotorcycle": 603,
      "numberOfCar": 271,
      "numberOfVan": 21,
      "numberOfTruck": 27,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 13
    },
    {
      "camera": "662a8e641afb9c00172d2a7e",
      "loc": {
        "type": "Point",
        "coordinates": [106.72123432159424, 10.73793584192334]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 456,
      "numberOfCar": 277,
      "numberOfVan": 21,
      "numberOfTruck": 17,
      "numberOfBus": 17,
      "numberOfFireTruck": 14,
      "numberOfContainer": 24
    },
    {
      "camera": "662a8eb41afb9c00172d2aba",
      "loc": {
        "type": "Point",
        "coordinates": [106.72182440757751, 10.737999087739055]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 498,
      "numberOfCar": 269,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 23,
      "numberOfFireTruck": 18,
      "numberOfContainer": 20
    },
    {
      "camera": "662a8ef41afb9c00172d2af2",
      "loc": {
        "type": "Point",
        "coordinates": [106.70432567596436, 10.744987668798736]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 511,
      "numberOfCar": 289,
      "numberOfVan": 19,
      "numberOfTruck": 23,
      "numberOfBus": 19,
      "numberOfFireTruck": 24,
      "numberOfContainer": 23
    },
    {
      "camera": "662a8f3a1afb9c00172d2b31",
      "loc": {
        "type": "Point",
        "coordinates": [106.70160055160522, 10.744523876574167]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 537,
      "numberOfCar": 285,
      "numberOfVan": 21,
      "numberOfTruck": 19,
      "numberOfBus": 22,
      "numberOfFireTruck": 19,
      "numberOfContainer": 19
    },
    {
      "camera": "662a8f701afb9c00172d2b5e",
      "loc": {
        "type": "Point",
        "coordinates": [106.7035961151123, 10.739928078758016]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 511,
      "numberOfCar": 267,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 21,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "662a8fd41afb9c00172d2bac",
      "loc": {
        "type": "Point",
        "coordinates": [106.73237085342407, 10.704540204099231]
      },
      "numberOfBicycle": 116,
      "numberOfMotorcycle": 526,
      "numberOfCar": 253,
      "numberOfVan": 14,
      "numberOfTruck": 13,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 14
    },
    {
      "camera": "662a902a1afb9c00172d2bed",
      "loc": {
        "type": "Point",
        "coordinates": [106.59907579421997, 10.71140305543971]
      },
      "numberOfBicycle": 111,
      "numberOfMotorcycle": 543,
      "numberOfCar": 277,
      "numberOfVan": 21,
      "numberOfTruck": 21,
      "numberOfBus": 18,
      "numberOfFireTruck": 19,
      "numberOfContainer": 12
    },
    {
      "camera": "662b4d781afb9c00172d8571",
      "loc": {
        "type": "Point",
        "coordinates": [106.67756795883179, 10.75891164436319]
      },
      "numberOfBicycle": 66,
      "numberOfMotorcycle": 437,
      "numberOfCar": 283,
      "numberOfVan": 23,
      "numberOfTruck": 19,
      "numberOfBus": 21,
      "numberOfFireTruck": 18,
      "numberOfContainer": 12
    },
    {
      "camera": "662b4de41afb9c00172d85c5",
      "loc": {
        "type": "Point",
        "coordinates": [106.65899634361267, 10.750985281333568]
      },
      "numberOfBicycle": 68,
      "numberOfMotorcycle": 579,
      "numberOfCar": 277,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 21,
      "numberOfFireTruck": 23,
      "numberOfContainer": 15
    },
    {
      "camera": "662b4e201afb9c00172d85f9",
      "loc": {
        "type": "Point",
        "coordinates": [106.65382504463196, 10.753725802746075]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 560,
      "numberOfCar": 287,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 13,
      "numberOfContainer": 18
    },
    {
      "camera": "662b4e581afb9c00172d862f",
      "loc": {
        "type": "Point",
        "coordinates": [106.67709589004515, 10.76041889461084]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 587,
      "numberOfCar": 283,
      "numberOfVan": 15,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 12,
      "numberOfContainer": 17
    },
    {
      "camera": "662b4e8e1afb9c00172d865c",
      "loc": {
        "type": "Point",
        "coordinates": [106.66148543357849, 10.758426793031518]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 524,
      "numberOfCar": 252,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 21,
      "numberOfFireTruck": 25,
      "numberOfContainer": 15
    },
    {
      "camera": "662b4ecb1afb9c00172d8692",
      "loc": {
        "type": "Point",
        "coordinates": [106.65800929069519, 10.757678434011058]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 545,
      "numberOfCar": 266,
      "numberOfVan": 16,
      "numberOfTruck": 18,
      "numberOfBus": 24,
      "numberOfFireTruck": 18,
      "numberOfContainer": 16
    },
    {
      "camera": "662b4efc1afb9c00172d86bc",
      "loc": {
        "type": "Point",
        "coordinates": [106.6678476333618, 10.752566354417159]
      },
      "numberOfBicycle": 71,
      "numberOfMotorcycle": 500,
      "numberOfCar": 239,
      "numberOfVan": 21,
      "numberOfTruck": 17,
      "numberOfBus": 19,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "662b4f411afb9c00172d86fc",
      "loc": {
        "type": "Point",
        "coordinates": [106.64236128330231, 10.74978366024954]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 565,
      "numberOfCar": 258,
      "numberOfVan": 20,
      "numberOfTruck": 9,
      "numberOfBus": 19,
      "numberOfFireTruck": 23,
      "numberOfContainer": 14
    },
    {
      "camera": "662b4f7e1afb9c00172d872e",
      "loc": {
        "type": "Point",
        "coordinates": [106.63510322570801, 10.748097166447916]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 559,
      "numberOfCar": 284,
      "numberOfVan": 18,
      "numberOfTruck": 17,
      "numberOfBus": 20,
      "numberOfFireTruck": 19,
      "numberOfContainer": 21
    },
    {
      "camera": "662b4faa1afb9c00172d875e",
      "loc": {
        "type": "Point",
        "coordinates": [106.64947986602783, 10.74972568718151]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 557,
      "numberOfCar": 278,
      "numberOfVan": 21,
      "numberOfTruck": 21,
      "numberOfBus": 21,
      "numberOfFireTruck": 18,
      "numberOfContainer": 21
    },
    {
      "camera": "662b50261afb9c00172d87b2",
      "loc": {
        "type": "Point",
        "coordinates": [106.6881787776947, 10.74207841488251]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 492,
      "numberOfCar": 278,
      "numberOfVan": 18,
      "numberOfTruck": 22,
      "numberOfBus": 24,
      "numberOfFireTruck": 13,
      "numberOfContainer": 22
    },
    {
      "camera": "662b50571afb9c00172d87df",
      "loc": {
        "type": "Point",
        "coordinates": [106.65623903274536, 10.737514202813614]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 453,
      "numberOfCar": 287,
      "numberOfVan": 20,
      "numberOfTruck": 16,
      "numberOfBus": 14,
      "numberOfFireTruck": 21,
      "numberOfContainer": 21
    },
    {
      "camera": "662b50841afb9c00172d880d",
      "loc": {
        "type": "Point",
        "coordinates": [106.66056275367737, 10.746695261303193]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 540,
      "numberOfCar": 276,
      "numberOfVan": 21,
      "numberOfTruck": 16,
      "numberOfBus": 15,
      "numberOfFireTruck": 17,
      "numberOfContainer": 20
    },
    {
      "camera": "662b50c11afb9c00172d8843",
      "loc": {
        "type": "Point",
        "coordinates": [106.62408471107483, 10.751744197447632]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 513,
      "numberOfCar": 249,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "662b50e51afb9c00172d886a",
      "loc": {
        "type": "Point",
        "coordinates": [106.62461042404175, 10.75597090365959]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 540,
      "numberOfCar": 263,
      "numberOfVan": 24,
      "numberOfTruck": 15,
      "numberOfBus": 18,
      "numberOfFireTruck": 18,
      "numberOfContainer": 18
    },
    {
      "camera": "662b51201afb9c00172d889a",
      "loc": {
        "type": "Point",
        "coordinates": [106.60413980484009, 10.765446521012159]
      },
      "numberOfBicycle": 63,
      "numberOfMotorcycle": 514,
      "numberOfCar": 280,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 15,
      "numberOfFireTruck": 16,
      "numberOfContainer": 17
    },
    {
      "camera": "662b51761afb9c00172d88ef",
      "loc": {
        "type": "Point",
        "coordinates": [106.61006212234497, 10.802956076971686]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 448,
      "numberOfCar": 277,
      "numberOfVan": 16,
      "numberOfTruck": 21,
      "numberOfBus": 16,
      "numberOfFireTruck": 18,
      "numberOfContainer": 17
    },
    {
      "camera": "662b51a41afb9c00172d8926",
      "loc": {
        "type": "Point",
        "coordinates": [106.6010069847107, 10.77639739169272]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 554,
      "numberOfCar": 279,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 20,
      "numberOfContainer": 24
    },
    {
      "camera": "662b51d21afb9c00172d89bf",
      "loc": {
        "type": "Point",
        "coordinates": [106.61025524139404, 10.752197438105355]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 531,
      "numberOfCar": 251,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 19,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "662b52131afb9c00172d8a23",
      "loc": {
        "type": "Point",
        "coordinates": [106.60698294639587, 10.758173826809852]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 571,
      "numberOfCar": 275,
      "numberOfVan": 21,
      "numberOfTruck": 14,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 11
    },
    {
      "camera": "662b52a31afb9c00172d8b01",
      "loc": {
        "type": "Point",
        "coordinates": [106.67060494422913, 10.846467192201999]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 574,
      "numberOfCar": 281,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 22,
      "numberOfFireTruck": 14,
      "numberOfContainer": 16
    },
    {
      "camera": "662b54711afb9c00172d8d4f",
      "loc": {
        "type": "Point",
        "coordinates": [106.68009996414185, 10.816087003883482]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 488,
      "numberOfCar": 290,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 14,
      "numberOfContainer": 16
    },
    {
      "camera": "662b54bb1afb9c00172d8dbb",
      "loc": {
        "type": "Point",
        "coordinates": [106.65262341499329, 10.850207862370524]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 446,
      "numberOfCar": 267,
      "numberOfVan": 19,
      "numberOfTruck": 23,
      "numberOfBus": 19,
      "numberOfFireTruck": 22,
      "numberOfContainer": 23
    },
    {
      "camera": "662b55111afb9c00172d8e2e",
      "loc": {
        "type": "Point",
        "coordinates": [106.64072513580322, 10.844644257104683]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 500,
      "numberOfCar": 279,
      "numberOfVan": 25,
      "numberOfTruck": 22,
      "numberOfBus": 22,
      "numberOfFireTruck": 20,
      "numberOfContainer": 15
    },
    {
      "camera": "662b558c1afb9c00172d8ed2",
      "loc": {
        "type": "Point",
        "coordinates": [106.66349172592163, 10.835128987816251]
      },
      "numberOfBicycle": 116,
      "numberOfMotorcycle": 526,
      "numberOfCar": 275,
      "numberOfVan": 14,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 16,
      "numberOfContainer": 14
    },
    {
      "camera": "662b56c51afb9c00172d9071",
      "loc": {
        "type": "Point",
        "coordinates": [106.67174220085144, 10.814648531492336]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 526,
      "numberOfCar": 271,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 25,
      "numberOfFireTruck": 15,
      "numberOfContainer": 20
    },
    {
      "camera": "662b571d1afb9c00172d9083",
      "loc": {
        "type": "Point",
        "coordinates": [106.66018187999725, 10.789292347979542]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 478,
      "numberOfCar": 271,
      "numberOfVan": 21,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 20,
      "numberOfContainer": 14
    },
    {
      "camera": "662b57471afb9c00172d9095",
      "loc": {
        "type": "Point",
        "coordinates": [106.64157271385193, 10.802397525609766]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 637,
      "numberOfCar": 294,
      "numberOfVan": 22,
      "numberOfTruck": 29,
      "numberOfBus": 17,
      "numberOfFireTruck": 23,
      "numberOfContainer": 21
    },
    {
      "camera": "662b57711afb9c00172d90a7",
      "loc": {
        "type": "Point",
        "coordinates": [106.64989829063416, 10.801712508370132]
      },
      "numberOfBicycle": 106,
      "numberOfMotorcycle": 491,
      "numberOfCar": 279,
      "numberOfVan": 23,
      "numberOfTruck": 16,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 21
    },
    {
      "camera": "662b57ec1afb9c00172d90e3",
      "loc": {
        "type": "Point",
        "coordinates": [106.64838552474976, 10.801828434474384]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 500,
      "numberOfCar": 282,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 20,
      "numberOfFireTruck": 28,
      "numberOfContainer": 14
    },
    {
      "camera": "662b58401afb9c00172d90f5",
      "loc": {
        "type": "Point",
        "coordinates": [106.66182339191437, 10.800648093866688]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 547,
      "numberOfCar": 253,
      "numberOfVan": 15,
      "numberOfTruck": 19,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 19
    },
    {
      "camera": "662b58791afb9c00172d9107",
      "loc": {
        "type": "Point",
        "coordinates": [106.66430175304413, 10.800521628526434]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 645,
      "numberOfCar": 259,
      "numberOfVan": 21,
      "numberOfTruck": 16,
      "numberOfBus": 21,
      "numberOfFireTruck": 13,
      "numberOfContainer": 23
    },
    {
      "camera": "662b58bd1afb9c00172d9119",
      "loc": {
        "type": "Point",
        "coordinates": [106.66899561882018, 10.79375565520437]
      },
      "numberOfBicycle": 107,
      "numberOfMotorcycle": 576,
      "numberOfCar": 283,
      "numberOfVan": 23,
      "numberOfTruck": 19,
      "numberOfBus": 17,
      "numberOfFireTruck": 15,
      "numberOfContainer": 16
    },
    {
      "camera": "662b59291afb9c00172d912b",
      "loc": {
        "type": "Point",
        "coordinates": [106.66256904602051, 10.798751108171771]
      },
      "numberOfBicycle": 98,
      "numberOfMotorcycle": 594,
      "numberOfCar": 274,
      "numberOfVan": 18,
      "numberOfTruck": 20,
      "numberOfBus": 13,
      "numberOfFireTruck": 20,
      "numberOfContainer": 12
    },
    {
      "camera": "662b5a401afb9c00172d91fc",
      "loc": {
        "type": "Point",
        "coordinates": [106.6437292098999, 10.798023927145682]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 559,
      "numberOfCar": 245,
      "numberOfVan": 16,
      "numberOfTruck": 20,
      "numberOfBus": 16,
      "numberOfFireTruck": 17,
      "numberOfContainer": 20
    },
    {
      "camera": "662b5a9c1afb9c00172d9240",
      "loc": {
        "type": "Point",
        "coordinates": [106.65014505386353, 10.794662009378262]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 509,
      "numberOfCar": 271,
      "numberOfVan": 19,
      "numberOfTruck": 19,
      "numberOfBus": 27,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "662b5adc1afb9c00172d925b",
      "loc": {
        "type": "Point",
        "coordinates": [106.62920236587524, 10.823579594640108]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 512,
      "numberOfCar": 294,
      "numberOfVan": 15,
      "numberOfTruck": 21,
      "numberOfBus": 11,
      "numberOfFireTruck": 18,
      "numberOfContainer": 11
    },
    {
      "camera": "662b5afe1afb9c00172d9284",
      "loc": {
        "type": "Point",
        "coordinates": [106.62981390953064, 10.822726017803706]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 575,
      "numberOfCar": 242,
      "numberOfVan": 13,
      "numberOfTruck": 21,
      "numberOfBus": 26,
      "numberOfFireTruck": 13,
      "numberOfContainer": 16
    },
    {
      "camera": "662b5b271afb9c00172d9296",
      "loc": {
        "type": "Point",
        "coordinates": [106.64021015167236, 10.799941995035589]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 527,
      "numberOfCar": 257,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 24,
      "numberOfContainer": 14
    },
    {
      "camera": "662b5b481afb9c00172d92a8",
      "loc": {
        "type": "Point",
        "coordinates": [106.64193749427795, 10.799046195622289]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 453,
      "numberOfCar": 276,
      "numberOfVan": 23,
      "numberOfTruck": 22,
      "numberOfBus": 24,
      "numberOfFireTruck": 15,
      "numberOfContainer": 18
    },
    {
      "camera": "662b5b8c1afb9c00172d92ca",
      "loc": {
        "type": "Point",
        "coordinates": [106.61720752716063, 10.788443943243315]
      },
      "numberOfBicycle": 95,
      "numberOfMotorcycle": 528,
      "numberOfCar": 281,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 13,
      "numberOfFireTruck": 15,
      "numberOfContainer": 18
    },
    {
      "camera": "662b5bc31afb9c00172d92e2",
      "loc": {
        "type": "Point",
        "coordinates": [106.61508321762085, 10.809342458297316]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 512,
      "numberOfCar": 282,
      "numberOfVan": 14,
      "numberOfTruck": 14,
      "numberOfBus": 19,
      "numberOfFireTruck": 17,
      "numberOfContainer": 25
    },
    {
      "camera": "662b5be91afb9c00172d939b",
      "loc": {
        "type": "Point",
        "coordinates": [106.61877393722534, 10.808246455319214]
      },
      "numberOfBicycle": 102,
      "numberOfMotorcycle": 535,
      "numberOfCar": 270,
      "numberOfVan": 17,
      "numberOfTruck": 16,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 23
    },
    {
      "camera": "662b5c141afb9c00172d93d7",
      "loc": {
        "type": "Point",
        "coordinates": [106.6137421131134, 10.79658009873194]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 564,
      "numberOfCar": 270,
      "numberOfVan": 25,
      "numberOfTruck": 16,
      "numberOfBus": 16,
      "numberOfFireTruck": 13,
      "numberOfContainer": 17
    },
    {
      "camera": "662b5c981afb9c00172d94c0",
      "loc": {
        "type": "Point",
        "coordinates": [106.61931037902832, 10.799436132165837]
      },
      "numberOfBicycle": 103,
      "numberOfMotorcycle": 568,
      "numberOfCar": 263,
      "numberOfVan": 12,
      "numberOfTruck": 17,
      "numberOfBus": 18,
      "numberOfFireTruck": 16,
      "numberOfContainer": 18
    },
    {
      "camera": "662b7ce71afb9c00172dc676",
      "loc": {
        "type": "Point",
        "coordinates": [106.69106483459473, 10.77264526140365]
      },
      "numberOfBicycle": 72,
      "numberOfMotorcycle": 535,
      "numberOfCar": 258,
      "numberOfVan": 15,
      "numberOfTruck": 15,
      "numberOfBus": 19,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "662b7d0c1afb9c00172dc6a6",
      "loc": {
        "type": "Point",
        "coordinates": [106.69013142585754, 10.765277880815121]
      },
      "numberOfBicycle": 66,
      "numberOfMotorcycle": 591,
      "numberOfCar": 271,
      "numberOfVan": 16,
      "numberOfTruck": 13,
      "numberOfBus": 21,
      "numberOfFireTruck": 19,
      "numberOfContainer": 23
    },
    {
      "camera": "662b7d8a1afb9c00172dc71f",
      "loc": {
        "type": "Point",
        "coordinates": [106.69591426849365, 10.771222390780672]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 539,
      "numberOfCar": 254,
      "numberOfVan": 21,
      "numberOfTruck": 20,
      "numberOfBus": 16,
      "numberOfFireTruck": 19,
      "numberOfContainer": 14
    },
    {
      "camera": "662b7f251afb9c00172dc8bc",
      "loc": {
        "type": "Point",
        "coordinates": [106.69799566268921, 10.776787357607532]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 595,
      "numberOfCar": 275,
      "numberOfVan": 18,
      "numberOfTruck": 19,
      "numberOfBus": 23,
      "numberOfFireTruck": 14,
      "numberOfContainer": 10
    },
    {
      "camera": "662b7f9f1afb9c00172dca50",
      "loc": {
        "type": "Point",
        "coordinates": [106.70147180557251, 10.790467463628659]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 497,
      "numberOfCar": 279,
      "numberOfVan": 23,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 13
    },
    {
      "camera": "662b80051afb9c00172dcaf6",
      "loc": {
        "type": "Point",
        "coordinates": [106.68658018112183, 10.76252692427571]
      },
      "numberOfBicycle": 77,
      "numberOfMotorcycle": 615,
      "numberOfCar": 263,
      "numberOfVan": 19,
      "numberOfTruck": 20,
      "numberOfBus": 14,
      "numberOfFireTruck": 23,
      "numberOfContainer": 23
    },
    {
      "camera": "662b80721afb9c00172dcb28",
      "loc": {
        "type": "Point",
        "coordinates": [106.69774889945984, 10.788633648857969]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 503,
      "numberOfCar": 255,
      "numberOfVan": 19,
      "numberOfTruck": 19,
      "numberOfBus": 20,
      "numberOfFireTruck": 20,
      "numberOfContainer": 25
    },
    {
      "camera": "662b80b91afb9c00172dcb5b",
      "loc": {
        "type": "Point",
        "coordinates": [106.6930228471756, 10.771570204220417]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 527,
      "numberOfCar": 240,
      "numberOfVan": 20,
      "numberOfTruck": 22,
      "numberOfBus": 11,
      "numberOfFireTruck": 16,
      "numberOfContainer": 20
    },
    {
      "camera": "662b80e81afb9c00172dcbec",
      "loc": {
        "type": "Point",
        "coordinates": [106.6900509595871, 10.773035232178387]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 525,
      "numberOfCar": 274,
      "numberOfVan": 24,
      "numberOfTruck": 19,
      "numberOfBus": 23,
      "numberOfFireTruck": 15,
      "numberOfContainer": 22
    },
    {
      "camera": "662b811d1afb9c00172dcc1d",
      "loc": {
        "type": "Point",
        "coordinates": [106.69286727905272, 10.76501438031831]
      },
      "numberOfBicycle": 76,
      "numberOfMotorcycle": 680,
      "numberOfCar": 283,
      "numberOfVan": 18,
      "numberOfTruck": 16,
      "numberOfBus": 14,
      "numberOfFireTruck": 14,
      "numberOfContainer": 16
    },
    {
      "camera": "662b81721afb9c00172dcc44",
      "loc": {
        "type": "Point",
        "coordinates": [106.69607520103455, 10.792743907781624]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 487,
      "numberOfCar": 271,
      "numberOfVan": 20,
      "numberOfTruck": 17,
      "numberOfBus": 17,
      "numberOfFireTruck": 23,
      "numberOfContainer": 28
    },
    {
      "camera": "662b81a31afb9c00172dcc65",
      "loc": {
        "type": "Point",
        "coordinates": [106.69390797615051, 10.780539436267752]
      },
      "numberOfBicycle": 56,
      "numberOfMotorcycle": 545,
      "numberOfCar": 283,
      "numberOfVan": 22,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 20,
      "numberOfContainer": 17
    },
    {
      "camera": "662b81eb1afb9c00172dcc85",
      "loc": {
        "type": "Point",
        "coordinates": [106.70393943786621, 10.788233159086664]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 513,
      "numberOfCar": 254,
      "numberOfVan": 18,
      "numberOfTruck": 15,
      "numberOfBus": 16,
      "numberOfFireTruck": 21,
      "numberOfContainer": 18
    },
    {
      "camera": "662b82761afb9c00172dcda3",
      "loc": {
        "type": "Point",
        "coordinates": [106.69414401054382, 10.792359232086644]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 531,
      "numberOfCar": 274,
      "numberOfVan": 23,
      "numberOfTruck": 9,
      "numberOfBus": 15,
      "numberOfFireTruck": 15,
      "numberOfContainer": 12
    },
    {
      "camera": "662b82a61afb9c00172dcdfd",
      "loc": {
        "type": "Point",
        "coordinates": [106.68938040733336, 10.791647844230368]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 582,
      "numberOfCar": 273,
      "numberOfVan": 16,
      "numberOfTruck": 15,
      "numberOfBus": 21,
      "numberOfFireTruck": 21,
      "numberOfContainer": 15
    },
    {
      "camera": "662b82da1afb9c00172dce94",
      "loc": {
        "type": "Point",
        "coordinates": [106.69012069702148, 10.789371391777161]
      },
      "numberOfBicycle": 80,
      "numberOfMotorcycle": 607,
      "numberOfCar": 278,
      "numberOfVan": 18,
      "numberOfTruck": 13,
      "numberOfBus": 22,
      "numberOfFireTruck": 23,
      "numberOfContainer": 13
    },
    {
      "camera": "662b830e1afb9c00172dcf50",
      "loc": {
        "type": "Point",
        "coordinates": [106.68801784515381, 10.774342157578799]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 612,
      "numberOfCar": 276,
      "numberOfVan": 21,
      "numberOfTruck": 22,
      "numberOfBus": 27,
      "numberOfFireTruck": 16,
      "numberOfContainer": 12
    },
    {
      "camera": "662b83381afb9c00172dcf88",
      "loc": {
        "type": "Point",
        "coordinates": [106.69595718383789, 10.784691963163917]
      },
      "numberOfBicycle": 87,
      "numberOfMotorcycle": 543,
      "numberOfCar": 265,
      "numberOfVan": 16,
      "numberOfTruck": 19,
      "numberOfBus": 19,
      "numberOfFireTruck": 15,
      "numberOfContainer": 18
    },
    {
      "camera": "662b836d1afb9c00172dcfa0",
      "loc": {
        "type": "Point",
        "coordinates": [106.7048192024231, 10.787337324772452]
      },
      "numberOfBicycle": 78,
      "numberOfMotorcycle": 485,
      "numberOfCar": 282,
      "numberOfVan": 12,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 16,
      "numberOfContainer": 14
    },
    {
      "camera": "662b83ff1afb9c00172dcffb",
      "loc": {
        "type": "Point",
        "coordinates": [106.69818878173828, 10.780507817822805]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 528,
      "numberOfCar": 272,
      "numberOfVan": 23,
      "numberOfTruck": 20,
      "numberOfBus": 17,
      "numberOfFireTruck": 14,
      "numberOfContainer": 14
    },
    {
      "camera": "662b843d1afb9c00172dd02d",
      "loc": {
        "type": "Point",
        "coordinates": [106.70182585716248, 10.777198402214083]
      },
      "numberOfBicycle": 101,
      "numberOfMotorcycle": 461,
      "numberOfCar": 262,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 21,
      "numberOfFireTruck": 23,
      "numberOfContainer": 14
    },
    {
      "camera": "662b84771afb9c00172dd076",
      "loc": {
        "type": "Point",
        "coordinates": [106.70001268386841, 10.779032286696667]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 569,
      "numberOfCar": 281,
      "numberOfVan": 13,
      "numberOfTruck": 17,
      "numberOfBus": 15,
      "numberOfFireTruck": 18,
      "numberOfContainer": 21
    },
    {
      "camera": "662b84c11afb9c00172dd0b5",
      "loc": {
        "type": "Point",
        "coordinates": [106.69693350791931, 10.781783092467101]
      },
      "numberOfBicycle": 73,
      "numberOfMotorcycle": 585,
      "numberOfCar": 240,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 12,
      "numberOfFireTruck": 23,
      "numberOfContainer": 20
    },
    {
      "camera": "662b85031afb9c00172dd0dc",
      "loc": {
        "type": "Point",
        "coordinates": [106.69893980026245, 10.772307988974998]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 587,
      "numberOfCar": 279,
      "numberOfVan": 14,
      "numberOfTruck": 16,
      "numberOfBus": 21,
      "numberOfFireTruck": 10,
      "numberOfContainer": 14
    },
    {
      "camera": "662b85481afb9c00172dd0f1",
      "loc": {
        "type": "Point",
        "coordinates": [106.7030918598175, 10.76871917614739]
      },
      "numberOfBicycle": 89,
      "numberOfMotorcycle": 573,
      "numberOfCar": 287,
      "numberOfVan": 14,
      "numberOfTruck": 22,
      "numberOfBus": 8,
      "numberOfFireTruck": 18,
      "numberOfContainer": 11
    },
    {
      "camera": "662b857b1afb9c00172dd106",
      "loc": {
        "type": "Point",
        "coordinates": [106.69973909854889, 10.792085216222851]
      },
      "numberOfBicycle": 108,
      "numberOfMotorcycle": 474,
      "numberOfCar": 274,
      "numberOfVan": 16,
      "numberOfTruck": 22,
      "numberOfBus": 23,
      "numberOfFireTruck": 20,
      "numberOfContainer": 19
    },
    {
      "camera": "662b85bf1afb9c00172dd149",
      "loc": {
        "type": "Point",
        "coordinates": [106.7011284828186, 10.770969435299474]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 527,
      "numberOfCar": 275,
      "numberOfVan": 19,
      "numberOfTruck": 19,
      "numberOfBus": 22,
      "numberOfFireTruck": 12,
      "numberOfContainer": 7
    },
    {
      "camera": "662b85f51afb9c00172dd1c2",
      "loc": {
        "type": "Point",
        "coordinates": [106.6941976547241, 10.769841672860895]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 511,
      "numberOfCar": 246,
      "numberOfVan": 21,
      "numberOfTruck": 18,
      "numberOfBus": 13,
      "numberOfFireTruck": 23,
      "numberOfContainer": 15
    },
    {
      "camera": "662b862a1afb9c00172dd1ff",
      "loc": {
        "type": "Point",
        "coordinates": [106.6995245218277, 10.771174961644146]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 535,
      "numberOfCar": 257,
      "numberOfVan": 20,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 21,
      "numberOfContainer": 20
    },
    {
      "camera": "662b86551afb9c00172dd227",
      "loc": {
        "type": "Point",
        "coordinates": [106.69746994972229, 10.77020529765982]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 493,
      "numberOfCar": 264,
      "numberOfVan": 14,
      "numberOfTruck": 25,
      "numberOfBus": 10,
      "numberOfFireTruck": 16,
      "numberOfContainer": 13
    },
    {
      "camera": "662b867b1afb9c00172dd250",
      "loc": {
        "type": "Point",
        "coordinates": [106.69667601585388, 10.76929886980811]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 483,
      "numberOfCar": 276,
      "numberOfVan": 9,
      "numberOfTruck": 20,
      "numberOfBus": 17,
      "numberOfFireTruck": 19,
      "numberOfContainer": 15
    },
    {
      "camera": "662b86c41afb9c00172dd31c",
      "loc": {
        "type": "Point",
        "coordinates": [106.69105410575865, 10.791890243244568]
      },
      "numberOfBicycle": 100,
      "numberOfMotorcycle": 470,
      "numberOfCar": 286,
      "numberOfVan": 20,
      "numberOfTruck": 15,
      "numberOfBus": 19,
      "numberOfFireTruck": 20,
      "numberOfContainer": 20
    },
    {
      "camera": "662b872d1afb9c00172dd36a",
      "loc": {
        "type": "Point",
        "coordinates": [106.67788982391357, 10.787811590330069]
      },
      "numberOfBicycle": 63,
      "numberOfMotorcycle": 534,
      "numberOfCar": 260,
      "numberOfVan": 22,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 15,
      "numberOfContainer": 17
    },
    {
      "camera": "662b87551afb9c00172dd43a",
      "loc": {
        "type": "Point",
        "coordinates": [106.68310403823853, 10.784897480138408]
      },
      "numberOfBicycle": 75,
      "numberOfMotorcycle": 633,
      "numberOfCar": 293,
      "numberOfVan": 10,
      "numberOfTruck": 19,
      "numberOfBus": 13,
      "numberOfFireTruck": 21,
      "numberOfContainer": 16
    },
    {
      "camera": "665861d864f11e00173c73a9",
      "loc": {
        "type": "Point",
        "coordinates": [106.72337472438812, 10.755470237063209]
      },
      "numberOfBicycle": 83,
      "numberOfMotorcycle": 470,
      "numberOfCar": 282,
      "numberOfVan": 17,
      "numberOfTruck": 18,
      "numberOfBus": 15,
      "numberOfFireTruck": 14,
      "numberOfContainer": 18
    },
    {
      "camera": "66b1c158779f740018673eb4",
      "loc": {
        "type": "Point",
        "coordinates": [106.67644143104553, 10.762252881252905]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 562,
      "numberOfCar": 266,
      "numberOfVan": 21,
      "numberOfTruck": 13,
      "numberOfBus": 16,
      "numberOfFireTruck": 22,
      "numberOfContainer": 18
    },
    {
      "camera": "66b1c190779f740018673ed4",
      "loc": {
        "type": "Point",
        "coordinates": [106.67188167572021, 10.75507497337378]
      },
      "numberOfBicycle": 111,
      "numberOfMotorcycle": 546,
      "numberOfCar": 258,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 21
    },
    {
      "camera": "66b1c1bf779f740018673ef2",
      "loc": {
        "type": "Point",
        "coordinates": [106.67448878288269, 10.757741675690259]
      },
      "numberOfBicycle": 81,
      "numberOfMotorcycle": 516,
      "numberOfCar": 302,
      "numberOfVan": 24,
      "numberOfTruck": 20,
      "numberOfBus": 16,
      "numberOfFireTruck": 16,
      "numberOfContainer": 16
    },
    {
      "camera": "66b1c1f2779f740018673f0d",
      "loc": {
        "type": "Point",
        "coordinates": [106.68317914009093, 10.761104005868816]
      },
      "numberOfBicycle": 79,
      "numberOfMotorcycle": 514,
      "numberOfCar": 275,
      "numberOfVan": 21,
      "numberOfTruck": 27,
      "numberOfBus": 15,
      "numberOfFireTruck": 17,
      "numberOfContainer": 19
    },
    {
      "camera": "66b1c22f779f740018673f6e",
      "loc": {
        "type": "Point",
        "coordinates": [106.63392305374146, 10.753630938959278]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 492,
      "numberOfCar": 267,
      "numberOfVan": 15,
      "numberOfTruck": 11,
      "numberOfBus": 17,
      "numberOfFireTruck": 24,
      "numberOfContainer": 21
    },
    {
      "camera": "66b1c311779f740018674083",
      "loc": {
        "type": "Point",
        "coordinates": [106.63491010665894, 10.754337146434397]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 588,
      "numberOfCar": 256,
      "numberOfVan": 17,
      "numberOfTruck": 11,
      "numberOfBus": 21,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "66b1c34d779f74001867409e",
      "loc": {
        "type": "Point",
        "coordinates": [106.66682839393616, 10.768197450898993]
      },
      "numberOfBicycle": 86,
      "numberOfMotorcycle": 466,
      "numberOfCar": 263,
      "numberOfVan": 20,
      "numberOfTruck": 15,
      "numberOfBus": 11,
      "numberOfFireTruck": 19,
      "numberOfContainer": 20
    },
    {
      "camera": "66b1c370779f7400186740b3",
      "loc": {
        "type": "Point",
        "coordinates": [106.66351318359375, 10.77638685206639]
      },
      "numberOfBicycle": 99,
      "numberOfMotorcycle": 621,
      "numberOfCar": 281,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 20,
      "numberOfFireTruck": 17,
      "numberOfContainer": 17
    },
    {
      "camera": "66b1c398779f7400186740e3",
      "loc": {
        "type": "Point",
        "coordinates": [106.6532564163208, 10.760197550640891]
      },
      "numberOfBicycle": 115,
      "numberOfMotorcycle": 556,
      "numberOfCar": 257,
      "numberOfVan": 15,
      "numberOfTruck": 18,
      "numberOfBus": 18,
      "numberOfFireTruck": 12,
      "numberOfContainer": 17
    },
    {
      "camera": "66b1c3c2779f740018674125",
      "loc": {
        "type": "Point",
        "coordinates": [106.62409543991089, 10.745941602839128]
      },
      "numberOfBicycle": 92,
      "numberOfMotorcycle": 671,
      "numberOfCar": 255,
      "numberOfVan": 21,
      "numberOfTruck": 19,
      "numberOfBus": 18,
      "numberOfFireTruck": 14,
      "numberOfContainer": 19
    },
    {
      "camera": "66b1c3fa779f740018674146",
      "loc": {
        "type": "Point",
        "coordinates": [106.72370731830596, 10.79913050626919]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 533,
      "numberOfCar": 271,
      "numberOfVan": 16,
      "numberOfTruck": 10,
      "numberOfBus": 19,
      "numberOfFireTruck": 23,
      "numberOfContainer": 24
    },
    {
      "camera": "66b1c426779f74001867415e",
      "loc": {
        "type": "Point",
        "coordinates": [106.71516180038452, 10.801080183377422]
      },
      "numberOfBicycle": 85,
      "numberOfMotorcycle": 556,
      "numberOfCar": 282,
      "numberOfVan": 19,
      "numberOfTruck": 18,
      "numberOfBus": 22,
      "numberOfFireTruck": 18,
      "numberOfContainer": 15
    },
    {
      "camera": "66b1c4a2779f74001867418c",
      "loc": {
        "type": "Point",
        "coordinates": [106.66455388069153, 10.797117583112758]
      },
      "numberOfBicycle": 90,
      "numberOfMotorcycle": 603,
      "numberOfCar": 243,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 15,
      "numberOfContainer": 19
    },
    {
      "camera": "66b1c4e7779f7400186741e4",
      "loc": {
        "type": "Point",
        "coordinates": [106.66545510292053, 10.80040043252538]
      },
      "numberOfBicycle": 93,
      "numberOfMotorcycle": 498,
      "numberOfCar": 278,
      "numberOfVan": 18,
      "numberOfTruck": 25,
      "numberOfBus": 10,
      "numberOfFireTruck": 20,
      "numberOfContainer": 15
    },
    {
      "camera": "66f1266f538c780017c93579",
      "loc": {
        "type": "Point",
        "coordinates": [106.67405962944031, 10.760766720520992]
      },
      "numberOfBicycle": 105,
      "numberOfMotorcycle": 533,
      "numberOfCar": 304,
      "numberOfVan": 19,
      "numberOfTruck": 14,
      "numberOfBus": 14,
      "numberOfFireTruck": 19,
      "numberOfContainer": 17
    },
    {
      "camera": "66f126e8538c780017c9362f",
      "loc": {
        "type": "Point",
        "coordinates": [106.66274070739746, 10.758700839532171]
      },
      "numberOfBicycle": 82,
      "numberOfMotorcycle": 537,
      "numberOfCar": 260,
      "numberOfVan": 15,
      "numberOfTruck": 19,
      "numberOfBus": 17,
      "numberOfFireTruck": 18,
      "numberOfContainer": 13
    },
    {
      "camera": "6792ef4f8c5ed4001b27f2c0",
      "loc": {
        "type": "Point",
        "coordinates": [106.5558385848999, 10.656221760029576]
      },
      "numberOfBicycle": 104,
      "numberOfMotorcycle": 489,
      "numberOfCar": 268,
      "numberOfVan": 14,
      "numberOfTruck": 21,
      "numberOfBus": 17,
      "numberOfFireTruck": 17,
      "numberOfContainer": 16
    },
    {
      "camera": "6792efe48c5ed4001b27f336",
      "loc": {
        "type": "Point",
        "coordinates": [106.80803060531616, 10.87353594282426]
      },
      "numberOfBicycle": 96,
      "numberOfMotorcycle": 535,
      "numberOfCar": 261,
      "numberOfVan": 17,
      "numberOfTruck": 20,
      "numberOfBus": 17,
      "numberOfFireTruck": 21,
      "numberOfContainer": 15
    },
    {
      "camera": "6792f03d8c5ed4001b27f378",
      "loc": {
        "type": "Point",
        "coordinates": [106.65703296661376, 10.64247232079253]
      },
      "numberOfBicycle": 70,
      "numberOfMotorcycle": 555,
      "numberOfCar": 266,
      "numberOfVan": 19,
      "numberOfTruck": 11,
      "numberOfBus": 19,
      "numberOfFireTruck": 14,
      "numberOfContainer": 14
    },
    {
      "camera": "6792f16e8c5ed4001b27f482",
      "loc": {
        "type": "Point",
        "coordinates": [106.85062408447266, 10.785882905731855]
      },
      "numberOfBicycle": 63,
      "numberOfMotorcycle": 532,
      "numberOfCar": 262,
      "numberOfVan": 26,
      "numberOfTruck": 20,
      "numberOfBus": 22,
      "numberOfFireTruck": 9,
      "numberOfContainer": 18
    },
    {
      "camera": "6792f1b78c5ed4001b27f4a9",
      "loc": {
        "type": "Point",
        "coordinates": [106.71621322631835, 10.868288864109225]
      },
      "numberOfBicycle": 88,
      "numberOfMotorcycle": 497,
      "numberOfCar": 258,
      "numberOfVan": 20,
      "numberOfTruck": 18,
      "numberOfBus": 22,
      "numberOfFireTruck": 22,
      "numberOfContainer": 26
    },
    {
      "camera": "6792f2248c5ed4001b27f4dc",
      "loc": {
        "type": "Point",
        "coordinates": [106.7515754699707, 10.875622105104815]
      },
      "numberOfBicycle": 97,
      "numberOfMotorcycle": 453,
      "numberOfCar": 258,
      "numberOfVan": 18,
      "numberOfTruck": 23,
      "numberOfBus": 21,
      "numberOfFireTruck": 23,
      "numberOfContainer": 18
    },
    {
      "camera": "6792f3cf8c5ed4001b27f61e",
      "loc": {
        "type": "Point",
        "coordinates": [106.64364337921143, 10.977130981136062]
      },
      "numberOfBicycle": 91,
      "numberOfMotorcycle": 597,
      "numberOfCar": 289,
      "numberOfVan": 19,
      "numberOfTruck": 17,
      "numberOfBus": 23,
      "numberOfFireTruck": 16,
      "numberOfContainer": 24
    },
    {
      "camera": "6792f9c88c5ed4001b27fb3d",
      "loc": {
        "type": "Point",
        "coordinates": [106.77603721618651, 10.888096629451274]
      },
      "numberOfBicycle": 109,
      "numberOfMotorcycle": 574,
      "numberOfCar": 304,
      "numberOfVan": 16,
      "numberOfTruck": 14,
      "numberOfBus": 20,
      "numberOfFireTruck": 21,
      "numberOfContainer": 17
    }
  ]
});
final List<Timestamp> sampleTimestamp = [
  {"date": "2025-05-31", "time": "15:00:00"},
  {"date": "2025-05-28", "time": "02:00:00"},
  {"date": "2025-05-29", "time": "16:00:00"},
  {"date": "2025-06-01", "time": "08:00:00"},
  {"date": "2025-05-29", "time": "18:00:00"},
  {"date": "2025-06-01", "time": "17:00:00"},
  {"date": "2025-06-01", "time": "06:00:00"},
  {"date": "2025-05-29", "time": "10:00:00"},
  {"date": "2025-05-30", "time": "10:00:00"},
  {"date": "2025-05-30", "time": "01:00:00"},
  {"date": "2025-05-29", "time": "20:00:00"},
  {"date": "2025-05-27", "time": "20:00:00"},
  {"date": "2025-05-31", "time": "12:00:00"},
  {"date": "2025-06-02", "time": "18:00:00"},
  {"date": "2025-05-30", "time": "18:00:00"},
  {"date": "2025-06-02", "time": "15:00:00"},
  {"date": "2025-05-29", "time": "06:00:00"},
  {"date": "2025-06-02", "time": "12:00:00"},
  {"date": "2025-06-02", "time": "10:00:00"},
  {"date": "2025-05-29", "time": "07:00:00"},
  {"date": "2025-05-27", "time": "08:00:00"},
  {"date": "2025-06-01", "time": "02:00:00"},
  {"date": "2025-05-27", "time": "00:00:00"},
  {"date": "2025-06-01", "time": "10:00:00"},
  {"date": "2025-06-02", "time": "13:00:00"},
  {"date": "2025-05-28", "time": "12:00:00"},
  {"date": "2025-06-01", "time": "01:00:00"},
  {"date": "2025-05-31", "time": "03:00:00"},
  {"date": "2025-05-29", "time": "08:00:00"},
  {"date": "2025-05-27", "time": "15:00:00"},
  {"date": "2025-05-29", "time": "01:00:00"},
  {"date": "2025-06-02", "time": "04:00:00"},
  {"date": "2025-06-01", "time": "22:00:00"},
  {"date": "2025-05-28", "time": "16:00:00"},
  {"date": "2025-05-30", "time": "17:00:00"},
  {"date": "2025-05-27", "time": "22:00:00"},
  {"date": "2025-05-28", "time": "13:00:00"},
  {"date": "2025-05-29", "time": "23:00:00"},
  {"date": "2025-05-28", "time": "10:00:00"},
  {"date": "2025-06-01", "time": "03:00:00"},
  {"date": "2025-05-28", "time": "03:00:00"},
  {"date": "2025-05-31", "time": "07:00:00"},
  {"date": "2025-05-29", "time": "13:00:00"},
  {"date": "2025-05-29", "time": "21:00:00"},
  {"date": "2025-05-29", "time": "15:00:00"},
  {"date": "2025-05-31", "time": "23:00:00"},
  {"date": "2025-05-30", "time": "05:00:00"},
  {"date": "2025-06-01", "time": "14:00:00"},
  {"date": "2025-06-01", "time": "07:00:00"},
  {"date": "2025-05-30", "time": "13:00:00"},
  {"date": "2025-05-28", "time": "22:00:00"},
  {"date": "2025-05-28", "time": "15:00:00"},
  {"date": "2025-05-27", "time": "09:00:00"},
  {"date": "2025-05-30", "time": "02:00:00"},
  {"date": "2025-06-01", "time": "21:00:00"},
  {"date": "2025-05-30", "time": "16:00:00"},
  {"date": "2025-05-27", "time": "19:00:00"},
  {"date": "2025-05-30", "time": "06:00:00"},
  {"date": "2025-06-02", "time": "11:00:00"},
  {"date": "2025-05-31", "time": "10:00:00"},
  {"date": "2025-05-31", "time": "01:00:00"},
  {"date": "2025-05-31", "time": "21:00:00"},
  {"date": "2025-05-31", "time": "17:00:00"},
  {"date": "2025-05-31", "time": "16:00:00"},
  {"date": "2025-05-31", "time": "11:00:00"},
  {"date": "2025-05-30", "time": "22:00:00"},
  {"date": "2025-05-27", "time": "10:00:00"},
  {"date": "2025-06-02", "time": "08:00:00"},
  {"date": "2025-05-30", "time": "19:00:00"},
  {"date": "2025-05-28", "time": "05:00:00"},
  {"date": "2025-05-29", "time": "05:00:00"},
  {"date": "2025-05-27", "time": "14:00:00"},
  {"date": "2025-05-30", "time": "15:00:00"},
  {"date": "2025-05-27", "time": "21:00:00"},
  {"date": "2025-05-27", "time": "18:00:00"},
  {"date": "2025-06-02", "time": "05:00:00"},
  {"date": "2025-05-31", "time": "04:00:00"},
  {"date": "2025-05-30", "time": "21:00:00"},
  {"date": "2025-05-29", "time": "17:00:00"},
  {"date": "2025-06-01", "time": "04:00:00"},
  {"date": "2025-05-31", "time": "18:00:00"},
  {"date": "2025-05-28", "time": "04:00:00"},
  {"date": "2025-05-30", "time": "11:00:00"},
  {"date": "2025-05-27", "time": "05:00:00"},
  {"date": "2025-05-27", "time": "03:00:00"},
  {"date": "2025-06-02", "time": "17:00:00"},
  {"date": "2025-05-31", "time": "09:00:00"},
  {"date": "2025-06-01", "time": "00:00:00"},
  {"date": "2025-05-28", "time": "21:00:00"},
  {"date": "2025-06-01", "time": "05:00:00"},
  {"date": "2025-05-27", "time": "11:00:00"},
  {"date": "2025-05-30", "time": "07:00:00"},
  {"date": "2025-06-01", "time": "23:00:00"},
  {"date": "2025-06-02", "time": "01:00:00"},
  {"date": "2025-05-28", "time": "11:00:00"},
  {"date": "2025-05-27", "time": "02:00:00"},
  {"date": "2025-06-02", "time": "00:00:00"},
  {"date": "2025-05-31", "time": "08:00:00"},
  {"date": "2025-05-28", "time": "20:00:00"},
  {"date": "2025-05-30", "time": "03:00:00"},
  {"date": "2025-05-29", "time": "04:00:00"},
  {"date": "2025-05-30", "time": "20:00:00"},
  {"date": "2025-05-29", "time": "11:00:00"},
  {"date": "2025-05-30", "time": "23:00:00"},
  {"date": "2025-05-30", "time": "08:00:00"},
  {"date": "2025-05-31", "time": "20:00:00"},
  {"date": "2025-06-02", "time": "07:00:00"},
  {"date": "2025-05-29", "time": "14:00:00"},
  {"date": "2025-05-28", "time": "09:00:00"},
  {"date": "2025-06-01", "time": "20:00:00"},
  {"date": "2025-05-30", "time": "14:00:00"},
  {"date": "2025-05-28", "time": "06:00:00"},
  {"date": "2025-06-01", "time": "16:00:00"},
  {"date": "2025-05-29", "time": "02:00:00"},
  {"date": "2025-05-27", "time": "17:00:00"},
  {"date": "2025-06-02", "time": "02:00:00"},
  {"date": "2025-06-01", "time": "09:00:00"},
  {"date": "2025-05-30", "time": "00:00:00"},
  {"date": "2025-05-28", "time": "14:00:00"},
  {"date": "2025-05-31", "time": "14:00:00"},
  {"date": "2025-05-27", "time": "16:00:00"},
  {"date": "2025-05-31", "time": "22:00:00"},
  {"date": "2025-06-01", "time": "15:00:00"},
  {"date": "2025-05-29", "time": "22:00:00"},
  {"date": "2025-05-29", "time": "03:00:00"},
  {"date": "2025-06-01", "time": "18:00:00"},
  {"date": "2025-05-31", "time": "13:00:00"},
  {"date": "2025-05-28", "time": "00:00:00"},
  {"date": "2025-05-31", "time": "19:00:00"},
  {"date": "2025-05-27", "time": "07:00:00"},
  {"date": "2025-05-31", "time": "00:00:00"},
  {"date": "2025-05-31", "time": "06:00:00"},
  {"date": "2025-05-28", "time": "08:00:00"},
  {"date": "2025-05-27", "time": "12:00:00"},
  {"date": "2025-06-02", "time": "14:00:00"},
  {"date": "2025-05-27", "time": "06:00:00"},
  {"date": "2025-05-31", "time": "05:00:00"},
  {"date": "2025-05-30", "time": "09:00:00"},
  {"date": "2025-05-31", "time": "02:00:00"},
  {"date": "2025-05-28", "time": "17:00:00"},
  {"date": "2025-05-28", "time": "01:00:00"},
  {"date": "2025-05-29", "time": "19:00:00"},
  {"date": "2025-05-30", "time": "12:00:00"},
  {"date": "2025-05-27", "time": "01:00:00"},
  {"date": "2025-05-27", "time": "04:00:00"},
  {"date": "2025-06-02", "time": "16:00:00"},
  {"date": "2025-06-01", "time": "11:00:00"},
  {"date": "2025-06-01", "time": "19:00:00"},
  {"date": "2025-05-27", "time": "23:00:00"},
  {"date": "2025-05-29", "time": "12:00:00"},
  {"date": "2025-06-02", "time": "03:00:00"},
  {"date": "2025-05-28", "time": "07:00:00"},
  {"date": "2025-05-29", "time": "00:00:00"},
  {"date": "2025-05-28", "time": "18:00:00"},
  {"date": "2025-06-01", "time": "13:00:00"},
  {"date": "2025-05-28", "time": "23:00:00"},
  {"date": "2025-05-28", "time": "19:00:00"},
  {"date": "2025-06-01", "time": "12:00:00"},
  {"date": "2025-06-02", "time": "09:00:00"},
  {"date": "2025-06-02", "time": "06:00:00"},
  {"date": "2025-05-27", "time": "13:00:00"},
  {"date": "2025-05-30", "time": "04:00:00"},
  {"date": "2025-05-29", "time": "09:00:00"}
].map((e) => Timestamp.fromJson(e)).toList();
final List<Date> sampleDates = [
  {"date": "2025-05-30"},
  {"date": "2025-05-27"},
  {"date": "2025-06-02"},
  {"date": "2025-06-01"},
  {"date": "2025-05-31"},
  {"date": "2025-05-29"},
  {"date": "2025-05-28"}
].map((e) => Date.fromJson(e)).toList();
