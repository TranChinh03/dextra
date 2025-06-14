import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/heatmap_result.dart';
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

final List<Timestamp> sampleTimestamp = [
  {"date": "2025-06-05", "time": "00:00:00"},
  {"date": "2025-06-05", "time": "01:00:00"},
  {"date": "2025-06-05", "time": "02:00:00"},
  {"date": "2025-06-05", "time": "03:00:00"},
  {"date": "2025-06-05", "time": "04:00:00"},
  {"date": "2025-06-05", "time": "05:00:00"},
  {"date": "2025-06-05", "time": "06:00:00"},
  {"date": "2025-06-05", "time": "07:00:00"},
  {"date": "2025-06-05", "time": "08:00:00"},
  {"date": "2025-06-05", "time": "09:00:00"},
  {"date": "2025-06-05", "time": "10:00:00"},
  {"date": "2025-06-05", "time": "11:00:00"},
  {"date": "2025-06-05", "time": "12:00:00"},
  {"date": "2025-06-05", "time": "13:00:00"},
  {"date": "2025-06-05", "time": "14:00:00"},
  {"date": "2025-06-05", "time": "15:00:00"},
  {"date": "2025-06-05", "time": "16:00:00"},
  {"date": "2025-06-05", "time": "17:00:00"},
  {"date": "2025-06-05", "time": "18:00:00"},
  {"date": "2025-06-05", "time": "19:00:00"},
  {"date": "2025-06-05", "time": "20:00:00"},
  {"date": "2025-06-05", "time": "21:00:00"},
  {"date": "2025-06-05", "time": "22:00:00"},
  {"date": "2025-06-05", "time": "23:00:00"},
  {"date": "2025-06-06", "time": "00:00:00"},
  {"date": "2025-06-06", "time": "01:00:00"},
  {"date": "2025-06-06", "time": "02:00:00"},
  {"date": "2025-06-06", "time": "03:00:00"},
  {"date": "2025-06-06", "time": "04:00:00"},
  {"date": "2025-06-06", "time": "05:00:00"},
  {"date": "2025-06-06", "time": "06:00:00"},
  {"date": "2025-06-06", "time": "07:00:00"},
  {"date": "2025-06-06", "time": "08:00:00"},
  {"date": "2025-06-06", "time": "09:00:00"},
  {"date": "2025-06-06", "time": "10:00:00"},
  {"date": "2025-06-06", "time": "11:00:00"},
  {"date": "2025-06-06", "time": "12:00:00"},
  {"date": "2025-06-06", "time": "13:00:00"},
  {"date": "2025-06-06", "time": "14:00:00"},
  {"date": "2025-06-06", "time": "15:00:00"},
  {"date": "2025-06-06", "time": "16:00:00"},
  {"date": "2025-06-06", "time": "17:00:00"},
  {"date": "2025-06-06", "time": "18:00:00"},
  {"date": "2025-06-06", "time": "19:00:00"},
  {"date": "2025-06-06", "time": "20:00:00"},
  {"date": "2025-06-06", "time": "21:00:00"},
  {"date": "2025-06-06", "time": "22:00:00"},
  {"date": "2025-06-06", "time": "23:00:00"},
  {"date": "2025-06-07", "time": "00:00:00"},
  {"date": "2025-06-07", "time": "01:00:00"},
  {"date": "2025-06-07", "time": "02:00:00"},
  {"date": "2025-06-07", "time": "03:00:00"},
  {"date": "2025-06-07", "time": "04:00:00"},
  {"date": "2025-06-07", "time": "05:00:00"},
  {"date": "2025-06-07", "time": "06:00:00"},
  {"date": "2025-06-07", "time": "07:00:00"},
  {"date": "2025-06-07", "time": "08:00:00"},
  {"date": "2025-06-07", "time": "09:00:00"},
  {"date": "2025-06-07", "time": "10:00:00"},
  {"date": "2025-06-07", "time": "11:00:00"},
  {"date": "2025-06-07", "time": "12:00:00"},
  {"date": "2025-06-07", "time": "13:00:00"},
  {"date": "2025-06-07", "time": "14:00:00"},
  {"date": "2025-06-07", "time": "15:00:00"},
  {"date": "2025-06-07", "time": "16:00:00"},
  {"date": "2025-06-07", "time": "17:00:00"},
  {"date": "2025-06-07", "time": "18:00:00"},
  {"date": "2025-06-07", "time": "19:00:00"},
  {"date": "2025-06-07", "time": "20:00:00"},
  {"date": "2025-06-07", "time": "21:00:00"},
  {"date": "2025-06-07", "time": "22:00:00"},
  {"date": "2025-06-07", "time": "23:00:00"},
  {"date": "2025-06-08", "time": "00:00:00"},
  {"date": "2025-06-08", "time": "01:00:00"},
  {"date": "2025-06-08", "time": "02:00:00"},
  {"date": "2025-06-08", "time": "03:00:00"},
  {"date": "2025-06-08", "time": "04:00:00"},
  {"date": "2025-06-08", "time": "05:00:00"},
  {"date": "2025-06-08", "time": "06:00:00"},
  {"date": "2025-06-08", "time": "07:00:00"},
  {"date": "2025-06-08", "time": "08:00:00"},
  {"date": "2025-06-08", "time": "09:00:00"},
  {"date": "2025-06-08", "time": "10:00:00"},
  {"date": "2025-06-08", "time": "11:00:00"},
  {"date": "2025-06-08", "time": "12:00:00"},
  {"date": "2025-06-08", "time": "13:00:00"},
  {"date": "2025-06-08", "time": "14:00:00"},
  {"date": "2025-06-08", "time": "15:00:00"},
  {"date": "2025-06-08", "time": "16:00:00"},
  {"date": "2025-06-08", "time": "17:00:00"},
  {"date": "2025-06-08", "time": "18:00:00"},
  {"date": "2025-06-08", "time": "19:00:00"},
  {"date": "2025-06-08", "time": "20:00:00"},
  {"date": "2025-06-08", "time": "21:00:00"},
  {"date": "2025-06-08", "time": "22:00:00"},
  {"date": "2025-06-08", "time": "23:00:00"},
  {"date": "2025-06-09", "time": "00:00:00"},
  {"date": "2025-06-09", "time": "01:00:00"},
  {"date": "2025-06-09", "time": "02:00:00"},
  {"date": "2025-06-09", "time": "03:00:00"},
  {"date": "2025-06-09", "time": "04:00:00"},
  {"date": "2025-06-09", "time": "05:00:00"},
  {"date": "2025-06-09", "time": "06:00:00"},
  {"date": "2025-06-09", "time": "07:00:00"},
  {"date": "2025-06-09", "time": "08:00:00"},
  {"date": "2025-06-09", "time": "09:00:00"},
  {"date": "2025-06-09", "time": "10:00:00"},
  {"date": "2025-06-09", "time": "11:00:00"},
  {"date": "2025-06-09", "time": "12:00:00"},
  {"date": "2025-06-09", "time": "13:00:00"},
  {"date": "2025-06-09", "time": "14:00:00"},
  {"date": "2025-06-09", "time": "15:00:00"},
  {"date": "2025-06-09", "time": "16:00:00"},
  {"date": "2025-06-09", "time": "17:00:00"},
  {"date": "2025-06-09", "time": "18:00:00"},
  {"date": "2025-06-09", "time": "19:00:00"},
  {"date": "2025-06-09", "time": "20:00:00"},
  {"date": "2025-06-09", "time": "21:00:00"},
  {"date": "2025-06-09", "time": "22:00:00"},
  {"date": "2025-06-09", "time": "23:00:00"},
  {"date": "2025-06-10", "time": "00:00:00"},
  {"date": "2025-06-10", "time": "01:00:00"},
  {"date": "2025-06-10", "time": "02:00:00"},
  {"date": "2025-06-10", "time": "03:00:00"},
  {"date": "2025-06-10", "time": "04:00:00"},
  {"date": "2025-06-10", "time": "05:00:00"},
  {"date": "2025-06-10", "time": "06:00:00"},
  {"date": "2025-06-10", "time": "07:00:00"},
  {"date": "2025-06-10", "time": "08:00:00"},
  {"date": "2025-06-10", "time": "09:00:00"},
  {"date": "2025-06-10", "time": "10:00:00"},
  {"date": "2025-06-10", "time": "11:00:00"},
  {"date": "2025-06-10", "time": "12:00:00"},
  {"date": "2025-06-10", "time": "13:00:00"},
  {"date": "2025-06-10", "time": "14:00:00"},
  {"date": "2025-06-10", "time": "15:00:00"},
  {"date": "2025-06-10", "time": "16:00:00"},
  {"date": "2025-06-10", "time": "17:00:00"},
  {"date": "2025-06-10", "time": "18:00:00"},
  {"date": "2025-06-10", "time": "19:00:00"},
  {"date": "2025-06-10", "time": "20:00:00"},
  {"date": "2025-06-10", "time": "21:00:00"},
  {"date": "2025-06-10", "time": "22:00:00"},
  {"date": "2025-06-10", "time": "23:00:00"},
  {"date": "2025-06-11", "time": "00:00:00"},
  {"date": "2025-06-11", "time": "01:00:00"},
  {"date": "2025-06-11", "time": "02:00:00"},
  {"date": "2025-06-11", "time": "03:00:00"},
  {"date": "2025-06-11", "time": "04:00:00"},
  {"date": "2025-06-11", "time": "05:00:00"},
  {"date": "2025-06-11", "time": "06:00:00"},
  {"date": "2025-06-11", "time": "07:00:00"},
  {"date": "2025-06-11", "time": "08:00:00"},
  {"date": "2025-06-11", "time": "09:00:00"},
  {"date": "2025-06-11", "time": "10:00:00"},
  {"date": "2025-06-11", "time": "11:00:00"},
  {"date": "2025-06-11", "time": "12:00:00"},
  {"date": "2025-06-11", "time": "13:00:00"},
  {"date": "2025-06-11", "time": "14:00:00"},
  {"date": "2025-06-11", "time": "15:00:00"},
  {"date": "2025-06-11", "time": "16:00:00"},
  {"date": "2025-06-11", "time": "17:00:00"},
  {"date": "2025-06-11", "time": "18:00:00"},
  {"date": "2025-06-11", "time": "19:00:00"},
  {"date": "2025-06-11", "time": "20:00:00"},
  {"date": "2025-06-11", "time": "21:00:00"},
  {"date": "2025-06-11", "time": "22:00:00"},
  {"date": "2025-06-11", "time": "23:00:00"},
  {"date": "2025-06-12", "time": "00:00:00"}
].map((e) => Timestamp.fromJson(e)).toList();

final List<Date> sampleDates = [
  {"date": "2025-06-05"},
  {"date": "2025-06-06"},
  {"date": "2025-06-07"},
  {"date": "2025-06-08"},
  {"date": "2025-06-09"},
  {"date": "2025-06-10"},
  {"date": "2025-06-11"},
  {"date": "2025-06-12"}
].map((e) => Date.fromJson(e)).toList();

final List<String> sampleVehicles = [
  "Bicycle",
  "Motorcycle",
  "Car",
  "Van",
  "Truck",
  "Bus",
  "Fire truck",
  "Container"
];

final List<String> sampleDistrict = [
  "Quận 9",
  "Quận 11",
  "Huyện Hóc Môn",
  "Quận Bình Thạnh",
  "Quận 3",
  "Quận Gò Vấp",
  "Quận 1",
  "Huyện Củ Chi",
  "Quận 2",
  "Quận 12",
  "Bình Dương",
  "Quận 5",
  "Quận Tân Bình",
  "Huyện Bình Chánh",
  "Quận 7",
  "Quận 6",
  "Quận Bình Tân",
  "Quận 4",
  "Quận 10",
  "Quận Thủ Đức",
  "Huyện Nhà Bè",
  "Quận 8",
  "Quận Tân Phú",
  "Quận Phú Nhuận",
  "Đồng Nai"
];

final List<Camera> sampleCameras = [
  {
    "_id": "56de42f611f398ec0c48127d",
    "id": "TTH 1.1",
    "name": "Mai Chí Thọ - Võ Nguyên Giáp (Cát Lái cầu A)",
    "loc": {
      "type": "Point",
      "coordinates": [106.75270736217499, 10.80498476893258]
    },
    "values": {"ip": "10.0.1.138"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48127d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48127e",
    "id": "TTH 1.2",
    "name": "Mai Chí Thọ - Võ Nguyên Giáp (Cát Lái cầu B)",
    "loc": {
      "type": "Point",
      "coordinates": [106.75406455993652, 10.80625467043043]
    },
    "values": {"ip": "10.0.1.145"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48127e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48127f",
    "id": "TTH 2.1",
    "name": "Mai Chí Thọ - Lương Định Của 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.75110340118408, 10.791531914197964]
    },
    "values": {
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Mai%20Ch%C3%AD%20Th%E1%BB%8D%20-%20L%C6%B0%C6%A1ng%20%C4%90inh%20C%E1%BB%A7a%202&mp4",
      "ip": "10.0.1.129",
      "channel": "1"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48127f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481280",
    "id": "TTH 2.2",
    "name": "Mai Chí Thọ - Lương Định Của 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.75144672393799, 10.792627978171955]
    },
    "values": {
      "ip": "10.0.1.130",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Mai%20Ch%C3%AD%20Th%E1%BB%8D%20-%20L%C6%B0%C6%A1ng%20%C4%90inh%20C%E1%BB%A7a%201&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481280",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481282",
    "id": "TTH 3.2",
    "name": "Mai Chí Thọ - Đồng Văn Cống 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.74994468688965, 10.787685119587834]
    },
    "values": {
      "ip": "10.0.1.149",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Mai%20Ch%C3%AD%20Th%E1%BB%8D%20-%20%C4%90%E1%BB%93ng%20V%C4%83n%20C%E1%BB%91ng%202&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481282",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481283",
    "id": "TTH 4.1",
    "name": "Mai Chí Thọ - Trần Não 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.72761797904968, 10.775796632402953]
    },
    "values": {"ip": "10.0.1.137"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481283",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481284",
    "id": "TTH 5a",
    "name": "Nguyễn Thị Minh Khai - Nguyễn Thiện Thuật",
    "loc": {
      "type": "Point",
      "coordinates": [106.68248176574707, 10.766489980132722]
    },
    "values": {"ip": "10.0.1.239", "channel": ""},
    "dist": "Quận 3",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481284",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481286",
    "id": "TTH 5.2",
    "name": "Mai Chí Thọ - Nguyễn Cơ Thạch 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.72291874885558, 10.773383043524362]
    },
    "values": {"ip": "10.0.1.148"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481286",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481287",
    "id": "TTH 6.1",
    "name": "Võ Văn Kiệt - Ký Con",
    "loc": {
      "type": "Point",
      "coordinates": [106.70014679431915, 10.765478141038592]
    },
    "values": {
      "ip": "10.0.1.124",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/56de42f611f398ec0c481287/index.m3u8"
    },
    "dist": "Quận 1",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481287",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481288",
    "id": "TTH 7.1",
    "name": "Võ Văn Kiệt - Cầu Ông Lãnh 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6976523399353, 10.763791734998435]
    },
    "values": {"ip": "10.0.1.136"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481288",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481289",
    "id": "TTH 7.2",
    "name": "Võ Văn Kiệt - Cầu Ông Lãnh 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6982853412628, 10.76390240568414]
    },
    "values": {"ip": "10.0.1.123"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481289",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48128c",
    "id": "TTH 9.2",
    "name": "Võ Văn Kiệt - Nguyễn Văn Cừ 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6864407, 10.7536415]
    },
    "values": {"ip": "10.0.1.121"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48128c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48128b",
    "id": "TTH 9.1",
    "name": "Võ Văn Kiệt - Nguyễn Văn Cừ 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.68691277503967, 10.75432133583737]
    },
    "values": {"ip": "10.0.1.76"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48128b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48128d",
    "id": "TTH 2a",
    "name": "Hải Thượng Lãn Ông - Cầu Chà Và",
    "loc": {
      "type": "Point",
      "coordinates": [106.6600316762924, 10.750584741503857]
    },
    "values": {"ip": "10.0.1.164", "channel": ""},
    "dist": "Quận 5",
    "ptz": true,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48128d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48128f",
    "id": "TTH 11.1",
    "name": "Võ Văn Kiệt - Huỳnh Mẫn Đạt",
    "loc": {
      "type": "Point",
      "coordinates": [106.67719781398773, 10.751960277381004]
    },
    "values": {"ip": "10.0.1.77"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48128f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48128e",
    "id": "TTH 10.2",
    "name": "Võ Văn Kiệt - Cầu Chữ Y 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.68410181999207, 10.751433252881714]
    },
    "values": {"ip": "10.0.1.120"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48128e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481291",
    "id": "TTH 13.1",
    "name": "Võ Văn Kiệt - Nguyễn Tri Phương 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.66873812675476, 10.750337038974697]
    },
    "values": {"channel": "", "ip": "10.0.1.159"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481291",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481292",
    "id": "TTH 17.1",
    "name": "Võ Văn Kiệt - Phạm Phú Thứ",
    "loc": {
      "type": "Point",
      "coordinates": [106.64552092552185, 10.741361637875348]
    },
    "values": {"ip": "10.0.1.131"},
    "dist": "Quận 6",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481292",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481293",
    "id": "TTH 14.1",
    "name": "Võ Văn Kiệt - Hải Thượng Lãn Ông 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.66323423385619, 10.74997866048753]
    },
    "values": {
      "ip": "10.0.1.153",
      "channel": "",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/56de42f611f398ec0c481293/index.m3u8"
    },
    "dist": "Quận 5",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481293",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481294",
    "id": "TTH 14.2",
    "name": "Đường hầm - Đầu Quận 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.70204043388367, 10.767533435639743]
    },
    "values": {
      "ip": "10.0.1.160",
      "channel": "",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=TTH%2014.2%20%C4%90%C6%B0%E1%BB%9Dng%20h%E1%BA%A7m%20-%20%C4%90%E1%BA%A7u%20Qu%E1%BA%ADn%201"
    },
    "dist": "Quận 1",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481294",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481295",
    "id": "TTH 15.1",
    "name": "Võ Văn Kiệt - Cầu Chà Và 1 (dạ cầu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.6599941253662, 10.749082712407674]
    },
    "values": {"ip": "10.0.1.134"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481295",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481296",
    "id": "TTH 16.1",
    "name": "Võ Văn Kiệt - Cao Văn Lầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.6508424282074, 10.744249817197534]
    },
    "values": {"ip": "10.0.1.135"},
    "dist": "Quận 6",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481296",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481297",
    "id": "TTH 13.2",
    "name": "Võ Văn Kiệt - Nguyễn Tri Phương 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6700792312622, 10.750368660585494]
    },
    "values": {"ip": "10.0.1.132"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481297",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481298",
    "id": "TTH 18.1",
    "name": "Võ Văn Kiệt - An Dương Vương 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.61993265151978, 10.726361634826802]
    },
    "values": {"ip": "10.0.1.165", "channel": ""},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481298",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48129a",
    "id": "TTH 19.1",
    "name": "Võ Văn Kiệt - Hồ Học Lãm 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.61090433597563, 10.722239929521004]
    },
    "values": {
      "ip": "10.0.1.161",
      "channel": "",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/56de42f611f398ec0c48129a/index.m3u8"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48129a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48129b",
    "id": "TTH 19.2",
    "name": "Võ Văn Kiệt - Hồ Học Lãm 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.61146759986876, 10.721839351587027]
    },
    "values": {"channel": "", "ip": "10.0.1.154"},
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48129b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48129c",
    "id": "TTH 20.1",
    "name": "Võ Văn Kiệt - Quốc Lộ 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.60094261169434, 10.71705345841978]
    },
    "values": {"ip": "10.0.1.79"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48129c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48129d",
    "id": "TTH 21.39",
    "name": "Quốc lộ 1 - Trần Đại Nghĩa",
    "loc": {
      "type": "Point",
      "coordinates": [106.60066902637482, 10.722398052243674]
    },
    "values": {"ip": "10.0.1.133"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48129d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481299",
    "id": "TTH 18.2",
    "name": "Võ Văn Kiệt - An Dương Vương 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.62035107612608, 10.726567191549575]
    },
    "values": {"channel": "4", "ip": "10.0.1.167"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481299",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48129e",
    "id": "TTH 22.1",
    "name": "Đồng Văn Cống - Phan Văn Đáng",
    "loc": {
      "type": "Point",
      "coordinates": [106.7572618, 10.7785053]
    },
    "values": {"ip": "11.0.2.42"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48129e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c48129f",
    "id": "TTH 22.2",
    "name": "Đồng Văn Cống - Nguyễn Thị Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.7702866, 10.7731722]
    },
    "values": {"ip": "11.0.2.44"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c48129f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c4812a0",
    "id": "TTH 22.5",
    "name": "Nguyễn Thị Định - Đường A",
    "loc": {
      "type": "Point",
      "coordinates": [106.78359031677245, 10.762785156896125]
    },
    "values": {"ip": "11.0.2.43"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c4812a0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c4812a1",
    "id": "TTH 22.3",
    "name": "Nút giao Mỹ Thủy 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.7747069, 10.769926]
    },
    "values": {"ip": "11.0.2.40"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c4812a1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c4812a2",
    "id": "TTH 22.4",
    "name": "Nút giao Mỹ Thủy 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.7755866, 10.7701157]
    },
    "values": {"ip": "11.0.2.41"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c4812a2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df8108c062921100c143db",
    "id": "TTH 23",
    "name": "Hoàng Minh Giám - Hồng Hà",
    "loc": {
      "type": "Point",
      "coordinates": [106.6740220785141, 10.80903157324385]
    },
    "values": {"ip": "11.0.2.12"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df8108c062921100c143db",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df807bc062921100c143da",
    "id": "TTH 28.3",
    "name": "Trường Chinh - Âu Cơ",
    "loc": {
      "type": "Point",
      "coordinates": [106.63648724555968, 10.801918013706095]
    },
    "values": {"ip": "11.0.2.11"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df807bc062921100c143da",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df8159c062921100c143dc",
    "id": "TTH 32.1",
    "name": "Nút giao Thủ Đức (Lê Văn Việt)",
    "loc": {
      "type": "Point",
      "coordinates": [106.77428305149078, 10.849075129161237]
    },
    "values": {
      "ip": "11.0.2.13",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=N%C3%BAt%20giao%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c%201&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df8159c062921100c143dc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df8198c062921100c143dd",
    "id": "TTH 32.3",
    "name": "Nút giao Thủ Đức (Võ Văn Ngân)",
    "loc": {
      "type": "Point",
      "coordinates": [106.77378416061401, 10.849275333482579]
    },
    "values": {
      "ip": "11.0.2.14",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=N%C3%BAt%20giao%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c%203&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df8198c062921100c143dd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df81d8c062921100c143de",
    "id": "TTH 32.2",
    "name": "Nút giao Thủ Đức (trên cầu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.77400946617126, 10.849180499873379]
    },
    "values": {
      "ip": "11.0.2.15",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=N%C3%BAt%20giao%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c%202&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df81d8c062921100c143de",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df82d4c062921100c143e0",
    "id": "TTH 33.2",
    "name": "Võ Nguyên Giáp - Tây Hòa 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.76086664199829, 10.826493329352697]
    },
    "values": {
      "ip": "11.0.2.17",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=53"
    },
    "dist": "Quận 9",
    "ptz": true,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df82d4c062921100c143e0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df8274c062921100c143df",
    "id": "TTH 33.1",
    "name": "Võ Nguyên Giáp - Tây Hòa 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.7610329389572, 10.826493329352697]
    },
    "values": {
      "ip": "11.0.2.16",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Xa%20L%E1%BB%99%20H%C3%A0%20N%E1%BB%99i%20-%20T%C3%A2y%20H%C3%B2a%201&mp4"
    },
    "dist": "Quận 9",
    "ptz": true,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df8274c062921100c143df",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df8381c062921100c143e2",
    "id": "TTH 25.1",
    "name": "Nguyễn Hữu Thọ - Nguyễn Thị Thập 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.70094609260559, 10.74049728686901]
    },
    "values": {"ip": "11.0.2.19"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df8381c062921100c143e2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df83d8c062921100c143e3",
    "id": "TTH 24.1",
    "name": "Nút giao Nguyễn Thái Sơn 1 (Hồng Hà)",
    "loc": {
      "type": "Point",
      "coordinates": [106.67835116386414, 10.814084732739182]
    },
    "values": {"ip": "11.0.2.20"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df83d8c062921100c143e3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df84abc062921100c143e5",
    "id": "TTH 24.2",
    "name": "Nút giao Nguyễn Thái Sơn 3 (Phạm Văn Đồng)",
    "loc": {
      "type": "Point",
      "coordinates": [106.67923629283905, 10.814221730664514]
    },
    "values": {"ip": "181.1.1.162"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df84abc062921100c143e5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56df8544c062921100c143e6",
    "id": "TTH 29.1",
    "name": "Trường Sơn - Ga Quốc Tế",
    "loc": {
      "type": "Point",
      "coordinates": [106.66536390781403, 10.813631585309611]
    },
    "values": {"ip": "11.0.2.23"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56df8544c062921100c143e6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56f11ac33ac17b11001c504c",
    "id": "TTH 34.1",
    "name": "Nguyễn Văn Trỗi - Hoàng Văn Thụ 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.66841089725494, 10.799631100247796]
    },
    "values": {"ip": "181.1.2.39"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56f11ac33ac17b11001c504c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56f8d743025e9511002786c5",
    "id": "TTH 29.2",
    "name": "Trường Sơn - Ga Quốc Nội 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6649293899536, 10.81286755611663]
    },
    "values": {"ip": "11.0.2.31"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56f8d743025e9511002786c5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "56de42f611f398ec0c481290",
    "id": "TTH 12.1",
    "name": "Võ Văn Kiệt - An Bình",
    "loc": {
      "type": "Point",
      "coordinates": [106.67329251766205, 10.749335686252644]
    },
    "values": {"ip": "10.0.1.78"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=56de42f611f398ec0c481290",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58175ac4edeb6c0012a2d5bb",
    "id": "TTH 3.1",
    "name": "Mai Chí Thọ - Đồng Văn Cống 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.74960672855377, 10.78788009529324]
    },
    "values": {
      "ip": "10.0.1.156",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Mai%20Ch%C3%AD%20Th%E1%BB%8D%20-%20%C4%90%E1%BB%93ng%20V%C4%83n%20C%E1%BB%91ng%201&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58175ac4edeb6c0012a2d5bb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58175c81edeb6c0012a2d5c2",
    "id": "TTH 4.2",
    "name": "Mai Chí Thọ - Trần Não 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.72737658023834, 10.775722854863645]
    },
    "values": {"ip": "10.0.1.157"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58175c81edeb6c0012a2d5c2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5822adbbedeb6c0012a2d65f",
    "id": "TTH 10.1",
    "name": "Võ Văn Kiệt - Cầu Chữ Y 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.68367266654968, 10.751944466659413]
    },
    "values": {"ip": "10.0.1.158"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5822adbbedeb6c0012a2d65f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5822f23aedeb6c0012a2d6a8",
    "id": "TTH 3a",
    "name": "Hồng Bàng - Nguyễn Thị Nhỏ",
    "loc": {
      "type": "Point",
      "coordinates": [106.65115356445312, 10.753551885780816]
    },
    "values": {"channel": "13", "ip": "10.0.1.180"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": 165,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5822f23aedeb6c0012a2d6a8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "583f926761cfea0012cf68f1",
    "id": "TTH 22.9",
    "name": "Nguyễn Thị Định - Cổng A Cảng Cát Lái",
    "loc": {
      "type": "Point",
      "coordinates": [106.78657829761505, 10.75997093640807]
    },
    "values": {"ip": "11.0.2.60"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=583f926761cfea0012cf68f1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "583f958161cfea0012cf68f5",
    "id": "TTH 22.6",
    "name": "Nguyễn Thị Định - Đường C",
    "loc": {
      "type": "Point",
      "coordinates": [106.77987277507782, 10.76602095097508]
    },
    "values": {"ip": "11.0.2.63"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=583f958161cfea0012cf68f5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "583f969161cfea0012cf68f7",
    "id": "TTH 22.7",
    "name": "Nguyễn Thị Định - Đường D",
    "loc": {
      "type": "Point",
      "coordinates": [106.78142309188843, 10.764682369364285]
    },
    "values": {"ip": "11.0.2.62"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=583f969161cfea0012cf68f7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "583f976361cfea0012cf68f9",
    "id": "TTH 22.8",
    "name": "Nguyễn Thị Định - Lê Phụng Hiểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.78451299667358, 10.761957757718944]
    },
    "values": {"ip": "181.1.2.38"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=583f976361cfea0012cf68f9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "584e71cb61cfea0012cf694b",
    "id": "TTH 21.36",
    "name": "Quốc lộ 1 - KCN Vĩnh Lộc 3",
    "loc": {
      "type": "Point",
      "coordinates": [106.60326540470123, 10.824896838073522]
    },
    "values": {"ip": "10.0.4.131"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=584e71cb61cfea0012cf694b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "584e734a61cfea0012cf694f",
    "id": "TTH 21.37",
    "name": "Quốc lộ 1 - Lê Trọng Tấn",
    "loc": {
      "type": "Point",
      "coordinates": [106.60130739212036, 10.816234539123236]
    },
    "values": {"ip": "10.0.4.128"},
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=584e734a61cfea0012cf694f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "584e738361cfea0012cf6951",
    "id": "TTH 21.38",
    "name": "Quốc lộ 1 - Nguyễn Thị Tú",
    "loc": {
      "type": "Point",
      "coordinates": [106.60091042518616, 10.816129156816537]
    },
    "values": {"ip": "10.0.4.130"},
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=584e738361cfea0012cf6951",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "585b284ac3f96200127dc500",
    "id": "TTH 37.1",
    "name": "Huỳnh Tấn Phát - Lưu Trọng Lư 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.72779500484465, 10.754532143729545]
    },
    "values": {"ip": "11.0.2.55"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=585b284ac3f96200127dc500",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "585b2980c3f96200127dc502",
    "id": "TTH 37.2",
    "name": "Huỳnh Tấn Phát - Lưu Trọng Lư 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.72799348831177, 10.755127675228971]
    },
    "values": {"ip": "11.0.2.56"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=585b2980c3f96200127dc502",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "585b2b1ec3f96200127dc505",
    "id": "TTH 37.3",
    "name": "Nguyễn Văn Linh - Huỳnh Tấn Phát 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.7285943031311, 10.752882568039677]
    },
    "values": {"ip": "11.0.2.53"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=585b2b1ec3f96200127dc505",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "585b2baec3f96200127dc508",
    "id": "TTH 37.4",
    "name": "Nguyễn Văn Linh - Huỳnh Tấn Phát 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.72833144664764, 10.752545273497212]
    },
    "values": {"ip": "11.0.2.54"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=585b2baec3f96200127dc508",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e1d4ef9fab7001111b0a2",
    "id": "TTH 38.2",
    "name": "Cộng Hòa - Đường C 18",
    "loc": {
      "type": "Point",
      "coordinates": [106.65111064910887, 10.801607120963805]
    },
    "values": {"ip": "181.1.1.160"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e1d4ef9fab7001111b0a2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e1f18f9fab7001111b0a5",
    "id": "TTH 38.1",
    "name": "Cộng Hòa - Trường Chinh",
    "loc": {
      "type": "Point",
      "coordinates": [106.63495302200317, 10.807066139943608]
    },
    "values": {"ip": "181.1.2.68"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e1f18f9fab7001111b0a5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e20a0f9fab7001111b0a7",
    "id": "TTH 39.1",
    "name": "Nguyễn Kiệm - Hồ Văn Huê",
    "loc": {
      "type": "Point",
      "coordinates": [106.67836189270018, 10.806296824744877]
    },
    "values": {"ip": "180.1.1.54"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 165,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e20a0f9fab7001111b0a7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e2492f9fab7001111b0ab",
    "id": "TTH 34.2",
    "name": "Nguyễn Văn Trỗi - Nguyễn Đình Chính",
    "loc": {
      "type": "Point",
      "coordinates": [106.6753363609314, 10.795594708203206]
    },
    "values": {"ip": "180.1.1.32"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e2492f9fab7001111b0ab",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e25e1f9fab7001111b0ae",
    "id": "TTH 28.4",
    "name": "Trường Chinh - Tân Kỳ Tân Quý",
    "loc": {
      "type": "Point",
      "coordinates": [106.63591861724854, 10.80377282473422]
    },
    "values": {
      "ip": "180.1.1.49",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/586e25e1f9fab7001111b0ae/index.m3u8"
    },
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e25e1f9fab7001111b0ae",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e266ef9fab7001111b0b0",
    "id": "TTH 28.5",
    "name": "Trường Chinh - Phạm Văn Bạch 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.63315057754517, 10.814084732739182]
    },
    "values": {"ip": "180.1.1.50"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e266ef9fab7001111b0b0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e28a0f9fab7001111b0b3",
    "id": "TTH 21.3",
    "name": "Quốc lộ 1 - KCX Linh Trung 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.76874160766602, 10.872081942302982]
    },
    "values": {"ip": "11.0.2.66"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e28a0f9fab7001111b0b3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "586e2995f9fab7001111b0b5",
    "id": "TTH 40.1",
    "name": "Ung Văn Khiêm - Nguyễn Gia Trí (D2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71639561653136, 10.807519297288547]
    },
    "values": {"ip": "11.0.2.79"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=586e2995f9fab7001111b0b5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58744dd9b807da0011e33cb5",
    "id": "TTH 42.1",
    "name": "Quốc lộ 50 - Tạ Quang Bửu",
    "loc": {
      "type": "Point",
      "coordinates": [106.6561907529831, 10.73416215096018]
    },
    "values": {"ip": "183.1.1.28", "channel": ""},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58744dd9b807da0011e33cb5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58744e3eb807da0011e33cb7",
    "id": "TTH 42.2",
    "name": "Dương Bá Trạc - Hẻm 288",
    "loc": {
      "type": "Point",
      "coordinates": [106.6889190673828, 10.74441319877893]
    },
    "values": {"ip": "180.1.2.148"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58744e3eb807da0011e33cb7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58744e97b807da0011e33cb9",
    "id": "TTH 42.3",
    "name": "Dương Bá Trạc - Hẻm 219",
    "loc": {
      "type": "Point",
      "coordinates": [106.6890424489975, 10.746985129442232]
    },
    "values": {"ip": "180.1.2.149"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58744e97b807da0011e33cb9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58744f1fb807da0011e33cbd",
    "id": "TTH 43.1",
    "name": "Hưng Phú - Chánh Hưng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.66898488998413, 10.745967954565412]
    },
    "values": {"ip": "180.1.2.146"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58744f1fb807da0011e33cbd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58744fb0b807da0011e33cc0",
    "id": "TTH 43.2",
    "name": "Hưng Phú - Chánh Hưng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.66912972927094, 10.746389581873245]
    },
    "values": {"ip": "180.1.2.147"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58744fb0b807da0011e33cc0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587460aab807da0011e33cc2",
    "id": "TTH 21.1",
    "name": "Quốc lộ 1 - ĐH Nông Lâm 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.78842902183533, 10.867193076987826]
    },
    "values": {"ip": "11.0.2.76"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587460aab807da0011e33cc2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58746122b807da0011e33cc5",
    "id": "TTH 21.2",
    "name": "Quốc lộ 1 - ĐH Nông Lâm 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.78794085979462, 10.867229954504454]
    },
    "values": {"ip": "11.0.2.77"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58746122b807da0011e33cc5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587461c1b807da0011e33cc8",
    "id": "TTH 21.4",
    "name": "Quốc lộ 1 - Ngã tư Linh Xuân",
    "loc": {
      "type": "Point",
      "coordinates": [106.76550149917603, 10.873557015243474]
    },
    "values": {"ip": "11.0.2.67"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587461c1b807da0011e33cc8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58746295b807da0011e33ccb",
    "id": "TTH 21.5",
    "name": "Quốc lộ 1 - Bình Đường",
    "loc": {
      "type": "Point",
      "coordinates": [106.75896227359772, 10.87522173165726]
    },
    "values": {"ip": "11.0.2.69"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58746295b807da0011e33ccb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58746314b807da0011e33cce",
    "id": "TTH 21.6",
    "name": "Quốc lộ 1 - Cầu vượt Linh Xuân",
    "loc": {
      "type": "Point",
      "coordinates": [106.76504015922545, 10.873330486658844]
    },
    "values": {"ip": "11.0.2.68"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58746314b807da0011e33cce",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58746371b807da0011e33cd1",
    "id": "TTH 21.7",
    "name": "Quốc lộ 1 - Đường 14",
    "loc": {
      "type": "Point",
      "coordinates": [106.77595138549805, 10.869679665045766]
    },
    "values": {"ip": "11.0.2.78"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58746371b807da0011e33cd1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587463bab807da0011e33cd3",
    "id": "TTH 21.8",
    "name": "Quốc lộ 1 - Lê Thị Hoa",
    "loc": {
      "type": "Point",
      "coordinates": [106.74839973449707, 10.874779213010948]
    },
    "values": {"ip": "11.0.2.70"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587463bab807da0011e33cd3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5874644cb807da0011e33cd5",
    "id": "TTH 21.9",
    "name": "Cầu vượt Sóng Thần 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.75098538398743, 10.875806487432769]
    },
    "values": {"ip": "11.0.2.71"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5874644cb807da0011e33cd5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58746488b807da0011e33cd7",
    "id": "TTH 21.10",
    "name": "Cầu vượt Sóng Thần 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.74850702285767, 10.874305085161257]
    },
    "values": {"ip": "11.0.2.72"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58746488b807da0011e33cd7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587464e2b807da0011e33cd9",
    "id": "TTH 21.11",
    "name": "Cầu vượt nút giao thông Gò Dưa",
    "loc": {
      "type": "Point",
      "coordinates": [106.73313260078429, 10.869958878088818]
    },
    "values": {"ip": "11.0.2.73"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587464e2b807da0011e33cd9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58746536b807da0011e33cdc",
    "id": "TTH 21.12",
    "name": "Cầu vượt Bình Phước 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.72351956367493, 10.865949775189556]
    },
    "values": {"ip": "11.0.2.74"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58746536b807da0011e33cdc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5874656eb807da0011e33cde",
    "id": "TTH 21.13",
    "name": "Cầu vượt Bình Phước 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.72421157360077, 10.864743346036335]
    },
    "values": {"ip": "11.0.2.75"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5874656eb807da0011e33cde",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587470c2b807da0011e33ce4",
    "id": "TTH 40.2",
    "name": "Nguyễn Hữu Cảnh - Ngô Tất Tố (Cầu Thủ Thiêm 1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71509742736816, 10.789202764983797]
    },
    "values": {"ip": "11.0.2.81"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587470c2b807da0011e33ce4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587475abb807da0011e33cea",
    "id": "TTH 29.3",
    "name": "Trường Sơn - Cửu Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.66478991508484, 10.809173842715063]
    },
    "values": {"ip": "180.1.1.11"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587475abb807da0011e33cea",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5874769eb807da0011e33cec",
    "id": "TTH 38.3",
    "name": "Cộng Hòa - Út Tịch 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.65775716304778, 10.800105346405301]
    },
    "values": {"ip": "183.1.1.20"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5874769eb807da0011e33cec",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587476e3b807da0011e33cee",
    "id": "TTH 38.4",
    "name": "Cộng Hòa - Út Tịch 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.65785372257233, 10.801038028330572]
    },
    "values": {"ip": "181.1.2.57"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587476e3b807da0011e33cee",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587478d8b807da0011e33cf3",
    "id": "TTH 28.1",
    "name": "Nút giao Bảy Hiền 1 (Cách Mạng Tháng Tám)",
    "loc": {
      "type": "Point",
      "coordinates": [106.65359437465668, 10.792838759247182]
    },
    "values": {"ip": "180.1.1.47"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587478d8b807da0011e33cf3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58747923b807da0011e33cf5",
    "id": "TTH 28.2",
    "name": "Nút giao Bảy Hiền 2 (Hoàng Văn Thụ)",
    "loc": {
      "type": "Point",
      "coordinates": [106.6536158323288, 10.793197086735836]
    },
    "values": {"ip": "180.1.1.48"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58747923b807da0011e33cf5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5874796db807da0011e33cf7",
    "id": "TTH 28.7",
    "name": "Trường Chinh - Tây Thạnh 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.63079023361206, 10.819922896525796]
    },
    "values": {
      "ip": "180.1.1.52",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/5874796db807da0011e33cf7/index.m3u8"
    },
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5874796db807da0011e33cf7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587479b1b807da0011e33cf9",
    "id": "TTH 28.8",
    "name": "Trường Chinh - Tây Thạnh 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.62830114364624, 10.818953389832823]
    },
    "values": {"ip": "180.1.1.53"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587479b1b807da0011e33cf9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5875cef0b807da0011e33d14",
    "id": "TTH 28.6",
    "name": "Trường Chinh - Phạm Văn Bạch 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6327965259552, 10.813462972137799]
    },
    "values": {"ip": "180.1.1.51"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5875cef0b807da0011e33d14",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5875d4f8b807da0011e33d1a",
    "id": "TTH 42.4",
    "name": "Tạ Quang Bửu - Phạm Hùng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.67093753814697, 10.737271760059064]
    },
    "values": {"ip": "180.1.2.145"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5875d4f8b807da0011e33d1a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587654d3b807da0011e33d36",
    "id": "TTH 22.12",
    "name": "Võ Chí Công - Đường số 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.76758289337158, 10.76254800449792]
    },
    "values": {"ip": "11.0.2.83"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587654d3b807da0011e33d36",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587c782db807da0011e33d3b",
    "id": "TTH 33.3",
    "name": "Võ Nguyên Giáp - Thảo Điền",
    "loc": {
      "type": "Point",
      "coordinates": [106.73827707767487, 10.801011681423287]
    },
    "values": {
      "ip": "11.0.2.82",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Xa%20L%E1%BB%99%20H%C3%A0%20N%E1%BB%99i%20-%20Th%E1%BA%A3o%20%C4%90i%E1%BB%81n&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587c782db807da0011e33d3b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587c79e9b807da0011e33d3d",
    "id": "TTH 40.3",
    "name": "Điện Biên Phủ - Nguyễn Văn Thương 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.71896517276764, 10.798687875108948]
    },
    "values": {"ip": "181.1.2.19"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587c79e9b807da0011e33d3d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587c8183b807da0011e33d3f",
    "id": "TTH 27.2",
    "name": "Hoàng Văn Thụ - Trần Quốc Hoàn",
    "loc": {
      "type": "Point",
      "coordinates": [106.66226863861083, 10.801306766652873]
    },
    "values": {"ip": "180.1.1.13"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587c8183b807da0011e33d3f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587c8661b807da0011e33d43",
    "id": "TTH 38.6",
    "name": "Lê Văn Sỹ - Hoàng Văn Thụ",
    "loc": {
      "type": "Point",
      "coordinates": [106.66051983833313, 10.799968342036713]
    },
    "values": {"ip": "180.1.1.17"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587c8661b807da0011e33d43",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587c8c20b807da0011e33d47",
    "id": "TTH 34.3",
    "name": "Hoàng Văn Thụ - Hồ Văn Huê",
    "loc": {
      "type": "Point",
      "coordinates": [106.67493402957916, 10.799446670984318]
    },
    "values": {"ip": "180.1.1.21"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587c8c20b807da0011e33d47",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587c8d97b807da0011e33d49",
    "id": "TTH 34.4",
    "name": "Hoàng Văn Thụ - Nguyễn Văn Trỗi 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.66918873786926, 10.80010007700767]
    },
    "values": {"ip": "180.1.1.22"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587c8d97b807da0011e33d49",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ed91db807da0011e33d4e",
    "id": "TTH 44.5",
    "name": "Phan Đăng Lưu - Đinh Tiên Hoàng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.69796347618102, 10.802481835315886]
    },
    "values": {
      "ip": "180.1.1.29",
      "url": "http://10.0.1.231/snap.jpg?JpegSize=M&JpegCam=29"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ed91db807da0011e33d4e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ee0ecb807da0011e33d50",
    "id": "TTH 44.4",
    "name": "Phan Đăng Lưu - Lê Văn Duyệt",
    "loc": {
      "type": "Point",
      "coordinates": [106.69648289680481, 10.80199705418249]
    },
    "values": {"ip": "180.1.1.28"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ee0ecb807da0011e33d50",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ee2aeb807da0011e33d52",
    "id": "TTH 44.1",
    "name": "Phan Đăng Lưu - Phan Xích Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.68323278427124, 10.802039209094714]
    },
    "values": {
      "ip": "180.1.1.25",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/587ee2aeb807da0011e33d52/index.m3u8"
    },
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ee2aeb807da0011e33d52",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ee7d7b807da0011e33d55",
    "id": "TTH 44.2",
    "name": "Phan Đăng Lưu - Nơ Trang Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.69485211372375, 10.803187928175252]
    },
    "values": {"ip": "181.1.2.40"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ee7d7b807da0011e33d55",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ef2e4b807da0011e33d57",
    "id": "TTH 34.7",
    "name": "Nguyễn Văn Trỗi - Nguyễn Trọng Tuyển",
    "loc": {
      "type": "Point",
      "coordinates": [106.6723108291626, 10.797686683173783]
    },
    "values": {"ip": "180.1.1.30"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ef2e4b807da0011e33d57",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ef5dfb807da0011e33d59",
    "id": "TTH 34.8",
    "name": "Nguyễn Văn Trỗi - Huỳnh Văn Bánh",
    "loc": {
      "type": "Point",
      "coordinates": [106.67985320091246, 10.792891454492903]
    },
    "values": {"ip": "180.1.1.31"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ef5dfb807da0011e33d59",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587ef859b807da0011e33d5b",
    "id": "TTH 45.1",
    "name": "Phạm Văn Đồng - Lê Quang Định 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.68986856937408, 10.820054622736702]
    },
    "values": {"ip": "180.1.1.41"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587ef859b807da0011e33d5b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "587efb60b807da0011e33d5d",
    "id": "TTH 45.2",
    "name": "Phạm Văn Đồng - Lê Quang Định 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.68919265270233, 10.819274802725177]
    },
    "values": {"ip": "180.1.1.42"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=587efb60b807da0011e33d5d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "589ad89eb3bf7600110283ac",
    "id": "TTH 46.1",
    "name": "Tô Ký (Tỉnh lộ 15) - Hẻm 146",
    "loc": {
      "type": "Point",
      "coordinates": [106.63361191749573, 10.848616766131233]
    },
    "values": {"ip": "180.1.1.135"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=589ad89eb3bf7600110283ac",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "589add0fb3bf7600110283ae",
    "id": "TTH 46.2",
    "name": "Tô Ký (Tỉnh lộ 15) - Đông Bắc",
    "loc": {
      "type": "Point",
      "coordinates": [106.62333905696869, 10.855613311493862]
    },
    "values": {"ip": "180.1.1.136"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=589add0fb3bf7600110283ae",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "589b3705b3bf7600110283bd",
    "id": "TTH 47.1",
    "name": "QL 22 - Nguyễn Ảnh Thủ 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.60738527774811, 10.855133884772608]
    },
    "values": {"ip": "180.1.1.137"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=589b3705b3bf7600110283bd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "589b39d9b3bf7600110283c1",
    "id": "TTH 47.2",
    "name": "QL 22 - Nguyễn Ảnh Thủ 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.60715997219086, 10.855465795661573]
    },
    "values": {"ip": "180.1.1.138"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=589b39d9b3bf7600110283c1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "589b3f7db3bf7600110283c6",
    "id": "TTH 47.4",
    "name": "QL 22 - Nguyễn Văn Bứa 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.58692538738251, 10.884108842088843]
    },
    "values": {"ip": "180.1.1.140"},
    "dist": "Huyện Hóc Môn",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=589b3f7db3bf7600110283c6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "589b4644b3bf7600110283ce",
    "id": "TTH 48.1",
    "name": "Hà Huy Giáp - Cầu Phú Long 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.69312477111816, 10.898421431845435]
    },
    "values": {"ip": "180.1.1.141"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=589b4644b3bf7600110283ce",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58abc0cbbd82540010390ba6",
    "id": "TTH 49.3",
    "name": "Cầu Sài Gòn 3 (Dạ cầu Bình Thạnh)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72431148588657, 10.798228995993401]
    },
    "values": {
      "channel": "",
      "ip": "181.1.1.111",
      "hostname": "14.161.8.73:89"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 0,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58abc0cbbd82540010390ba6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58ad6214bd82540010390be2",
    "id": "TTH 38.8",
    "name": "Cộng Hòa - Hoàng Hoa Thám",
    "loc": {
      "type": "Point",
      "coordinates": [106.6473662853241, 10.801312036029335]
    },
    "values": {"ip": "180.1.1.16"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58ad6214bd82540010390be2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58ad6961bd82540010390be5",
    "id": "TTH 34.9",
    "name": "Nút giao Phú Nhuận 1 (Phan Đình Phùng)",
    "loc": {
      "type": "Point",
      "coordinates": [106.68037891387938, 10.799046195622289]
    },
    "values": {"ip": "180.1.1.23"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58ad6961bd82540010390be5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58ad69c4bd82540010390be7",
    "id": "TTH 34.10",
    "name": "Nút giao Phú Nhuận 2 (Phan Đăng Lưu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.68036818504333, 10.799309666315283]
    },
    "values": {"ip": "180.1.1.24"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58ad69c4bd82540010390be7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58ad7291bd82540010390bf9",
    "id": "TTH 44.3",
    "name": "Phan Đăng Lưu - Nguyễn Văn Đậu",
    "loc": {
      "type": "Point",
      "coordinates": [106.68719708919525, 10.803841326058494]
    },
    "values": {"ip": "180.1.1.27"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58ad7291bd82540010390bf9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af8a0bbd82540010390c25",
    "id": "TTH 35.3",
    "name": "Nam Kỳ Khởi Nghĩa - Võ Thị Sáu",
    "loc": {
      "type": "Point",
      "coordinates": [106.68854355812073, 10.784533873087986]
    },
    "values": {"ip": "180.1.1.36"},
    "dist": "Quận 3",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af8a0bbd82540010390c25",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af8b69bd82540010390c28",
    "id": "TTH 35.4",
    "name": "Nam Kỳ Khởi Nghĩa - Điện Biên Phủ 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.69091463088989, 10.783274419182169]
    },
    "values": {
      "ip": "180.1.1.37",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=25"
    },
    "dist": "Quận 3",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af8b69bd82540010390c28",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af8d68bd82540010390c2e",
    "id": "TTH 35.5",
    "name": "Nam Kỳ Khởi Nghĩa - Điện Biên Phủ 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6907000541687, 10.783337655487262]
    },
    "values": {"ip": "180.1.1.38"},
    "dist": "Quận 3",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af8d68bd82540010390c2e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af8eb2bd82540010390c30",
    "id": "TTH 35.6",
    "name": "Nam Kỳ Khởi Nghĩa -Nguyễn Thị Minh Khai 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.69508278369902, 10.779754243901596]
    },
    "values": {"ip": "180.1.1.39"},
    "dist": "Quận 3",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af8eb2bd82540010390c30",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af9670bd82540010390c34",
    "id": "TTH 45.3",
    "name": "Phạm Văn Đồng - Phan Văn Trị 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.69371485710144, 10.821229617977183]
    },
    "values": {"ip": "181.1.2.56"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af9670bd82540010390c34",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af994abd82540010390c37",
    "id": "TTH 36.1",
    "name": "Nguyễn Hữu Cảnh - Tôn Đức Thắng",
    "loc": {
      "type": "Point",
      "coordinates": [106.70623540878296, 10.782631515992442]
    },
    "values": {
      "ip": "180.1.1.55",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=31"
    },
    "dist": "Quận 1",
    "ptz": true,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af994abd82540010390c37",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af99abbd82540010390c39",
    "id": "TTH 36.2",
    "name": "Nguyễn Hữu Cảnh - Nguyễn Bỉnh Khiêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.70791447162627, 10.784623457474549]
    },
    "values": {"ip": "181.1.1.108"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af99abbd82540010390c39",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58af9a07bd82540010390c3b",
    "id": "TTH 36.3",
    "name": "Tôn Đức Thắng - Lê Duẩn",
    "loc": {
      "type": "Point",
      "coordinates": [106.70326352119446, 10.785292704694674]
    },
    "values": {
      "ip": "180.1.1.57",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=48"
    },
    "dist": "Quận 1",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58af9a07bd82540010390c3b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58afccadbd82540010390c3f",
    "id": "TTH 21.40",
    "name": "Quốc lộ 1 - Nguyễn Hữu Trí 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.59646332263947, 10.696633500705465]
    },
    "values": {"ip": "180.1.2.133"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58afccadbd82540010390c3f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58afcd9bbd82540010390c41",
    "id": "TTH 21.41",
    "name": "Quốc lộ 1 - Nguyễn Hữu Trí 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.59669935703278, 10.696554432630442]
    },
    "values": {"ip": "180.1.2.134"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58afcd9bbd82540010390c41",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58afdbaebd82540010390c48",
    "id": "TTH 21.42",
    "name": "Quốc lộ 1 - Cao tốc Trung Lương",
    "loc": {
      "type": "Point",
      "coordinates": [106.59253120422363, 10.689411864849033]
    },
    "values": {"ip": "180.1.2.135"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58afdbaebd82540010390c48",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58afea5dbd82540010390c4d",
    "id": "TTH 21.43",
    "name": "Quốc lộ 1 - Bùi Thanh Khiết 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.5804773569107, 10.674193154478866]
    },
    "values": {"ip": "180.1.2.139"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 165,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58afea5dbd82540010390c4d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58aff01fbd82540010390c50",
    "id": "TTH 21.44",
    "name": "Quốc lộ 1 - Bùi Thanh Khiết 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.58026278018951, 10.673702895852937]
    },
    "values": {"ip": "180.1.2.140"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58aff01fbd82540010390c50",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58aff2c6bd82540010390c55",
    "id": "TTH 21.45",
    "name": "Quốc lộ 1 - Đinh Đức Thiện 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.56980752944946, 10.66478848556424]
    },
    "values": {"ip": "180.1.2.142"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58aff2c6bd82540010390c55",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58affc6017139d0010f35cc8",
    "id": "TTH 21.14",
    "name": "Phạm Văn Đồng - Quốc Lộ 13 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71401381492615, 10.826272034039675]
    },
    "values": {"ip": "11.0.2.64"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58affc6017139d0010f35cc8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58b5510817139d0010f35d4e",
    "id": "TTH 21.15",
    "name": "Phạm Văn Đồng - Quốc Lộ 13 (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71435713768005, 10.82547115439782]
    },
    "values": {"ip": "11.0.2.65"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58b5510817139d0010f35d4e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58b5528e17139d0010f35d52",
    "id": "TTH 33.4",
    "name": "Xa Lộ Hà Nội - Đường D400",
    "loc": {
      "type": "Point",
      "coordinates": [106.80777311325073, 10.871944970874125]
    },
    "values": {
      "ip": "11.0.2.84",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Xa%20L%E1%BB%99%20H%C3%A0%20N%E1%BB%99i%20-%20%C4%90%C6%B0%E1%BB%9Dng%20D400&mp4"
    },
    "dist": "Quận 9",
    "ptz": false,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58b5528e17139d0010f35d52",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58b555ac17139d0010f35d59",
    "id": "TTH 42.5",
    "name": "Tùng Thiện Vương - Cầu Nhị Thiên Đường",
    "loc": {
      "type": "Point",
      "coordinates": [106.65607273578644, 10.744381576544276]
    },
    "values": {"ip": "180.1.2.144"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58b555ac17139d0010f35d59",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58b5752e17139d0010f35d5f",
    "id": "TTH 35.7",
    "name": "Nam Kỳ Khởi Nghĩa -Nguyễn Thị Minh Khai 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.69517397880554, 10.779469677034921]
    },
    "values": {"ip": "180.1.1.40"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58b5752e17139d0010f35d5f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58c2717ed56e930010a39ac0",
    "id": "TTH 42.6",
    "name": "Quốc Lộ 50 - Cầu Nhị Thiên Đường 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.65606251653571, 10.741807325938474]
    },
    "values": {"ip": "180.1.2.151"},
    "dist": "Quận 8",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58c2717ed56e930010a39ac0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58d7b3e8c1e33c00112b3207",
    "id": "TTH 21.47",
    "name": "Quốc lộ 1 - Nguyễn Văn Linh",
    "loc": {
      "type": "Point",
      "coordinates": [106.59536361694336, 10.690149850119596]
    },
    "values": {"ip": "180.1.2.136"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58d7b3e8c1e33c00112b3207",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58d7b5a7c1e33c00112b320a",
    "id": "TTH 21.48",
    "name": "Nút giao Chợ Đệm 1 (CT Trung Lương - Bùi Thanh Khiết)",
    "loc": {
      "type": "Point",
      "coordinates": [106.57628774642944, 10.685964395604419]
    },
    "values": {"ip": "180.1.2.137"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58d7b5a7c1e33c00112b320a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58d7bbf2c1e33c00112b3216",
    "id": "TTH 21.46",
    "name": "Quốc lộ 1 - Đinh Đức Thiện 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.57079458236694, 10.665626693756879]
    },
    "values": {
      "ip": "180.1.2.141",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20L%E1%BB%99%201%20-%20%C4%90inh%20%C4%90%E1%BB%A9c%20Thi%E1%BB%87n%202&mp4"
    },
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58d7bbf2c1e33c00112b3216",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58d7c20ac1e33c00112b321c",
    "id": "TTH 45.4",
    "name": "Phạm Văn Đồng - Phan Văn Trị 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.69480919837952, 10.820765943275457]
    },
    "values": {"ip": "180.1.1.44"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58d7c20ac1e33c00112b321c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58d7c2e6c1e33c00112b321e",
    "id": "TTH 28.9",
    "name": "Trường Chinh - Phan Văn Hớn 1 (Q12-HM)",
    "loc": {
      "type": "Point",
      "coordinates": [106.62542581558226, 10.82698333982128]
    },
    "values": {"ip": "180.1.1.133"},
    "dist": "Quận 12",
    "ptz": true,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58d7c2e6c1e33c00112b321e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58d8ec0adc195800111e042b",
    "id": "TTH 1.3",
    "name": "Cao tốc LTDG - Cầu Bà Dạt 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.75608158111572, 10.793523796720807]
    },
    "values": {
      "ip": "10.0.1.162",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Cao%20T%E1%BB%91c%20LTDG%20-%20c%E1%BA%A7u%20B%C3%A0%20D%E1%BA%A1t%201&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58d8ec0adc195800111e042b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58df4adedc195800111e04b4",
    "id": "TTH 26.2",
    "name": "Phổ Quang - Huỳnh Lan Khanh",
    "loc": {
      "type": "Point",
      "coordinates": [106.66659235954285, 10.804968960996266]
    },
    "values": {"ip": "180.1.1.58"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58df4adedc195800111e04b4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58df4d95dc195800111e04b9",
    "id": "TTH 26.4",
    "name": "Phổ Quang - Hoàng Minh Giám",
    "loc": {
      "type": "Point",
      "coordinates": [106.67287945747375, 10.807961915430065]
    },
    "values": {"ip": "180.1.1.60"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58df4d95dc195800111e04b9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58df4e22dc195800111e04bb",
    "id": "TTH 26.5",
    "name": "Yên Thế - Bạch Đằng",
    "loc": {
      "type": "Point",
      "coordinates": [106.66859328746794, 10.814163770011437]
    },
    "values": {"ip": "180.1.1.61"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58df4e22dc195800111e04bb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58df5016dc195800111e04bd",
    "id": "TTH 26.6",
    "name": "Yên Thế - Hồng Hà",
    "loc": {
      "type": "Point",
      "coordinates": [106.66856646537781, 10.813325973865927]
    },
    "values": {"ip": "181.1.2.58"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58df5016dc195800111e04bd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58df50ffdc195800111e04c0",
    "id": "TTH 26.7",
    "name": "Cộng Hòa - Thăng Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.66075587272644, 10.800948448836364]
    },
    "values": {"ip": "180.1.1.63"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 225,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58df50ffdc195800111e04c0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58e49783d9d6200011e0b9ce",
    "id": "TTH 28.10",
    "name": "Trường Chinh - Phan Văn Hớn 2 (HM-Q12)",
    "loc": {
      "type": "Point",
      "coordinates": [106.62476062774657, 10.82747334948839]
    },
    "values": {"ip": "180.1.1.134"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58e49783d9d6200011e0b9ce",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "58e49ff8d9d6200011e0b9d4",
    "id": "TTH 35.2",
    "name": "Nam Kỳ Khởi Nghĩa - Trần Quốc Toản",
    "loc": {
      "type": "Point",
      "coordinates": [106.6872239112854, 10.786315016471113]
    },
    "values": {"ip": "181.1.2.63"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=58e49ff8d9d6200011e0b9d4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "591c6833a6bfb500119400a3",
    "id": "TTH 48.8",
    "name": "Đặng Thúc Vịnh - Trịnh Thị Miếng",
    "loc": {
      "type": "Point",
      "coordinates": [106.61337733268738, 10.890809558636011]
    },
    "values": {"ip": "180.1.2.157"},
    "dist": "Huyện Hóc Môn",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=591c6833a6bfb500119400a3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59414c883dcfc400106f260b",
    "id": "TTH 38.9",
    "name": "Cộng Hòa - Bình Giã",
    "loc": {
      "type": "Point",
      "coordinates": [106.64510786533354, 10.801865320043618]
    },
    "values": {"ip": "180.1.1.64"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59414c883dcfc400106f260b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595d92013dcfc400106f2877",
    "id": "TTH 21.50",
    "name": "Quốc Lộ 1A - Cầu Bình Phước",
    "loc": {
      "type": "Point",
      "coordinates": [106.7151403427124, 10.860702563100757]
    },
    "values": {
      "ip": "180.1.1.144",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/595d92013dcfc400106f2877/index.m3u8"
    },
    "dist": "Quận 12",
    "ptz": true,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595d92013dcfc400106f2877",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595d9b3b3dcfc400106f287e",
    "id": "TTH 21.53",
    "name": "Quốc lộ 1 - An Phú Đông 12 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70542538166046, 10.859285378559079]
    },
    "values": {"ip": "180.1.1.147"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595d9b3b3dcfc400106f287e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595da2853dcfc400106f2883",
    "id": "TTH 21.55",
    "name": "Quốc lộ 1 - Đường 15 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.69882714748383, 10.860101972703431]
    },
    "values": {"ip": "180.1.1.149"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595da2853dcfc400106f2883",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595da2dd3dcfc400106f2885",
    "id": "TTH 21.56",
    "name": "Quốc lộ 1 - Đường 15 (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.69870913028716, 10.86011777772936]
    },
    "values": {
      "ip": "180.1.1.150",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/hN59hpYrdr80/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595da2dd3dcfc400106f2885",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dc2f03dcfc400106f2896",
    "id": "TTH 21.60",
    "name": "Quốc lộ 1 - Rạch Láng Le 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.68622612953186, 10.861092419378847]
    },
    "values": {
      "ip": "180.1.1.154",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/j1lM4P3jMh80/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dc2f03dcfc400106f2896",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dcab53dcfc400106f289d",
    "id": "TTH 21.63",
    "name": "Quốc lộ 1 - BQB Trước bến xe Ngã 4 Ga (hướng đi Bình Phước)",
    "loc": {
      "type": "Point",
      "coordinates": [106.67849063873291, 10.861629788008976]
    },
    "values": {"ip": "180.1.1.157"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dcab53dcfc400106f289d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dd3a63dcfc400106f28a7",
    "id": "TTH 21.64",
    "name": "Quốc lộ 1 - Đường Tô Ngọc Vân 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.67101800441742, 10.861766764171795]
    },
    "values": {
      "ip": "180.1.1.158",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/595dd3a63dcfc400106f28a7/index.m3u8",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/kLN6V6fqd780/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dd3a63dcfc400106f28a7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dd4133dcfc400106f28a9",
    "id": "TTH 21.65",
    "name": "Quốc lộ 1 - Đường Tô Ngọc Vân 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.67102336883545, 10.861961691679786]
    },
    "values": {"ip": "180.1.1.159"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dd4133dcfc400106f28a9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dd4f43dcfc400106f28ab",
    "id": "TTH 21.66",
    "name": "Quốc lộ 1 - Cầu Bến Cát 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.66330933570862, 10.86164032463911]
    },
    "values": {
      "ip": "180.1.1.160",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/7UBN1IFica80/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dd4f43dcfc400106f28ab",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dd7693dcfc400106f28b0",
    "id": "TTH 21.68",
    "name": "Quốc lộ 1 - Đường Lê Thị Riêng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6542649269104, 10.861924813512363]
    },
    "values": {
      "ip": "180.1.1.162",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/595dd7693dcfc400106f28b0/index.m3u8",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/lCNwDi6ddJ80/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dd7693dcfc400106f28b0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595dd9ac3dcfc400106f28b4",
    "id": "TTH 21.70",
    "name": "Quốc lộ 1 - BQB Trước UBND Q12 (hướng đi An Sương)",
    "loc": {
      "type": "Point",
      "coordinates": [106.65329933166504, 10.861982764916263]
    },
    "values": {
      "ip": "180.1.1.164",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/1B4jIsCfUF80/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595dd9ac3dcfc400106f28b4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595ddb493dcfc400106f28b6",
    "id": "TTH 21.71",
    "name": "Quốc lộ 1 - Cầu vượt Tân Thới Hiệp 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.64973199367523, 10.862088131076382]
    },
    "values": {"ip": "180.1.1.165"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595ddb493dcfc400106f28b6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595ddc123dcfc400106f28ba",
    "id": "TTH 21.73",
    "name": "Quốc lộ 1 - Cầu vượt Tân Thới Hiệp 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.64981245994568, 10.86175095923314]
    },
    "values": {"ip": "180.1.1.164"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595ddc123dcfc400106f28ba",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595f86c43dcfc400106f28ea",
    "id": "TTH 21.75",
    "name": "Quốc lộ 1 - Nguyễn Văn Quá 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.63948595523833, 10.856624846667557]
    },
    "values": {
      "ip": "180.1.1.169",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/XvgmxAzE1y80/s.jpg"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595f86c43dcfc400106f28ea",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "595f874d3dcfc400106f28ec",
    "id": "TTH 21.76",
    "name": "Quốc lộ 1 - Nguyễn Văn Quá 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.63957178592682, 10.856666993892127]
    },
    "values": {
      "ip": "180.1.1.170",
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/595f874d3dcfc400106f28ec/index.m3u8"
    },
    "dist": "Quận 12",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=595f874d3dcfc400106f28ec",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "597bf0b8faa7ea0011c7c293",
    "id": "TTH 98",
    "name": "Cầu Phú Hữu 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.79167985916138, 10.816392612513864]
    },
    "values": {"ip": "180.1.2.11"},
    "dist": "Quận 9",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=597bf0b8faa7ea0011c7c293",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5990ffdbbec3b90016d2ad2d",
    "id": "TTH 60.2",
    "name": "Đường hầm (Đầu hầm Tp Thủ Đức)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71340227127075, 10.77058473176459]
    },
    "values": {
      "ip": "10.0.1.166",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=TTH%2060.2%20%C4%90%C6%B0%E1%BB%9Dng%20h%E1%BA%A7m%20(%C4%90%E1%BA%A7u%20h%E1%BA%A7m%20Tp%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c)"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5990ffdbbec3b90016d2ad2d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca2d9d02eb490011a0a3f0",
    "id": "IDICO-QL1 05",
    "name": "QL1 - Phan Văn Hớn 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.60696148872375, 10.834296519079377]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca2d9d02eb490011a0a3f0/index.m3u8",
      "ip": "10.0.4.124"
    },
    "dist": "Quận 12",
    "ptz": true,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca2d9d02eb490011a0a3f0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca301902eb490011a0a400",
    "id": "IDICO-QL1 20",
    "name": "QL1 - Hương Lộ 2 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59129202365875, 10.770236917186804]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca301902eb490011a0a400/index.m3u8",
      "ip": "10.0.4.139"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca301902eb490011a0a400",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca308302eb490011a0a403",
    "id": "IDICO-QL1 22",
    "name": "QL1 - Tân Tạo Chợ Đệm 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.59075558185577, 10.767201427461313]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca308302eb490011a0a403/index.m3u8",
      "ip": "10.0.4.141"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca308302eb490011a0a403",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca30fd02eb490011a0a406",
    "id": "IDICO-QL1 25",
    "name": "QL1 - Tỉnh lộ 10 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59132421016692, 10.75646629926325]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca30fd02eb490011a0a406/index.m3u8",
      "ip": "10.0.4.144"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca30fd02eb490011a0a406",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca317602eb490011a0a408",
    "id": "IDICO-QL1 29",
    "name": "QL1 - Tỉnh lộ 10 B (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59397423267365, 10.749235550797692]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca317602eb490011a0a408/index.m3u8",
      "ip": "10.0.4.148"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca317602eb490011a0a408",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca31d602eb490011a0a40b",
    "id": "IDICO-QL1 33",
    "name": "QL1 - Hồ Học Lãm",
    "loc": {
      "type": "Point",
      "coordinates": [106.6028094291687, 10.73420958591557]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca31d602eb490011a0a40b/index.m3u8",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/xkEWyKLwVP80/s.jpg",
      "ip": "10.0.4.152"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca31d602eb490011a0a40b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca321b02eb490011a0a40d",
    "id": "IDICO-QL1 34",
    "name": "QL1 - Cầu An Lập",
    "loc": {
      "type": "Point",
      "coordinates": [106.60178482532501, 10.728617480445795]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca321b02eb490011a0a40d/index.m3u8",
      "ip": "10.0.4.153"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca321b02eb490011a0a40d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59ca329d02eb490011a0a410",
    "id": "IDICO-QL1 35",
    "name": "QL1 - Nút giao An Lạc 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.60102844238281, 10.724000357838937]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/59ca329d02eb490011a0a410/index.m3u8",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/pOJt2KQdP080/s.jpg",
      "ip": "10.0.4.154"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59ca329d02eb490011a0a410",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59d3414302eb490011a0a610",
    "id": "TTH 33.6",
    "name": "Xa Lộ Hà Nội - Đường 120",
    "loc": {
      "type": "Point",
      "coordinates": [106.80381417274474, 10.86748282878141]
    },
    "values": {
      "ip": "180.1.2.13",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Xa%20L%E1%BB%99%20H%C3%A0%20N%E1%BB%99i%20-%20%C4%90%C6%B0%E1%BB%9Dng%20120&mp4"
    },
    "dist": "Quận 9",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59d3414302eb490011a0a610",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "59d34ce302eb490011a0a616",
    "id": "TTH 33.7",
    "name": "Đỗ Xuân Hợp - Cầu Cống Đập.",
    "loc": {
      "type": "Point",
      "coordinates": [106.77621960639952, 10.810448995724885]
    },
    "values": {"ip": "180.1.2.14"},
    "dist": "Quận 9",
    "ptz": false,
    "angle": 165,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=59d34ce302eb490011a0a616",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a10c79f02eb490011a0b0dd",
    "id": "TTH 59.1",
    "name": "Mai Chí Thọ - Tố Hữu (C6)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71671748161314, 10.771317249031346]
    },
    "values": {"ip": "10.0.1.44"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a10c79f02eb490011a0b0dd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a60604f8576340017d0660b",
    "id": "TTH 24.5",
    "name": "Nguyễn Thái Sơn - Nguyễn Văn Nghi 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6863763332367, 10.824317251676183]
    },
    "values": {"ip": "180.1.1.177"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a60604f8576340017d0660b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6060a88576340017d0660d",
    "id": "TTH 24.6",
    "name": "Nguyễn Thái Sơn - Phan Văn Trị  1",
    "loc": {
      "type": "Point",
      "coordinates": [106.689493060112, 10.826124503740187]
    },
    "values": {"ip": "180.1.1.178"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6060a88576340017d0660d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6060e08576340017d0660f",
    "id": "TTH 24.7",
    "name": "Nguyễn Thái Sơn - Phan Văn Trị 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6891497373581, 10.826272034039675]
    },
    "values": {"ip": "183.1.1.19"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6060e08576340017d0660f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6061fd8576340017d06613",
    "id": "TTH 21.83",
    "name": "Quang Trung - Trưng Nữ Vương",
    "loc": {
      "type": "Point",
      "coordinates": [106.59652233123778, 10.888528592645441]
    },
    "values": {"ip": "180.1.1.181"},
    "dist": "Huyện Hóc Môn",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6061fd8576340017d06613",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6065c58576340017d06615",
    "id": "TTH 21.84",
    "name": "Tô Ngọc Vân - TX25",
    "loc": {
      "type": "Point",
      "coordinates": [106.67798638343811, 10.879710097959782]
    },
    "values": {"ip": "180.1.1.182"},
    "dist": "Quận 12",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6065c58576340017d06615",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6066608576340017d06617",
    "id": "TTH 21.85",
    "name": "Quang Trung - Tân Sơn",
    "loc": {
      "type": "Point",
      "coordinates": [106.64721608161926, 10.839438820584958]
    },
    "values": {"ip": "180.1.1.183"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6066608576340017d06617",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6069238576340017d0661c",
    "id": "TTH 44.6",
    "name": "Bạch Đằng - Lê Quang Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.69843554496765, 10.802618838537821]
    },
    "values": {"ip": "180.1.2.17"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6069238576340017d0661c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a606a0f8576340017d0661e",
    "id": "TTH 44.7",
    "name": "Nơ Trang Long - Nguyễn Xí",
    "loc": {
      "type": "Point",
      "coordinates": [106.7041164636612, 10.820080967971945]
    },
    "values": {"ip": "180.1.2.18"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a606a0f8576340017d0661e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a606a958576340017d06621",
    "id": "TTH 44.8",
    "name": "Đinh Bộ Lĩnh - Bạch Đằng 3",
    "loc": {
      "type": "Point",
      "coordinates": [106.70946478843688, 10.802866498049633]
    },
    "values": {"ip": "180.1.2.19"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a606a958576340017d06621",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a606c078576340017d06624",
    "id": "TTH 21.16",
    "name": "Quốc lộ 13 - Hiệp Bình",
    "loc": {
      "type": "Point",
      "coordinates": [106.71891689300537, 10.84955456560158]
    },
    "values": {"ip": "180.1.2.20"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a606c078576340017d06624",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a606c758576340017d06626",
    "id": "TTH 44.9",
    "name": "BX Miền Đông - Quốc Lộ 13 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7127799987793, 10.81423226896388]
    },
    "values": {"ip": "180.1.2.21"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a606c758576340017d06626",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a606cd08576340017d06628",
    "id": "TTH 44.10",
    "name": "BX Miền Đông - Đinh Bộ Lĩnh 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.71005487442017, 10.814411419996292]
    },
    "values": {"ip": "180.1.2.22"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a606cd08576340017d06628",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a606dbc8576340017d0662b",
    "id": "TTH 40.4",
    "name": "Điện Biên Phủ - Nguyễn Hữu Cảnh",
    "loc": {
      "type": "Point",
      "coordinates": [106.72112703323363, 10.797818419145367]
    },
    "values": {"ip": "180.1.2.23"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a606dbc8576340017d0662b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a607f078576340017d0666f",
    "id": "IDICO-QL1 07",
    "name": "QL1-Phan Văn Hớn (H.Hoc Mon)",
    "loc": {
      "type": "Point",
      "coordinates": [106.60677909851074, 10.834444045353402]
    },
    "values": {"hostname": "10.0.4.126", "ip": "10.0.4.126"},
    "dist": "Huyện Hóc Môn",
    "ptz": true,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a607f078576340017d0666f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a607fa38576340017d06671",
    "id": "IDICO-QL1 08",
    "name": "QL1-KCN Vĩnh Lộc (2) - Hướng An Lạc",
    "loc": {
      "type": "Point",
      "coordinates": [106.60308837890624, 10.82538158219951]
    },
    "values": {
      "hostname": "10.0.4.127",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/O1TIVJ5Jd280/s.jpg",
      "ip": "10.0.4.127"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a607fa38576340017d06671",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6082698576340017d06678",
    "id": "IDICO-QL1 16",
    "name": "QL1 - Trạm thu phí AS-AL 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.59654378890991, 10.794767399221058]
    },
    "values": {"hostname": "10.0.4.135", "ip": "10.0.4.135"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6082698576340017d06678",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a60839c8576340017d0667c",
    "id": "IDICO-QL1 21",
    "name": "QL1 - Hương Lộ 2 (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59143686294556, 10.769962881175976]
    },
    "values": {
      "hostname": "10.0.4.140",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/a4gczEWIAy80/s.jpg",
      "ip": "10.0.4.140"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a60839c8576340017d0667c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6084208576340017d0667e",
    "id": "IDICO-QL1 23",
    "name": "QL1 - Tân Tạo Chợ Đệm 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.59055709838867, 10.766100000884261]
    },
    "values": {"hostname": "10.0.4.142", "ip": "10.0.4.142"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6084208576340017d0667e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6084898576340017d06680",
    "id": "IDICO-QL1 24",
    "name": "QL1 - Tân Tạo Chợ Đệm 3",
    "loc": {
      "type": "Point",
      "coordinates": [106.59053564071655, 10.764223877445483]
    },
    "values": {"hostname": "10.0.4.143", "ip": "10.0.4.143"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6084898576340017d06680",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6085188576340017d06682",
    "id": "IDICO-QL1 26",
    "name": "QL1-Tỉnh lộ 10 (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.5924346446991, 10.756329275028753]
    },
    "values": {
      "hostname": "10.0.4.145",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/S0PUfO7ecM80/s.jpg",
      "ip": "10.0.4.145"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6085188576340017d06682",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6085688576340017d06684",
    "id": "IDICO-QL1 27",
    "name": "QL1-Tỉnh lộ 10 (3)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59175872802734, 10.756524271036032]
    },
    "values": {"hostname": "10.0.4.146", "ip": "10.0.4.146"},
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6085688576340017d06684",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6085fb8576340017d06686",
    "id": "IDICO-QL1 28",
    "name": "QL1-Tỉnh lộ 10B (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59350752830505, 10.7499628496621]
    },
    "values": {
      "hostname": "10.0.4.147",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/zkjlLv1AK080/s.jpg",
      "ip": "10.0.4.147"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6085fb8576340017d06686",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6086e88576340017d0668a",
    "id": "IDICO-QL1 30",
    "name": "QL1-Cty Pouyuen (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.5942370891571, 10.748566223482499]
    },
    "values": {
      "hostname": "10.0.4.149",
      "url":
          "http://10.0.2.127:8080/aoUlKs4Zr5TGMNf8PgKxsjOadd4teC/jpeg/VCksxb8QjC/EcetIrouoe80/s.jpg",
      "ip": "10.0.4.149"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6086e88576340017d0668a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6087858576340017d0668e",
    "id": "IDICO-QL1 32",
    "name": "QL1-Trạm Biến Áp 500Kv Phú Lâm",
    "loc": {
      "type": "Point",
      "coordinates": [106.59887194633484, 10.741456505518086]
    },
    "values": {"hostname": "10.0.4.151", "ip": "10.0.4.151"},
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6087858576340017d0668e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a6088218576340017d06693",
    "id": "IDICO-QL1 36",
    "name": "QL1 - Nút giao An Lạc 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6016936302185, 10.72350490898877]
    },
    "values": {
      "hostname": "10.0.4.155",
      "ip": "10.0.4.155",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=N%C3%BAt%20giao%20An%20L%E1%BA%A1c%202&mp4"
    },
    "dist": "Quận Bình Tân",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a6088218576340017d06693",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a823ba75058170011f6ea9e",
    "id": "TTH 100.1",
    "name": "Trần Hưng Đạo - Nguyễn Thái Học 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.69576942920685, 10.768250150460064]
    },
    "values": {"ip": "180.1.1.67"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a823ba75058170011f6ea9e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a823bd55058170011f6eaa0",
    "id": "TTH 100.2",
    "name": "Trần Hưng Đạo - Nguyễn Thái Học 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.69586062431335, 10.767533435639743]
    },
    "values": {"ip": "180.1.1.68"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a823bd55058170011f6eaa0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a823d555058170011f6eaa2",
    "id": "TTH 101.1",
    "name": "Lý Tự Trọng - Hai Bà Trưng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.70211553573608, 10.779111333190405]
    },
    "values": {"ip": "180.1.1.70"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a823d555058170011f6eaa2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a823e425058170011f6eaa4",
    "id": "TTH 102.1",
    "name": "Đinh Tiên Hoàng - Võ Thị Sáu 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.69577479362488, 10.79177431330566]
    },
    "values": {"ip": "180.1.1.71"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a823e425058170011f6eaa4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8241105058170011f6eaa6",
    "id": "TTH 102.2",
    "name": "Đinh Tiên Hoàng - Võ Thị Sáu 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.69578552246094, 10.79192186049289]
    },
    "values": {"ip": "180.1.1.72"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8241105058170011f6eaa6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a82439f5058170011f6eaa9",
    "id": "TTH 103",
    "name": "Nguyễn Biểu - Cầu Chữ Y",
    "loc": {
      "type": "Point",
      "coordinates": [106.68364584445953, 10.75113811876003]
    },
    "values": {"ip": "180.1.1.73"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a82439f5058170011f6eaa9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824b6c5058170011f6eaab",
    "id": "TTH 104.1",
    "name": "Nút giao Bốn Xã 3 (Lê Văn Quới)",
    "loc": {
      "type": "Point",
      "coordinates": [106.62139713764189, 10.773841521502957]
    },
    "values": {"ip": "180.1.1.74"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824b6c5058170011f6eaab",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824c3e5058170011f6eaae",
    "id": "TTH 104.2",
    "name": "Nút giao Bốn Xã 1 (Bình Long)",
    "loc": {
      "type": "Point",
      "coordinates": [106.6216492652893, 10.773883680362491]
    },
    "values": {"ip": "180.1.1.75"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824c3e5058170011f6eaae",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824c905058170011f6eab0",
    "id": "TTH 104.3",
    "name": "Nút giao Bốn Xã 2 (Hòa Bình)",
    "loc": {
      "type": "Point",
      "coordinates": [106.62178337574005, 10.7736939654481]
    },
    "values": {"ip": "180.1.1.76"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824c905058170011f6eab0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824dc05058170011f6eab2",
    "id": "TTH 115.1",
    "name": "Quang Trung - Lê Văn Thọ (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.65818095207213, 10.836604243182496]
    },
    "values": {"ip": "180.1.1.184"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824dc05058170011f6eab2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824e465058170011f6eab4",
    "id": "TTH 115.2",
    "name": "Quang Trung - Lê Văn Thọ (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.65832579135895, 10.836699080778736]
    },
    "values": {"ip": "180.1.1.185"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 165,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824e465058170011f6eab4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824ee15058170011f6eab6",
    "id": "TTH 116.1",
    "name": "Nguyễn Oanh - Phan Văn Trị (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.67790055274962, 10.830608338604561]
    },
    "values": {"ip": "180.1.1.186"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824ee15058170011f6eab6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a824f975058170011f6eab8",
    "id": "TTH 116.2",
    "name": "Nguyễn Oanh - Phan Văn Trị (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.67691349983214, 10.83107199807494]
    },
    "values": {"ip": "180.1.1.187"},
    "dist": "Quận Gò Vấp",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a824f975058170011f6eab8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8253615058170011f6eabf",
    "id": "TTH 107.1",
    "name": "Đinh Bộ Lĩnh - Bạch Đằng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.71002268791199, 10.80307200259584]
    },
    "values": {"ip": "180.1.2.28"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8253615058170011f6eabf",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8253bc5058170011f6eac1",
    "id": "TTH 107.2",
    "name": "Đinh Bộ Lĩnh - Bạch Đằng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.7093950510025, 10.803093079977254]
    },
    "values": {"ip": "180.1.2.29"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8253bc5058170011f6eac1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8254b05058170011f6eac3",
    "id": "TTH 108.1",
    "name": "Xô Viết Nghệ Tĩnh - Nguyễn Xí 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.71225428581238, 10.809674419947996]
    },
    "values": {"ip": "180.1.2.30"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8254b05058170011f6eac3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8254f25058170011f6eac5",
    "id": "TTH 108.2",
    "name": "Xô Viết Nghệ Tĩnh - Nguyễn Xí 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.71241521835327, 10.810280380744318]
    },
    "values": {"ip": "180.1.2.31"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8254f25058170011f6eac5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8255a55058170011f6eac7",
    "id": "TTH 109.1",
    "name": "BX Miền Đông - Đinh Bộ Lĩnh 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.71143352985382, 10.816814141148168]
    },
    "values": {"ip": "180.1.2.32"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8255a55058170011f6eac7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8256315058170011f6eac9",
    "id": "TTH 109.2",
    "name": "Đinh Bộ Lĩnh - Nguyễn Xí",
    "loc": {
      "type": "Point",
      "coordinates": [106.70956671237944, 10.813357588857302]
    },
    "values": {"ip": "180.1.2.33"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 210,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8256315058170011f6eac9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8256df5058170011f6eacb",
    "id": "TTH 110",
    "name": "BX Miền Đông - Quốc Lộ 13 (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71319842338562, 10.817262014672893]
    },
    "values": {"ip": "180.1.2.34"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8256df5058170011f6eacb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8257e25058170011f6eacd",
    "id": "TTH 111",
    "name": "Hoàng Hữu Nam - Đường D400",
    "loc": {
      "type": "Point",
      "coordinates": [106.81409776210785, 10.870085314097832]
    },
    "values": {"ip": "183.1.1.21"},
    "dist": "Quận 9",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8257e25058170011f6eacd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8259035058170011f6eacf",
    "id": "TTH 117.1",
    "name": "Nguyễn Văn Linh - Nguyễn Hữu Thọ (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70054912567139, 10.729123462199427]
    },
    "values": {"ip": "180.1.2.165"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8259035058170011f6eacf",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a825b7d5058170011f6ead4",
    "id": "TTH 117.3",
    "name": "Nguyễn Văn Linh - Nguyễn Hữu Thọ (3)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70044183731078, 10.728201098992683]
    },
    "values": {"ip": "180.1.2.167"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a825b7d5058170011f6ead4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a825ded5058170011f6ead7",
    "id": "TTH 118.2",
    "name": "Quốc lộ 50 - Cầu Ông Thìn (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.6558313369751, 10.648450872522051]
    },
    "values": {"ip": "180.1.2.169"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a825ded5058170011f6ead7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a82602c5058170011f6ead9",
    "id": "TTH 119.1",
    "name": "Vĩnh Lộc - Nguyễn Thị Tú 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.57917380332947, 10.813578893703603]
    },
    "values": {"ip": "180.1.2.170"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a82602c5058170011f6ead9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a82628e5058170011f6eadb",
    "id": "TTH 121.1",
    "name": "Nguyễn Văn Linh - Quốc lộ 50 (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.65566504001617, 10.719936599159299]
    },
    "values": {"ip": "180.1.2.173"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a82628e5058170011f6eadb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8266105058170011f6eadf",
    "id": "TTH 121.2",
    "name": "Nguyễn Văn Linh - Quốc lộ 50 (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.6557615995407, 10.719077457716304]
    },
    "values": {"ip": "180.1.2.174"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8266105058170011f6eadf",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8267fe5058170011f6eae1",
    "id": "TTH 123.1",
    "name": "Lê Văn Lương - Cầu Rạch Đĩa",
    "loc": {
      "type": "Point",
      "coordinates": [106.69770061969756, 10.72357869929447]
    },
    "values": {"ip": "180.1.2.177"},
    "dist": "Huyện Nhà Bè",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8267fe5058170011f6eae1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8269c45058170011f6eae4",
    "id": "TTH 124.1",
    "name": "Nguyễn Văn Quỳ - Cầu Phú Mỹ",
    "loc": {
      "type": "Point",
      "coordinates": [106.7367374897003, 10.740961085277492]
    },
    "values": {"ip": "180.1.2.45"},
    "dist": "Quận 7",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8269c45058170011f6eae4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8278f35058170011f6eaed",
    "id": "TTH 122.1",
    "name": "Nguyễn Văn Linh - Phạm Hùng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.67711734771729, 10.728448819673103]
    },
    "values": {"ip": "180.1.2.175"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 105,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8278f35058170011f6eaed",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5a8279865058170011f6eaef",
    "id": "TTH 122.2",
    "name": "Nguyễn Văn Linh - Phạm Hùng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.67788982391357, 10.727573890405179]
    },
    "values": {"ip": "180.1.2.176"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5a8279865058170011f6eaef",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5aab1f852d266a0017e5afd4",
    "id": "TTH 124.2",
    "name": "Võ Chí Công - Cầu Phú Mỹ",
    "loc": {
      "type": "Point",
      "coordinates": [106.75403237342834, 10.74966771410236]
    },
    "values": {"ip": "180.1.2.46"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5aab1f852d266a0017e5afd4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5abbb6d698d8fc001102dfc8",
    "id": "TTH 249.1",
    "name": "Nguyễn Văn Linh - Nguyễn Lương Bằng (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72045111656189, 10.73144253440327]
    },
    "values": {"streamingUrl": "181.1.1.154", "ip": "181.1.1.154"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5abbb6d698d8fc001102dfc8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5abbb77298d8fc001102dfce",
    "id": "TTH 249.2",
    "name": "Nguyễn Văn Linh - Nguyễn Lương Bằng (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7203277349472, 10.731563758142881]
    },
    "values": {
      "streamingUrl":
          "http://camera.thongtingiaothong.vn/s/5abbb77298d8fc001102dfce/index.m3u8",
      "ip": "181.1.1.155"
    },
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5abbb77298d8fc001102dfce",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5ad0621c98d8fc001102e268",
    "id": "TTH 101.2",
    "name": "Lý Tự Trọng - Hai Bà Trưng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.70233547687529, 10.779137682017028]
    },
    "values": {"ip": "180.1.1.69"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5ad0621c98d8fc001102e268",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5ad0644698d8fc001102e26b",
    "id": "TTH 125.1",
    "name": "Lã Xuân Oai - Cầu Tăng Long (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.80682897567749, 10.826403757459977]
    },
    "values": {"ip": "180.1.2.26"},
    "dist": "Quận 9",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5ad0644698d8fc001102e26b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5ad064b498d8fc001102e26f",
    "id": "TTH 125.2",
    "name": "Lã Xuân Oai - Cầu Tăng Long (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.80599212646483, 10.827699912826953]
    },
    "values": {"ip": "180.1.2.27"},
    "dist": "Quận 9",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5ad064b498d8fc001102e26f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5ad0679598d8fc001102e274",
    "id": "TTH 105.3",
    "name": "Lê Văn Việt - Man Thiện",
    "loc": {
      "type": "Point",
      "coordinates": [106.78670704364777, 10.845234341358218]
    },
    "values": {"ip": "180.1.2.38"},
    "dist": "Quận 9",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5ad0679598d8fc001102e274",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5ad068b198d8fc001102e278",
    "id": "TTH 118.1",
    "name": "Quốc lộ 50 - Cầu Ông Thìn (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.65458679199219, 10.652425964575363]
    },
    "values": {"ip": "180.1.2.168"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5ad068b198d8fc001102e278",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5ad06a0d98d8fc001102e27b",
    "id": "TTH 119.2",
    "name": "Vĩnh Lộc - Nguyễn Thị Tú 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.57931864261626, 10.813557817058603]
    },
    "values": {"ip": "180.1.2.171"},
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5ad06a0d98d8fc001102e27b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b0b7aba0e517b00119fd800",
    "id": "TTH 126.1",
    "name": "Nguyễn Văn Cừ - Trần Hưng Đạo 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6853678226471, 10.756371436338306]
    },
    "values": {"ip": "180.1.3.10"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 315,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b0b7aba0e517b00119fd800",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b0b7bbe0e517b00119fd806",
    "id": "TTH 126.2",
    "name": "Nguyễn Văn Cừ - Trần Hưng Đạo 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.68535709381104, 10.75639251699087]
    },
    "values": {"ip": "10.0.1.174"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b0b7bbe0e517b00119fd806",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b0b835b0e517b00119fd80d",
    "id": "TTH 128",
    "name": "Tam Bình (Số 81)",
    "loc": {
      "type": "Point",
      "coordinates": [106.73014998435974, 10.85308445857757]
    },
    "values": {"ip": "183.1.1.24"},
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b0b835b0e517b00119fd80d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b0e1faacddcc80011ceb449",
    "id": "TTH 175.2",
    "name": "Nút giao Hàng Xanh 8 (HX-VT)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7119699716568, 10.801280419769162]
    },
    "values": {"ip": "181.1.2.18"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b0e1faacddcc80011ceb449",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b5995a3fd4edb0019c7d9ab",
    "id": "TTH 15.2",
    "name": "Võ Văn Kiệt - Cầu Chà Và 2 (trên cầu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.66034817695618, 10.748940414526704]
    },
    "values": {
      "ip": "10.0.1.171",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=28"
    },
    "dist": "Quận 5",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b5995a3fd4edb0019c7d9ab",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b6005b6fd4edb0019c7db25",
    "id": "TTH 103.2",
    "name": "Trần Hưng Đạo - Nguyễn Biểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.68352782726288, 10.756107928056906]
    },
    "values": {"ip": "181.1.1.89"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 135,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b6005b6fd4edb0019c7db25",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b6329fdfd4edb0019c7dc0b",
    "id": "TTH 132",
    "name": "Nguyễn Trãi - Nguyễn Văn Cừ",
    "loc": {
      "type": "Point",
      "coordinates": [106.68437540531158, 10.759649460111168]
    },
    "values": {"ip": "10.0.1.176"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b6329fdfd4edb0019c7dc0b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b632a79fd4edb0019c7dc0f",
    "id": "TTH 133",
    "name": "Nguyễn Tri Phương - Trần Hưng Đạo",
    "loc": {
      "type": "Point",
      "coordinates": [106.66951060295105, 10.752424058178907]
    },
    "values": {"ip": "10.0.1.177"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b632a79fd4edb0019c7dc0f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b632b60fd4edb0019c7dc12",
    "id": "TTH 134",
    "name": "Hồng Bàng - Ngô Quyền 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6664206981659, 10.755717935377916]
    },
    "values": {"ip": "10.0.1.178"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b632b60fd4edb0019c7dc12",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b728aafca0577001163ff7e",
    "id": "TTH 136",
    "name": "Hồng Bàng - Châu Văn Liêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.6589105129242, 10.754843085101587]
    },
    "values": {"ip": "10.0.1.179"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b728aafca0577001163ff7e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b87c386ca057700116404a6",
    "id": "TTH 60.4",
    "name": "Đường hầm (Đầu hầm Tp Thủ Đức)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71590209007263, 10.771043214003438]
    },
    "values": {
      "ip": "10.0.1.43",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=TTH%2060.4%20%C4%90%C6%B0%E1%BB%9Dng%20h%E1%BA%A7m%20(%C4%90%E1%BA%A7u%20h%E1%BA%A7m%20Tp%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c)&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b87c386ca057700116404a6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5b8b2323ca057700116405d0",
    "id": "TTH 29.4",
    "name": "Trường Sơn - Ga Quốc Nội 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.66490256786346, 10.812946593709597]
    },
    "values": {"ip": "11.0.2.24"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5b8b2323ca057700116405d0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5bbc7163ca0577001164127f",
    "id": "TTH 137",
    "name": "Lê Văn Lương - Cầu Long Kiểng (HCM)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7025500535965, 10.689564733373853]
    },
    "values": {"ip": "180.1.2.178"},
    "dist": "Huyện Nhà Bè",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5bbc7163ca0577001164127f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd1f9766c880017188938",
    "id": "TTH 138",
    "name": "Nguyễn Tri Phương - Trần Phú",
    "loc": {
      "type": "Point",
      "coordinates": [106.66956961154938, 10.753578236842605]
    },
    "values": {"ip": "180.1.3.16"},
    "dist": "Quận 5",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd1f9766c880017188938",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd2a3766c88001718893c",
    "id": "TTH 140",
    "name": "Nút giao Cây Gõ 1 (trên cầu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.64291381835938, 10.754442550393371]
    },
    "values": {
      "ip": "181.1.1.13",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=3"
    },
    "dist": "Quận 11",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd2a3766c88001718893c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd326766c88001718893e",
    "id": "TTH 141",
    "name": "Nút giao Cây Gõ 3 (dạ cầu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.64323568344116, 10.754189580829962]
    },
    "values": {
      "ip": "181.1.1.15",
      "channel": "45",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=5"
    },
    "dist": "Quận 6",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd326766c88001718893e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd372766c880017188940",
    "id": "TTH 142",
    "name": "Nút giao Cây Gõ 2 (Minh Phụng)",
    "loc": {
      "type": "Point",
      "coordinates": [106.64326786994934, 10.755027541696245]
    },
    "values": {
      "ip": "181.1.1.14",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=4"
    },
    "dist": "Quận 11",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd372766c880017188940",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd3b7766c880017188942",
    "id": "TTH 143",
    "name": "Lê Hồng Phong - Nguyễn Trãi",
    "loc": {
      "type": "Point",
      "coordinates": [106.67818486690521, 10.757341144831328]
    },
    "values": {
      "ip": "180.1.3.13",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=7"
    },
    "dist": "Quận 5",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd3b7766c880017188942",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd49f766c880017188944",
    "id": "TTH 144",
    "name": "Nguyễn Tri Phương - Nguyễn Trãi",
    "loc": {
      "type": "Point",
      "coordinates": [106.66949987411498, 10.754700789937207]
    },
    "values": {
      "ip": "180.1.3.17",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=6"
    },
    "dist": "Quận 5",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd49f766c880017188944",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd4ee766c880017188946",
    "id": "TTH 145",
    "name": "Lê Văn Sỹ - Huỳnh Văn Bánh",
    "loc": {
      "type": "Point",
      "coordinates": [106.67145252227783, 10.791890243244568]
    },
    "values": {"ip": "181.1.1.18"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd4ee766c880017188946",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd542766c880017188948",
    "id": "TTH 146",
    "name": "Võ Văn Ngân - Đặng Văn Bi",
    "loc": {
      "type": "Point",
      "coordinates": [106.75798058509827, 10.851145656849512]
    },
    "values": {
      "ip": "181.1.1.19",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=8"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd542766c880017188948",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd614766c88001718894a",
    "id": "TTH 147",
    "name": "Lê Quang Định - Nơ Trang Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.69519007205963, 10.808193762767512]
    },
    "values": {
      "ip": "181.1.1.20",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=9"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 330,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd614766c88001718894a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd653766c88001718894c",
    "id": "TTH 148",
    "name": "Kha Vạn Cân - Võ Văn Ngân",
    "loc": {
      "type": "Point",
      "coordinates": [106.75500869750975, 10.850977064800553]
    },
    "values": {
      "ip": "181.1.1.21",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=10"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd653766c88001718894c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd70e766c88001718894e",
    "id": "TTH 149",
    "name": "Phạm Văn Đồng - Nguyễn Xí (hướng đi Thủ Đức)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70344591140747, 10.822831397791592]
    },
    "values": {
      "ip": "181.1.1.22",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=11"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd70e766c88001718894e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd767766c880017188950",
    "id": "TTH 150",
    "name": "Phạm Văn Đồng - Nguyễn Xí (hướng đi Sân bay)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70296847820282, 10.823047426650916]
    },
    "values": {
      "ip": "181.1.1.23",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=12"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd767766c880017188950",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd7bb766c880017188952",
    "id": "TTH 151",
    "name": "Phạm Văn Đồng - Đường 20 (hướng đi Thủ Đức)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72274708747864, 10.828927567007197]
    },
    "values": {
      "ip": "181.1.1.24",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=13"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd7bb766c880017188952",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd7fb766c880017188954",
    "id": "TTH 152",
    "name": "Phạm Văn Đồng - Đường 20 (hướng đi Sân bay)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72236621379852, 10.829138322583626]
    },
    "values": {
      "ip": "181.1.1.25",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=14"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 60,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd7fb766c880017188954",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd8e2766c880017188958",
    "id": "TTH 154",
    "name": "Phạm Văn Đồng - Hiệp Bình (hướng đi Sân bay)",
    "loc": {
      "type": "Point",
      "coordinates": [106.73284828662872, 10.837405093050696]
    },
    "values": {
      "ip": "181.1.1.27",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=16"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 255,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd8e2766c880017188958",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd98d766c88001718895a",
    "id": "TTH 155",
    "name": "Phạm Văn Đồng - Tô Ngọc Vân (hướng đi Bình Dương)",
    "loc": {
      "type": "Point",
      "coordinates": [106.75146281719206, 10.85339529790214]
    },
    "values": {
      "ip": "181.1.1.28",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=17"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd98d766c88001718895a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cd9cb766c88001718895c",
    "id": "TTH 156",
    "name": "Phạm Văn Đồng - Tô Ngọc Vân (hướng đi Sân bay)",
    "loc": {
      "type": "Point",
      "coordinates": [106.75131797790527, 10.853600767786636]
    },
    "values": {
      "ip": "181.1.1.29",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=18"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cd9cb766c88001718895c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cda2e766c88001718895e",
    "id": "TTH 157",
    "name": "Phạm Văn Đồng - Kha Vạn Cân (hướng đi Quốc lộ 1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.74354493618011, 10.840819218445986]
    },
    "values": {
      "ip": "181.1.1.30",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=19"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cda2e766c88001718895e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cda6a766c880017188960",
    "id": "TTH 158",
    "name": "Phạm Văn Đồng - Kha Vạn Cân (hướng đi Sân bay)",
    "loc": {
      "type": "Point",
      "coordinates": [106.74382388591766, 10.84119329463218]
    },
    "values": {
      "ip": "181.1.1.31",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=20"
    },
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cda6a766c880017188960",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdac3766c880017188962",
    "id": "TTH 159",
    "name": "Trường Chinh - Đồng Đen",
    "loc": {
      "type": "Point",
      "coordinates": [106.64591252803801, 10.797038541352348]
    },
    "values": {"ip": "181.1.1.32"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 195,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdac3766c880017188962",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdb0a766c880017188964",
    "id": "TTH 160",
    "name": "Trường Chinh - Xuân Hồng",
    "loc": {
      "type": "Point",
      "coordinates": [106.65165781974792, 10.793713499129755]
    },
    "values": {"ip": "181.1.1.33"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdb0a766c880017188964",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdb4b766c880017188966",
    "id": "TTH 161",
    "name": "Hoàng Văn Thụ - Út Tịch",
    "loc": {
      "type": "Point",
      "coordinates": [106.65837407112122, 10.79805554374863]
    },
    "values": {"ip": "181.1.1.34"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdb4b766c880017188966",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdb9f766c880017188968",
    "id": "TTH 162",
    "name": "Hoàng Văn Thụ - Trần Huy Liệu",
    "loc": {
      "type": "Point",
      "coordinates": [106.67747139930725, 10.79937289924722]
    },
    "values": {"ip": "181.1.1.35"},
    "dist": "Quận Phú Nhuận",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdb9f766c880017188968",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdbdc766c88001718896a",
    "id": "TTH 163",
    "name": "Hoàng Văn Thụ - Cộng Hòa",
    "loc": {
      "type": "Point",
      "coordinates": [106.66078269481659, 10.800674440805867]
    },
    "values": {"ip": "181.1.1.36"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdbdc766c88001718896a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdc1d766c88001718896c",
    "id": "TTH 164",
    "name": "Trường Sơn - Hậu Giang",
    "loc": {
      "type": "Point",
      "coordinates": [106.66447877883911, 10.80767210600642]
    },
    "values": {"ip": "181.1.1.37"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 15,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdc1d766c88001718896c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdc57766c88001718896e",
    "id": "TTH 165",
    "name": "Lý Thường Kiệt - Lạc Long Quân",
    "loc": {
      "type": "Point",
      "coordinates": [106.65247321128845, 10.790446385361513]
    },
    "values": {"ip": "181.1.1.38"},
    "dist": "Quận Tân Bình",
    "ptz": false,
    "angle": 180,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdc57766c88001718896e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d8cdc9d766c880017188970",
    "id": "TTH 166",
    "name": "Lạc Long Quân - Âu Cơ",
    "loc": {
      "type": "Point",
      "coordinates": [106.64788126945496, 10.774769015049133]
    },
    "values": {
      "ip": "181.1.1.39",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=32"
    },
    "dist": "Quận 11",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d8cdc9d766c880017188970",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9dddb9766c880017188c96",
    "id": "TTH 170",
    "name": "Nút giao Hàng Xanh 2 (ĐH Hồng Bàng)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70660018920898, 10.799878762223457]
    },
    "values": {
      "ip": "183.1.1.34",
      "url": "http://180.1.2.183/nvc-cgi/viewer/snapshot.cgi",
      "user": "admin",
      "pass": "admin"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9dddb9766c880017188c96",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9dde1f766c880017188c98",
    "id": "TTH 171",
    "name": "Nút giao Hàng Xanh 3 (Cầu Thị Nghè - Hàng Xanh)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71129405498505, 10.80014223218617]
    },
    "values": {
      "ip": "180.1.2.184",
      "url": "http://180.1.2.184/nvc-cgi/viewer/snapshot.cgi",
      "user": "admin",
      "pass": "admin"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 90,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9dde1f766c880017188c98",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9ddec9766c880017188c9c",
    "id": "TTH 173",
    "name": "Nút giao Hàng Xanh 5 (Hàng Xanh - Bạch Đằng)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71150326728821, 10.802155135072839]
    },
    "values": {
      "ip": "180.1.2.186",
      "url": "http://180.1.2.186/nvc-cgi/viewer/snapshot.cgi",
      "user": "admin",
      "pass": "admin"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 345,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9ddec9766c880017188c9c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9ddf49766c880017188ca0",
    "id": "TTH 175",
    "name": "Nút giao Hàng Xanh 7 (Hàng Xanh - Cầu Văn Thánh)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71232402324675, 10.801227725994805]
    },
    "values": {
      "ip": "180.1.2.188",
      "url": "http://180.1.2.188/nvc-cgi/viewer/snapshot.cgi",
      "user": "admin",
      "pass": "admin"
    },
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9ddf49766c880017188ca0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9de3c2766c880017188cb3",
    "id": "TTH 1.5",
    "name": "Cao tốc LTDG - Cầu Bà Dạt 3",
    "loc": {
      "type": "Point",
      "coordinates": [106.75486385822296, 10.792901993540932]
    },
    "values": {
      "ip": "10.0.6.181",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Cao%20T%E1%BB%91c%20LTDG%20-%20c%E1%BA%A7u%20B%C3%A0%20D%E1%BA%A1t%203&mp4"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9de3c2766c880017188cb3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9de49d766c880017188cb9",
    "id": "TTH 1.7",
    "name": "Cao tốc LTDG - Đỗ Xuân Hợp 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.77884817123413, 10.796179619548562]
    },
    "values": {
      "ip": "181.1.1.43",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=30"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 75,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9de49d766c880017188cb9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5d9de4de766c880017188cbb",
    "id": "TTH 1.8",
    "name": "Cao tốc LTDG - Võ Chí Công",
    "loc": {
      "type": "Point",
      "coordinates": [106.79076254367827, 10.79682776322295]
    },
    "values": {
      "ip": "181.1.1.42",
      "url": "http://10.0.1.230/snap.jpg?JpegSize=M&JpegCam=22",
      "user": "srvadmin",
      "pass": "Tth2018!"
    },
    "dist": "Quận 2",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5d9de4de766c880017188cbb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf2",
    "id": "ITS 1.1",
    "name": "Điện Biên Phủ - Cách Mạng Tháng Tám",
    "loc": {
      "type": "Point",
      "coordinates": [106.6836941242218, 10.776571295473905]
    },
    "values": {
      "channel": "",
      "url": "https://10.8.2.66/snap.jpg?JpegSize=M&JpegCam=53",
      "ip": "10.8.80.2"
    },
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf3",
    "id": "ITS 1.2",
    "name": "Ba Tháng Hai - Lý Thái Tổ",
    "loc": {
      "type": "Point",
      "coordinates": [106.668459, 10.768198]
    },
    "values": {"channel": "", "ip": "10.8.80.10"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf4",
    "id": "ITS 1.3-1",
    "name": "Nút giao Ngã bảy Lý Thái Tổ",
    "loc": {
      "type": "Point",
      "coordinates": [106.674156, 10.767465]
    },
    "values": {"channel": "", "ip": "10.8.80.18"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf5",
    "id": "ITS 1.3-2",
    "name": "Nút giao Ngã bảy Lý Thái Tổ",
    "loc": {
      "type": "Point",
      "coordinates": [106.674596, 10.767428]
    },
    "values": {"channel": "", "ip": "10.8.80.26"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf6",
    "id": "ITS 1.4-1",
    "name": "Nút giao Ngã sáu Cộng Hòa",
    "loc": {
      "type": "Point",
      "coordinates": [106.681205, 10.765389]
    },
    "values": {"channel": "", "ip": "180.1.3.12"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf7",
    "id": "ITS 1.4-2",
    "name": "Nút giao Ngã sáu Cộng Hòa",
    "loc": {
      "type": "Point",
      "coordinates": [106.68172, 10.765059]
    },
    "values": {"channel": "", "ip": "180.1.3.11"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf8",
    "id": "ITS 1.51",
    "name": "Ba Tháng Hai - Cao Thắng",
    "loc": {
      "type": "Point",
      "coordinates": [106.67782, 10.773823]
    },
    "values": {"channel": "", "ip": "10.8.80.50"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acf9",
    "id": "ITS 2.1-1",
    "name": "Nút giao Công Trường Dân Chủ",
    "loc": {
      "type": "Point",
      "coordinates": [106.68202, 10.777768]
    },
    "values": {"channel": "", "ip": "10.8.80.58"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acf9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acfa",
    "id": "ITS 2.1-2",
    "name": "Nút giao Công Trường Dân Chủ",
    "loc": {
      "type": "Point",
      "coordinates": [106.681336, 10.777664]
    },
    "values": {"channel": "", "ip": "10.8.80.66"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acfa",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acfb",
    "id": "ITS 2.6",
    "name": "Võ Thị Sáu - Bà Huyện Thanh Quan",
    "loc": {
      "type": "Point",
      "coordinates": [106.68426275253296, 10.780186363443855]
    },
    "values": {"channel": "", "ip": "10.8.80.74"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acfb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acfc",
    "id": "ITS 2.5",
    "name": "Điện Biên Phủ - Trương Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.68729364871979, 10.780012461751467]
    },
    "values": {"channel": "", "ip": "10.8.80.82"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acfc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acfd",
    "id": "ITS 2.7",
    "name": "Lý Chính Thắng - Nguyễn Thông",
    "loc": {
      "type": "Point",
      "coordinates": [106.6821813583374, 10.779306314452835]
    },
    "values": {"channel": "", "ip": "10.8.80.90"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acfd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acfe",
    "id": "ITS 2.8",
    "name": "Lý Chính Thắng - Trương Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.68368875980377, 10.782515582484137]
    },
    "values": {"channel": "", "ip": "10.8.80.98"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acfe",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515acff",
    "id": "ITS 3.3",
    "name": "Hai Bà Trưng - Lý Chính Thắng",
    "loc": {
      "type": "Point",
      "coordinates": [106.687554, 10.791464]
    },
    "values": {"channel": "", "ip": "10.8.80.106"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515acff",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad01",
    "id": "ITS 3.2",
    "name": "Võ Thị Sáu - Hai Bà Trưng",
    "loc": {
      "type": "Point",
      "coordinates": [106.6918158531189, 10.787859016844687]
    },
    "values": {"channel": "", "ip": "10.8.80.122"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad01",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad02",
    "id": "ITS 3.4",
    "name": "Điện Biên Phủ - Pasteur",
    "loc": {
      "type": "Point",
      "coordinates": [106.69155299663544, 10.784344164887198]
    },
    "values": {"channel": "", "ip": "10.8.80.130"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad02",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad03",
    "id": "ITS 3.5",
    "name": "Nam Kỳ Khởi Nghĩa - Nguyễn Đình Chiểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.69283509254456, 10.781472178899175]
    },
    "values": {"channel": "", "ip": "10.8.80.138"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad03",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad04",
    "id": "ITS 3.51",
    "name": "Võ Thị Sáu - Pasteur",
    "loc": {
      "type": "Point",
      "coordinates": [106.69000804424286, 10.786030455810181]
    },
    "values": {"channel": "", "ip": "10.8.80.146"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad04",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad05",
    "id": "ITS 4.1",
    "name": "Điện Biên Phủ - Đinh Tiên Hoàng",
    "loc": {
      "type": "Point",
      "coordinates": [106.697491, 10.790705]
    },
    "values": {"channel": "", "ip": "10.8.80.154"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad05",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad06",
    "id": "ITS 4.2",
    "name": "Đinh Tiên Hoàng - Nguyễn Đình Chiểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.699558, 10.788566]
    },
    "values": {"channel": "", "ip": "10.8.80.162"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad06",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad07",
    "id": "ITS 5.2",
    "name": "Nguyễn Văn Trỗi - Trương Quốc Dung",
    "loc": {
      "type": "Point",
      "coordinates": [106.672665, 10.797381]
    },
    "values": {"channel": "", "ip": "10.8.80.170"},
    "dist": "Quận Phú Nhuận",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad07",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad08",
    "id": "ITS 6.2",
    "name": "Cộng Hòa - Tân Kỳ Tân Quý",
    "loc": {
      "type": "Point",
      "coordinates": [106.63765132427216, 10.804136408507423]
    },
    "values": {"channel": "", "ip": "10.8.80.178"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad08",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad09",
    "id": "ITS 6.51",
    "name": "Trường Chinh - Hoàng Hoa Thám",
    "loc": {
      "type": "Point",
      "coordinates": [106.64701759815216, 10.79645363167906]
    },
    "values": {"channel": "", "ip": "10.8.80.186"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad09",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad0a",
    "id": "ITS 6.52",
    "name": "Hoàng Văn Thụ - Xuân Diệu",
    "loc": {
      "type": "Point",
      "coordinates": [106.655729, 10.795418]
    },
    "values": {"channel": "", "ip": "10.8.80.194"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad0a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad0b",
    "id": "ITS 7.1",
    "name": "Nam Kỳ Khởi Nghĩa - Lý Tự Trọng",
    "loc": {
      "type": "Point",
      "coordinates": [106.699042, 10.775615]
    },
    "values": {"channel": "", "ip": "10.8.80.202"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad0b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad0c",
    "id": "ITS 7.2",
    "name": "Nút giao Ngã sáu Phù Đổng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.693342, 10.771135]
    },
    "values": {"channel": "", "ip": "10.8.80.210"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad0c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad0e",
    "id": "ITS 7.6",
    "name": "Cách Mạng Tháng Tám - Nguyễn Đình Chiểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.686639, 10.774969]
    },
    "values": {"channel": "", "ip": "10.8.80.226"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad0e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad0f",
    "id": "ITS 7.4",
    "name": "Nguyễn Thị Minh Khai - Trương Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.691731, 10.776014]
    },
    "values": {"channel": "", "ip": "10.8.80.234"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad0f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad11",
    "id": "ITS 7.5",
    "name": "Nguyễn Đình Chiểu - Trương Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.689658, 10.777922]
    },
    "values": {"channel": "", "ip": "10.8.80.250"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad11",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad13",
    "id": "ITS 7.52",
    "name": "Pasteur - Lê Thánh Tôn",
    "loc": {
      "type": "Point",
      "coordinates": [106.700359, 10.775708]
    },
    "values": {"channel": "", "ip": "10.8.81.10"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad13",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad14",
    "id": "ITS 7.53",
    "name": "Lý Tự Trọng - Đồng Khởi",
    "loc": {
      "type": "Point",
      "coordinates": [106.7010372877121, 10.777894014884904]
    },
    "values": {"channel": "", "ip": "10.8.81.18"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad14",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad15",
    "id": "ITS 8.2",
    "name": "Lý Tự Trọng - Chu Mạnh Trinh",
    "loc": {
      "type": "Point",
      "coordinates": [106.704602, 10.781944]
    },
    "values": {"channel": "", "ip": "10.8.81.26"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad15",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad16",
    "id": "ITS 8.4",
    "name": "Nguyễn Thị Minh Khai - Pasteur",
    "loc": {
      "type": "Point",
      "coordinates": [106.695957, 10.780518]
    },
    "values": {"channel": "", "ip": "10.8.81.34"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad16",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad17",
    "id": "ITS 8.5",
    "name": "Nguyễn Thị Minh Khai - Hai Bà Trưng",
    "loc": {
      "type": "Point",
      "coordinates": [106.698076, 10.782987]
    },
    "values": {"channel": "", "ip": "10.8.81.42"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad17",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad18",
    "id": "ITS 8.6",
    "name": "Hai Bà Trưng - Lê Duẩn",
    "loc": {
      "type": "Point",
      "coordinates": [106.699614, 10.781431]
    },
    "values": {"channel": "", "ip": "10.8.81.50"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad18",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad1a",
    "id": "ITS 8.51",
    "name": "Pasteur - Lê Duẩn",
    "loc": {
      "type": "Point",
      "coordinates": [106.697417, 10.779127]
    },
    "values": {"channel": "", "ip": "10.8.81.66"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad1a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad1c",
    "id": "ITS 9.2",
    "name": "Hoàng Diệu - Nguyễn Tất Thành",
    "loc": {
      "type": "Point",
      "coordinates": [106.70726001262665, 10.765293690837588]
    },
    "values": {"channel": "", "ip": "10.8.81.82"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad1c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad1e",
    "id": "ITS 9.5",
    "name": "Pasteur - Hàm Nghi",
    "loc": {
      "type": "Point",
      "coordinates": [106.702639, 10.770674]
    },
    "values": {"channel": "", "ip": "10.8.81.98"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad1e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad1f",
    "id": "ITS 9.51",
    "name": "Hùng Vương - Ngô Gia Tự",
    "loc": {
      "type": "Point",
      "coordinates": [106.66647434234619, 10.756329275028753]
    },
    "values": {"channel": "", "ip": "180.1.3.15"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad1f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad20",
    "id": "ITS 10.1",
    "name": "Hồng Bàng - Ngô Quyền 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.666241, 10.755881]
    },
    "values": {"channel": "", "ip": "180.1.3.14"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad20",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad21",
    "id": "ITS 10.2-1",
    "name": "Nút giao Ngã sáu Nguyễn Tri Phương",
    "loc": {
      "type": "Point",
      "coordinates": [106.668851, 10.759539]
    },
    "values": {"channel": "", "ip": "10.8.81.122"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad21",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad22",
    "id": "ITS 10.2-2",
    "name": "Nút giao Ngã sáu Nguyễn Tri Phương",
    "loc": {
      "type": "Point",
      "coordinates": [106.669124, 10.76009]
    },
    "values": {"channel": "", "ip": "10.8.81.130"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad22",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "5deb576d1dc17d7c5515ad23",
    "id": "ITS 10.3",
    "name": "Ba Tháng Hai - Lý Thường Kiệt",
    "loc": {
      "type": "Point",
      "coordinates": [106.659903, 10.763649]
    },
    "values": {"channel": "", "ip": "181.1.2.59"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=5deb576d1dc17d7c5515ad23",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "62da3e390637a10017d706ff",
    "id": "TTH 268.1",
    "name": "Quốc Lộ 13 - Đinh Thị Thi 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.71823024749756, 10.844444049682709]
    },
    "values": {"ip": "181.1.2.35"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=62da3e390637a10017d706ff",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "62da3e620637a10017d70720",
    "id": "TTH 268.2",
    "name": "Quốc Lộ 13 - Đinh Thị Thi 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.71817660331726, 10.845697978169245]
    },
    "values": {"ip": "181.1.2.36"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=62da3e620637a10017d70720",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "62da3e840637a10017d7073d",
    "id": "TTH 268.3",
    "name": "Quốc Lộ 13 - Đinh Thị Thi 3",
    "loc": {
      "type": "Point",
      "coordinates": [106.71789765357971, 10.845107894830463]
    },
    "values": {"ip": "181.1.2.37"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=62da3e840637a10017d7073d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "631812e6c9eae60017a19567",
    "id": "TTH 49.11",
    "name": "Cầu Sài Gòn 11 (Bình Thạnh)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72335863113403, 10.798081890915219]
    },
    "values": {"ip": "181.1.1.119"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 270,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=631812e6c9eae60017a19567",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "631813ebc9eae60017a196b0",
    "id": "TTH 49.8",
    "name": "Cầu Sài Gòn 8 (Thủ Đức)",
    "loc": {
      "type": "Point",
      "coordinates": [106.73122823238373, 10.799552059148736]
    },
    "values": {"ip": "181.1.1.116"},
    "dist": "Quận 2",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=631813ebc9eae60017a196b0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6318283cc9eae60017a19f0c",
    "id": "TTH 176.1",
    "name": "Nguyễn Thị Minh Khai - Đinh Tiên Hoàng 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.70156836509703, 10.786610116131385]
    },
    "values": {"ip": "181.1.1.67"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6318283cc9eae60017a19f0c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6318287ec9eae60017a19f36",
    "id": "TTH 176.2",
    "name": "Nguyễn Thị Minh Khai - Đinh Tiên Hoàng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.70172929763793, 10.78656268941979]
    },
    "values": {"ip": "181.1.1.68"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 285,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6318287ec9eae60017a19f36",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "631828cac9eae60017a19f50",
    "id": "TTH 177",
    "name": "Nguyễn Thị Minh Khai - Nguyễn Bỉnh Khiêm 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.70353174209595, 10.788707423231353]
    },
    "values": {"ip": "181.1.1.69"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 45,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=631828cac9eae60017a19f50",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63195512c9eae60017a1c279",
    "id": "TTH 178.1",
    "name": "Nguyễn Trãi - Cống Quỳnh 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.68810371554173, 10.766339939594687]
    },
    "values": {"ip": "181.1.1.70"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 30,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63195512c9eae60017a1c279",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63195556c9eae60017a1c2ba",
    "id": "TTH 178.2",
    "name": "Nguyễn Trãi - Cống Quỳnh 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.68801572479424, 10.766830262802149]
    },
    "values": {"ip": "181.1.1.71"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 120,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63195556c9eae60017a1c2ba",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "631955e7c9eae60017a1c30a",
    "id": "TTH 179",
    "name": "Cách Mạng Tháng Tám – Hòa Hưng",
    "loc": {
      "type": "Point",
      "coordinates": [106.67714416980743, 10.780223251668712]
    },
    "values": {"ip": "181.1.1.72"},
    "dist": "Quận 10",
    "ptz": false,
    "angle": 300,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=631955e7c9eae60017a1c30a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae73cebfd3d90017e8f00d",
    "id": "TTH 180.1",
    "name": "Nguyễn Thị Minh Khai - Cống Quỳnh",
    "loc": {
      "type": "Point",
      "coordinates": [106.68436467647551, 10.768424058946168]
    },
    "values": {"ip": "181.1.1.73"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": 150,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae73cebfd3d90017e8f00d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae75a3bfd3d90017e8f051",
    "id": "TTH 180.2",
    "name": "Cống Quỳnh - Phạm Viết Chánh",
    "loc": {
      "type": "Point",
      "coordinates": [106.68545365333556, 10.767891793263033]
    },
    "values": {"ip": "181.1.1.74"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae75a3bfd3d90017e8f051",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae75debfd3d90017e8f082",
    "id": "TTH 181.1",
    "name": "Cao Thắng – Võ Văn Tần 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6838926076889, 10.768503108224836]
    },
    "values": {"ip": "181.1.1.75"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae75debfd3d90017e8f082",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae75f9bfd3d90017e8f097",
    "id": "TTH 181.2",
    "name": "Cao Thắng – Võ Văn Tần 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.68327569961548, 10.769072262419003]
    },
    "values": {"ip": "181.1.1.76"},
    "dist": "Quận 1",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae75f9bfd3d90017e8f097",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae763bbfd3d90017e8f0c4",
    "id": "TTH 182",
    "name": "Lý Thái Tổ - Nguyễn Đình Chiểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.67878031730652, 10.766258100640426]
    },
    "values": {"ip": "181.1.1.77"},
    "dist": "Quận 3",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae763bbfd3d90017e8f0c4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7669bfd3d90017e8f0d9",
    "id": "TTH 183.1",
    "name": "Khánh Hội - Cầu Kênh Tẻ",
    "loc": {
      "type": "Point",
      "coordinates": [106.70217990875244, 10.75287202759093]
    },
    "values": {"ip": "181.1.1.78"},
    "dist": "Quận 4",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7669bfd3d90017e8f0d9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae768dbfd3d90017e8f0f1",
    "id": "TTH 183.2",
    "name": "Khánh Hội - Vĩnh Hội",
    "loc": {
      "type": "Point",
      "coordinates": [106.70127868652344, 10.756002524679882]
    },
    "values": {"ip": "181.1.1.79"},
    "dist": "Quận 4",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae768dbfd3d90017e8f0f1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae76afbfd3d90017e8f106",
    "id": "TTH 184",
    "name": "Khánh Hội - Đường số 41",
    "loc": {
      "type": "Point",
      "coordinates": [106.69977664947508, 10.757952481191817]
    },
    "values": {"ip": "181.1.1.80"},
    "dist": "Quận 4",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae76afbfd3d90017e8f106",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae76ddbfd3d90017e8f11b",
    "id": "TTH 185",
    "name": "Khánh Hội -  Hoàng Diệu",
    "loc": {
      "type": "Point",
      "coordinates": [106.69848918914795, 10.759638919898903]
    },
    "values": {"ip": "181.1.1.81"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae76ddbfd3d90017e8f11b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7709bfd3d90017e8f135",
    "id": "TTH 186.1",
    "name": "Hoàng Diệu - Đoàn Văn Bơ 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.7038106918335, 10.763254191089795]
    },
    "values": {"ip": "181.1.1.82"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7709bfd3d90017e8f135",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7727bfd3d90017e8f14a",
    "id": "TTH 186.2",
    "name": "Hoàng Diệu - Đoàn Văn Bơ 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.70371949672699, 10.763507153048575]
    },
    "values": {"ip": "181.1.1.83"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7727bfd3d90017e8f14a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7759bfd3d90017e8f162",
    "id": "TTH 187.1",
    "name": "Nguyễn Tất Thành - Cầu Khánh Hội",
    "loc": {
      "type": "Point",
      "coordinates": [106.70603692531586, 10.76750708579767]
    },
    "values": {"ip": "181.1.1.84"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7759bfd3d90017e8f162",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae777cbfd3d90017e8f177",
    "id": "TTH 187.2",
    "name": "Nguyễn Tất Thành - Đoàn Như Hài",
    "loc": {
      "type": "Point",
      "coordinates": [106.70645534992218, 10.766774559265741]
    },
    "values": {"ip": "181.1.1.85"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae777cbfd3d90017e8f177",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae77bfbfd3d90017e8f18f",
    "id": "TTH 188.1",
    "name": "Nguyễn Tất Thành - Cầu Tân Thuận 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.717768907547, 10.757040746338014]
    },
    "values": {"ip": "181.1.1.86"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae77bfbfd3d90017e8f18f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7829bfd3d90017e8f1ac",
    "id": "TTH 188.2",
    "name": "Nguyễn Tất Thành - Cầu Tân Thuận 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.71935141086578, 10.756434678291594]
    },
    "values": {"ip": "181.1.1.87"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7829bfd3d90017e8f1ac",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7893bfd3d90017e8f1e1",
    "id": "TTH 189",
    "name": "Nguyễn Tất Thành - Lê Văn Linh",
    "loc": {
      "type": "Point",
      "coordinates": [106.70734584331512, 10.764345088020589]
    },
    "values": {"ip": "181.1.1.88"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7893bfd3d90017e8f1e1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7903bfd3d90017e8f211",
    "id": "TTH 191",
    "name": "Hậu Giang -  Hẻm 491",
    "loc": {
      "type": "Point",
      "coordinates": [106.6366696357727, 10.74839230354347]
    },
    "values": {"ip": "181.1.1.90"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7903bfd3d90017e8f211",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7938bfd3d90017e8f226",
    "id": "TTH 192",
    "name": "Quốc Lộ 1- Công ty Pouyen 3 (Cổng)",
    "loc": {
      "type": "Point",
      "coordinates": [106.59547626972198, 10.747085265643749]
    },
    "values": {"ip": "181.1.1.91"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7938bfd3d90017e8f226",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7966bfd3d90017e8f240",
    "id": "TTH 193",
    "name": "Cách Mạng Tháng Tám - Tô Hiến Thành",
    "loc": {
      "type": "Point",
      "coordinates": [106.6720962524414, 10.782879191974121]
    },
    "values": {"ip": "181.1.1.92"},
    "dist": "Quận 10",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7966bfd3d90017e8f240",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae798abfd3d90017e8f255",
    "id": "TTH 194",
    "name": "Cách Mạng Tháng Tám - Bắc Hải",
    "loc": {
      "type": "Point",
      "coordinates": [106.66462361812592, 10.786910485131086]
    },
    "values": {"ip": "181.1.1.93"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae798abfd3d90017e8f255",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae79aabfd3d90017e8f26a",
    "id": "TTH 195",
    "name": "Cách Mạng Tháng Tám - Trường Sơn",
    "loc": {
      "type": "Point",
      "coordinates": [106.66649043560028, 10.78586182714333]
    },
    "values": {"ip": "181.1.1.94"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae79aabfd3d90017e8f26a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7a08bfd3d90017e8f285",
    "id": "TTH 196.1",
    "name": "Ba Tháng Hai - Lê Hồng Phong 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.67326569557189, 10.771095913066636]
    },
    "values": {"ip": "181.1.1.95"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7a08bfd3d90017e8f285",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7a26bfd3d90017e8f29a",
    "id": "TTH 196.2",
    "name": "Ba Tháng Hai - Lê Hồng Phong 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.672922372818, 10.77113807231056]
    },
    "values": {"ip": "181.1.1.96"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7a26bfd3d90017e8f29a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7a50bfd3d90017e8f2b2",
    "id": "TTH 197",
    "name": "Ba Tháng Hai – Sư Vạn Hạnh",
    "loc": {
      "type": "Point",
      "coordinates": [106.67083024978636, 10.769778433720619]
    },
    "values": {"ip": "181.1.1.97"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7a50bfd3d90017e8f2b2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7a74bfd3d90017e8f2c7",
    "id": "TTH 198",
    "name": "Tô Hiến Thành – Sư Vạn Hạnh",
    "loc": {
      "type": "Point",
      "coordinates": [106.66554093360901, 10.777894014884904]
    },
    "values": {"ip": "181.1.1.98"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7a74bfd3d90017e8f2c7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7a9cbfd3d90017e8f303",
    "id": "TTH 199",
    "name": "Điện Biên Phủ – Cao Thắng",
    "loc": {
      "type": "Point",
      "coordinates": [106.67909145355225, 10.772729579451791]
    },
    "values": {"ip": "181.1.1.99"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7a9cbfd3d90017e8f303",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7af4bfd3d90017e8f32c",
    "id": "TTH 200.2",
    "name": "Ba Tháng Hai - Lý Thường Kiệt 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.65956497192383, 10.763612553802075]
    },
    "values": {"ip": "181.1.1.100"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7af4bfd3d90017e8f32c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7b3cbfd3d90017e8f34d",
    "id": "TTH 200.3",
    "name": "Ba Tháng Hai - Lý Thường Kiệt 3",
    "loc": {
      "type": "Point",
      "coordinates": [106.65981709957123, 10.764461028525057]
    },
    "values": {"ip": "181.1.1.101"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7b3cbfd3d90017e8f34d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7be0bfd3d90017e8f3a8",
    "id": "TTH 201.1",
    "name": "Ba Tháng Hai - Lê Đại Hành 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.65719926357269, 10.762152750086269]
    },
    "values": {"ip": "181.1.1.102"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7be0bfd3d90017e8f3a8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7c12bfd3d90017e8f3c0",
    "id": "TTH 201.2",
    "name": "Ba Tháng Hai - Lê Đại Hành 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.65659844875336, 10.762142209961533]
    },
    "values": {"ip": "181.1.1.103"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7c12bfd3d90017e8f3c0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7c53bfd3d90017e8f3d8",
    "id": "TTH 203.1",
    "name": "Lý Thường Kiệt - Tô Hiến Thành 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.65833652019501, 10.770495143199618]
    },
    "values": {"ip": "181.1.1.104"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7c53bfd3d90017e8f3d8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7c73bfd3d90017e8f3ed",
    "id": "TTH 203.2",
    "name": "Lý Thường Kiệt - Tô Hiến Thành 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.65800392627716, 10.770811338015845]
    },
    "values": {"ip": "181.1.1.105"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7c73bfd3d90017e8f3ed",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7cd3bfd3d90017e8f408",
    "id": "TTH 204",
    "name": "Lạc Long Quân - Ông Ích Khiêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.6426134109497, 10.766700779516317]
    },
    "values": {"ip": "181.1.1.106"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7cd3bfd3d90017e8f408",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7cfcbfd3d90017e8f422",
    "id": "TTH 205",
    "name": "Cách Mạng Tháng Tám – Phạm Văn Hai",
    "loc": {
      "type": "Point",
      "coordinates": [106.66068077087402, 10.789044677279122]
    },
    "values": {"ip": "181.1.1.107"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7cfcbfd3d90017e8f422",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63ae7d29bfd3d90017e8f437",
    "id": "TTH 206",
    "name": "Lý Thường Kiệt - Bắc Hải",
    "loc": {
      "type": "Point",
      "coordinates": [106.65613174438477, 10.777830777435803]
    },
    "values": {"ip": "181.1.1.134"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63ae7d29bfd3d90017e8f437",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b3c274bfd3d90017e9ab93",
    "id": "TTH 10a",
    "name": "Hồng Bàng - Phù Đổng Thiên Vương",
    "loc": {
      "type": "Point",
      "coordinates": [106.66252076625824, 10.75469551974465]
    },
    "values": {"ip": "10.0.1.170"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b3c274bfd3d90017e9ab93",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b3c2fbbfd3d90017e9abbf",
    "id": "TTH 49.1",
    "name": "Cầu Sài Gòn 1 (dạ cầu Bình Thạnh)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7243792116642, 10.798008997269626]
    },
    "values": {"ip": "181.1.1.109"},
    "dist": "Quận Bình Thạnh",
    "ptz": false,
    "angle": 240,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b3c2fbbfd3d90017e9abbf",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b3c59fbfd3d90017e9ace8",
    "id": "TTH 207",
    "name": "Vĩnh Lộc - Quách Điêu",
    "loc": {
      "type": "Point",
      "coordinates": [106.57759666442871, 10.812525059639839]
    },
    "values": {"ip": "181.1.1.149"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b3c59fbfd3d90017e9ace8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b3c9bfbfd3d90017e9b039",
    "id": "TTH 208",
    "name": "Kha Vạn Cân - Đường Số 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.74685478210449, 10.841883490311513]
    },
    "values": {"ip": "181.1.1.59"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b3c9bfbfd3d90017e9b039",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54898bfd3d90017ea77ae",
    "id": "TTH 209",
    "name": "Nguyễn Duy Trinh - Bưng Ông Thoàn",
    "loc": {
      "type": "Point",
      "coordinates": [106.79689407348633, 10.791205202047887]
    },
    "values": {"ip": "181.1.1.45"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54898bfd3d90017ea77ae",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b548c3bfd3d90017ea77c0",
    "id": "TTH 210",
    "name": "Nguyễn Duy Trinh - Nguyễn Thị Tư",
    "loc": {
      "type": "Point",
      "coordinates": [106.80694699287415, 10.792733368728047]
    },
    "values": {"ip": "181.1.1.46"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b548c3bfd3d90017ea77c0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b548ecbfd3d90017ea77d2",
    "id": "TTH 211.1",
    "name": "Nguyễn Duy Trinh - Võ Chí Công 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.79199099540709, 10.790962802481276]
    },
    "values": {"ip": "181.1.1.47"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b548ecbfd3d90017ea77d2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54909bfd3d90017ea77e4",
    "id": "TTH 211.2",
    "name": "Nguyễn Duy Trinh - Võ Chí Công 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.79290294647217, 10.790983880712217]
    },
    "values": {"ip": "181.1.1.48"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54909bfd3d90017ea77e4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54938bfd3d90017ea77f6",
    "id": "TTH 212",
    "name": "Nguyễn Duy Trinh - Lã Xuân Oai",
    "loc": {
      "type": "Point",
      "coordinates": [106.81716084480286, 10.805548584783494]
    },
    "values": {"ip": "181.1.1.49"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54938bfd3d90017ea77f6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54968bfd3d90017ea7808",
    "id": "TTH 213",
    "name": "Nguyễn Duy Trinh - Đỗ Xuân Hợp",
    "loc": {
      "type": "Point",
      "coordinates": [106.7816162109375, 10.79043584622739]
    },
    "values": {"ip": "181.1.1.50"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54968bfd3d90017ea7808",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54996bfd3d90017ea781a",
    "id": "TTH 214",
    "name": "Đỗ Xuân Hợp - Dương Đình Hội",
    "loc": {
      "type": "Point",
      "coordinates": [106.77427768707275, 10.81670875904515]
    },
    "values": {"ip": "181.1.1.51"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54996bfd3d90017ea781a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b549b8bfd3d90017ea782c",
    "id": "TTH 215",
    "name": "Đỗ Xuân Hợp - Tây Hòa",
    "loc": {
      "type": "Point",
      "coordinates": [106.76919221878052, 10.824433169045323]
    },
    "values": {"ip": "181.1.1.52"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b549b8bfd3d90017ea782c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54a04bfd3d90017ea783e",
    "id": "TTH 216",
    "name": "Lê Văn Việt - Hoàng Hữu Nam",
    "loc": {
      "type": "Point",
      "coordinates": [106.8136739730835, 10.850207862370524]
    },
    "values": {"ip": "181.1.1.53"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54a04bfd3d90017ea783e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54a48bfd3d90017ea7850",
    "id": "TTH 217",
    "name": "Lã Xuân Oai - Lò Lu",
    "loc": {
      "type": "Point",
      "coordinates": [106.80800914764404, 10.824380479337636]
    },
    "values": {"ip": "181.1.1.54"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54a48bfd3d90017ea7850",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54a70bfd3d90017ea7862",
    "id": "TTH 218",
    "name": "Lã Xuân Oai - Đường D2",
    "loc": {
      "type": "Point",
      "coordinates": [106.8044900894165, 10.830049838743976]
    },
    "values": {"ip": "181.1.1.55"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54a70bfd3d90017ea7862",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54a9ebfd3d90017ea7911",
    "id": "TTH 219",
    "name": "Nguyễn Xiển - Nguyễn Văn Tăng",
    "loc": {
      "type": "Point",
      "coordinates": [106.82869434356688, 10.842810773602949]
    },
    "values": {"ip": "181.1.1.56"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54a9ebfd3d90017ea7911",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54ad1bfd3d90017ea7974",
    "id": "TTH 220.1",
    "name": "Võ Chí Công - Liên Phường 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.79254353046417, 10.804536877081373]
    },
    "values": {"ip": "181.1.1.57"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54ad1bfd3d90017ea7974",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54aedbfd3d90017ea79c3",
    "id": "TTH 220.2",
    "name": "Võ Chí Công - Liên Phường 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.7919373512268, 10.804947883746554]
    },
    "values": {"ip": "181.1.1.58"},
    "dist": "Quận 9",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54aedbfd3d90017ea79c3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54bcdbfd3d90017ea7a82",
    "id": "TTH 222",
    "name": "Tỉnh lộ 43 - KCX Linh Trung 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.71809077262878, 10.896082579408835]
    },
    "values": {"ip": "181.1.1.60"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54bcdbfd3d90017ea7a82",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54c51bfd3d90017ea7aa0",
    "id": "TTH 223",
    "name": "Đường số 1 - Nguyễn Văn Bá",
    "loc": {
      "type": "Point",
      "coordinates": [106.76022827625275, 10.826688279850183]
    },
    "values": {"ip": "181.1.1.61"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54c51bfd3d90017ea7aa0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54c93bfd3d90017ea7ab8",
    "id": "TTH 224",
    "name": "Lê Văn Chí - Linh Trung",
    "loc": {
      "type": "Point",
      "coordinates": [106.77785038948058, 10.858900788285478]
    },
    "values": {"ip": "181.1.1.62"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54c93bfd3d90017ea7ab8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54cffbfd3d90017ea7ad0",
    "id": "TTH 225",
    "name": "Tỉnh lộ 43 - Chân cầu Gò Dưa",
    "loc": {
      "type": "Point",
      "coordinates": [106.73239231109619, 10.873051276771323]
    },
    "values": {"ip": "181.1.1.63"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54cffbfd3d90017ea7ad0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54d27bfd3d90017ea7ae5",
    "id": "TTH 226",
    "name": "Xa lộ Hà Nội - Đường D1",
    "loc": {
      "type": "Point",
      "coordinates": [106.7877745628357, 10.858194826768456]
    },
    "values": {
      "ip": "181.1.1.64",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Xa%20L%E1%BB%99%20H%C3%A0%20N%E1%BB%99i%20-%20%C4%90%C6%B0%E1%BB%9Dng%20D1&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54d27bfd3d90017ea7ae5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54d5abfd3d90017ea7afe",
    "id": "TTH 227",
    "name": "Đường số 1 - Cảng Phước Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.75588846206665, 10.826667204126831]
    },
    "values": {"ip": "181.1.1.65"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54d5abfd3d90017ea7afe",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54dcbbfd3d90017ea7ba8",
    "id": "TTH 228",
    "name": "Quốc Lộ 1 - Cổng ĐH Quốc gia TPHCM",
    "loc": {
      "type": "Point",
      "coordinates": [106.79384708404541, 10.865338658847957]
    },
    "values": {"ip": "181.1.1.66"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54dcbbfd3d90017ea7ba8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b54f70bfd3d90017ea7c86",
    "id": "TTH 49.10",
    "name": "Cầu Sài Gòn (10)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72627687454224, 10.79856140894338]
    },
    "values": {"ip": "181.1.1.118"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b54f70bfd3d90017ea7c86",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b55020bfd3d90017ea7cb7",
    "id": "TTH 231.2",
    "name": "Nút giao Mỹ Thủy (6)",
    "loc": {
      "type": "Point",
      "coordinates": [106.77515745162964, 10.770273806630767]
    },
    "values": {"ip": "181.1.1.121"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b55020bfd3d90017ea7cb7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b5503bbfd3d90017ea7ccc",
    "id": "TTH 231.3",
    "name": "Nút giao Mỹ Thủy (7)",
    "loc": {
      "type": "Point",
      "coordinates": [106.77508234977722, 10.769746814145492]
    },
    "values": {"ip": "181.1.1.122"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b5503bbfd3d90017ea7ccc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65e6abfd3d90017eaa361",
    "id": "TTH 232",
    "name": "Nguyễn Thị Định - Thân Văn Nhiếp",
    "loc": {
      "type": "Point",
      "coordinates": [106.75423622131348, 10.790330454865765]
    },
    "values": {"ip": "181.1.1.123"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65e6abfd3d90017eaa361",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65ebebfd3d90017eaa3ae",
    "id": "TTH 233.1",
    "name": "Nguyễn Hữu Cảnh - Ngô Tất Tố 2 (Dạ cầu Thủ Thiêm 1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71642780303955, 10.789144799501733]
    },
    "values": {"ip": "181.1.1.124"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65ebebfd3d90017eaa3ae",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65f33bfd3d90017eaa405",
    "id": "TTH 233.2",
    "name": "Nguyễn Hữu Cảnh - Ngô Tất Tố 3 (Nhánh chính cầu Thủ Thiêm 1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.71695351600647, 10.788797006374688]
    },
    "values": {"ip": "181.1.1.125"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65f33bfd3d90017eaa405",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65f64bfd3d90017eaa41f",
    "id": "TTH 234",
    "name": "Xô Viết Nghệ Tĩnh - Đường D5",
    "loc": {
      "type": "Point",
      "coordinates": [106.71161592006683, 10.806818483896206]
    },
    "values": {"ip": "181.1.1.126"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65f64bfd3d90017eaa41f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65f8dbfd3d90017eaa434",
    "id": "TTH 235",
    "name": "Xô Viết Nghệ Tĩnh - Phan Văn Hân (Cầu Thị Nghè)",
    "loc": {
      "type": "Point",
      "coordinates": [106.70740485191345, 10.792743907781624]
    },
    "values": {"ip": "181.1.1.127"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65f8dbfd3d90017eaa434",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65fa9bfd3d90017eaa449",
    "id": "TTH 236",
    "name": "Xô Viết Nghệ Tĩnh - Nguyễn Văn Lạc",
    "loc": {
      "type": "Point",
      "coordinates": [106.70981884002686, 10.795315425807853]
    },
    "values": {"ip": "181.1.1.128"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65fa9bfd3d90017eaa449",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b65fd8bfd3d90017eaa461",
    "id": "TTH 237",
    "name": "Lê Văn Duyệt - Vũ Huy Tấn",
    "loc": {
      "type": "Point",
      "coordinates": [106.6960859298706, 10.795652672441406]
    },
    "values": {"ip": "181.1.1.129"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b65fd8bfd3d90017eaa461",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b66035bfd3d90017eaa48e",
    "id": "TTH 239",
    "name": "Nơ Trang Long - Nguyễn Huy Lượng (Bệnh viện Ung Bướu)",
    "loc": {
      "type": "Point",
      "coordinates": [106.69502377510071, 10.805348351238072]
    },
    "values": {"ip": "181.1.1.131"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b66035bfd3d90017eaa48e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b66051bfd3d90017eaa4a3",
    "id": "TTH 240",
    "name": "Nơ Trang Long - Phan Văn Trị",
    "loc": {
      "type": "Point",
      "coordinates": [106.69548511505126, 10.811228838664457]
    },
    "values": {"ip": "181.1.1.132"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b66051bfd3d90017eaa4a3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b66089bfd3d90017eaa4bd",
    "id": "TTH 241",
    "name": "Nơ Trang Long - Chu Văn An",
    "loc": {
      "type": "Point",
      "coordinates": [106.69575333595276, 10.811407991490512]
    },
    "values": {"ip": "181.1.1.133"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b66089bfd3d90017eaa4bd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b660d8bfd3d90017eaa4d5",
    "id": "TTH 242.1",
    "name": "Cầu Tân Thuận 2 - Q7 (Q4-Q7)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72369122505188, 10.752766623083232]
    },
    "values": {"ip": "181.1.1.141"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b660d8bfd3d90017eaa4d5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b660f8bfd3d90017eaa4ea",
    "id": "TTH 242.2",
    "name": "Cầu Tân Thuận 2 - Q7 (Q7-Q4)",
    "loc": {
      "type": "Point",
      "coordinates": [106.72386288642883, 10.752650678082237]
    },
    "values": {"ip": "181.1.1.142"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b660f8bfd3d90017eaa4ea",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b6617ebfd3d90017eaa50b",
    "id": "TTH 242.3",
    "name": "Nguyễn Tất Thành - Cảng SG (Q7-Q4)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7139172554016, 10.759243661673208]
    },
    "values": {"ip": "181.1.1.143"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b6617ebfd3d90017eaa50b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b661a3bfd3d90017eaa520",
    "id": "TTH 242.4",
    "name": "Nguyễn Tất Thành - Cảng SG (Q4-Q7)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7133218050003, 10.75961256936665]
    },
    "values": {"ip": "181.1.1.144"},
    "dist": "Quận 4",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b661a3bfd3d90017eaa520",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b664d2bfd3d90017eaaa0f",
    "id": "TTH 243.1",
    "name": "CT Trung Lương - Võ Trần Chí 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.57115936279295, 10.685258028572397]
    },
    "values": {"ip": "181.1.1.153"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b664d2bfd3d90017eaaa0f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63b664edbfd3d90017eaaa24",
    "id": "TTH 243.2",
    "name": "CT Trung Lương - Võ Trần Chí 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.56688392162323, 10.684630731099254]
    },
    "values": {
      "ip": "181.1.1.150",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=TTH%20243.2%20CT%20Trung%20L%C6%B0%C6%A1ng%20-%20V%C3%B5%20Tr%E1%BA%A7n%20Ch%C3%AD%202&mp4"
    },
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63b664edbfd3d90017eaaa24",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63bd1e95bfd3d90017ec3cd5",
    "id": "TTH 244",
    "name": "Nguyễn Lương Bằng - Hoàng Quốc Việt",
    "loc": {
      "type": "Point",
      "coordinates": [106.73168420791625, 10.713110837606749]
    },
    "values": {"ip": "181.1.1.156"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63bd1e95bfd3d90017ec3cd5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63bd1f21bfd3d90017ec3d04",
    "id": "TTH 245",
    "name": "Huỳnh Tấn Phát - Phạm Hữu Lầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.73766016960144, 10.705204357796118]
    },
    "values": {"ip": "181.1.1.157"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63bd1f21bfd3d90017ec3d04",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "63bd1f48bfd3d90017ec3d19",
    "id": "TTH 246",
    "name": "Huỳnh Tấn Phát - Nguyễn Thị Thập",
    "loc": {
      "type": "Point",
      "coordinates": [106.73035383224486, 10.737524743798526]
    },
    "values": {"ip": "181.1.1.158"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=63bd1f48bfd3d90017ec3d19",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "649da419a6068200171a6c90",
    "id": "TTH 229",
    "name": "Nguyễn Chí Thanh - Ngô Quyền",
    "loc": {
      "type": "Point",
      "coordinates": [106.66560530662537, 10.759206770879036]
    },
    "values": {"ip": "181.1.2.13"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=649da419a6068200171a6c90",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "649da495a6068200171a6cb6",
    "id": "TTH 230.3",
    "name": "Mai Chí Thọ - Trần Quý Kiên (3)",
    "loc": {
      "type": "Point",
      "coordinates": [106.74000978469849, 10.781793631904456]
    },
    "values": {"ip": "10.0.1.243"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=649da495a6068200171a6cb6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "649da72ca6068200171a6dbb",
    "id": "TTH 247",
    "name": "Tôn Đức Thắng - Hàm Nghi",
    "loc": {
      "type": "Point",
      "coordinates": [106.70635342597961, 10.77107483344246]
    },
    "values": {"ip": "181.1.2.60"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=649da72ca6068200171a6dbb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "649da77ea6068200171a6dd4",
    "id": "TTH 248",
    "name": "Tôn Đức Thắng - Công trường Mê Linh",
    "loc": {
      "type": "Point",
      "coordinates": [106.70676112174988, 10.77530126857797]
    },
    "values": {"ip": "181.1.2.61"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=649da77ea6068200171a6dd4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "65e054fb6b18080018db6632",
    "id": "TTH 250",
    "name": "Lê Duẩn - Mạc Đĩnh Chi",
    "loc": {
      "type": "Point",
      "coordinates": [106.70118749141692, 10.783216452557472]
    },
    "values": {"channel": "", "ip": "10.8.82.142"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=65e054fb6b18080018db6632",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "65e0552f6b18080018db6647",
    "id": "TTH 251",
    "name": "Lê Lai - Phan Chu Trinh",
    "loc": {
      "type": "Point",
      "coordinates": [106.69788837432861, 10.771707221525785]
    },
    "values": {"channel": "", "ip": "10.8.82.144"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=65e0552f6b18080018db6647",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "65e0556b6b18080018db665e",
    "id": "TTH 252",
    "name": "Nguyễn Thái Học - Phạm Ngũ Lão",
    "loc": {
      "type": "Point",
      "coordinates": [106.69463753700256, 10.768977403461305]
    },
    "values": {"channel": "", "ip": "10.8.82.148"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=65e0556b6b18080018db665e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623df636f998a001b251e92",
    "id": "TTH 253",
    "name": "Hai Bà Trưng - Trần Cao Vân",
    "loc": {
      "type": "Point",
      "coordinates": [106.69704079627991, 10.7839015119534]
    },
    "values": {"ip": "10.8.83.10"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623df636f998a001b251e92",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e2e16f998a001b252233",
    "id": "TTH 254",
    "name": "Hai Bà Trưng - Trần Quốc Toản",
    "loc": {
      "type": "Point",
      "coordinates": [106.68938040733336, 10.78990888904981]
    },
    "values": {"ip": "10.8.83.11"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e2e16f998a001b252233",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e31e6f998a001b252250",
    "id": "TTH 255",
    "name": "Kỳ Đồng - Bà Huyện Thanh Quan",
    "loc": {
      "type": "Point",
      "coordinates": [106.6816771030426, 10.781667158631887]
    },
    "values": {"ip": "10.8.83.12"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e31e6f998a001b252250",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e3566f998a001b25226d",
    "id": "TTH 256",
    "name": "Lê Văn Sỹ - Trường Sa",
    "loc": {
      "type": "Point",
      "coordinates": [106.68093681335449, 10.786135848678958]
    },
    "values": {"ip": "10.8.83.13"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e3566f998a001b25226d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e3a26f998a001b252291",
    "id": "TTH 257",
    "name": "Lý Chính Thắng - Trần Quốc Thảo",
    "loc": {
      "type": "Point",
      "coordinates": [106.68446660041808, 10.784386322275484]
    },
    "values": {"ip": "10.8.83.14"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e3a26f998a001b252291",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e3ea6f998a001b2522ae",
    "id": "TTH 258",
    "name": "Nguyễn Đình Chiểu - Cao Thắng",
    "loc": {
      "type": "Point",
      "coordinates": [106.68213844299316, 10.770041930050843]
    },
    "values": {"ip": "10.8.83.15"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e3ea6f998a001b2522ae",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e43e6f998a001b2522cb",
    "id": "TTH 259",
    "name": "Nguyễn Thị Minh Khai - Bà Huyện Thanh Quan",
    "loc": {
      "type": "Point",
      "coordinates": [106.69062495231628, 10.774805903937924]
    },
    "values": {"ip": "10.8.83.16"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e43e6f998a001b2522cb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e4b06f998a001b2522f1",
    "id": "TTH 260",
    "name": "Nguyễn Thị Minh Khai - Nguyễn Thượng Hiền",
    "loc": {
      "type": "Point",
      "coordinates": [106.68638706207275, 10.77037920501717]
    },
    "values": {"ip": "10.8.83.17"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e4b06f998a001b2522f1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e5066f998a001b252317",
    "id": "TTH 261",
    "name": "Nguyễn Thị Minh Khai - Tôn Thất Tùng",
    "loc": {
      "type": "Point",
      "coordinates": [106.68719172477722, 10.771264550006899]
    },
    "values": {"ip": "10.8.83.18"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e5066f998a001b252317",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e5776f998a001b252337",
    "id": "TTH 262",
    "name": "Trần Quang Diệu - Trường Sa",
    "loc": {
      "type": "Point",
      "coordinates": [106.67843699455261, 10.784512794404923]
    },
    "values": {"ip": "10.8.83.19"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e5776f998a001b252337",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e5d66f998a001b25235a",
    "id": "TTH 263",
    "name": "Cách Mạng Tháng Tám - Đỗ Thị Lời",
    "loc": {
      "type": "Point",
      "coordinates": [106.67032599449156, 10.783880433226015]
    },
    "values": {"ip": "10.8.83.20"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e5d66f998a001b25235a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e61d6f998a001b252377",
    "id": "TTH 264",
    "name": "Cách Mạng Tháng Tám - Rạch Bùng Binh",
    "loc": {
      "type": "Point",
      "coordinates": [106.67858719825745, 10.779453867756652]
    },
    "values": {"ip": "10.8.83.21"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e61d6f998a001b252377",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e6706f998a001b25239b",
    "id": "TTH 265",
    "name": "Hùng Vương - Trần Nhân Tôn",
    "loc": {
      "type": "Point",
      "coordinates": [106.67504668235779, 10.761272648401206]
    },
    "values": {"ip": "10.8.83.22"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e6706f998a001b25239b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e6b86f998a001b2523b8",
    "id": "TTH 266",
    "name": "Lý Thái Tổ - Hồ Thị Kỷ",
    "loc": {
      "type": "Point",
      "coordinates": [106.676344871521, 10.766964278538435]
    },
    "values": {"ip": "10.8.83.23"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e6b86f998a001b2523b8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e7076f998a001b2523ea",
    "id": "TTH 267",
    "name": "Lý Thái Tổ - Sư Vạn Hạnh",
    "loc": {
      "type": "Point",
      "coordinates": [106.67149543762206, 10.767775854078609]
    },
    "values": {"ip": "10.8.83.24"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e7076f998a001b2523ea",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e7526f998a001b252407",
    "id": "TTH 296",
    "name": "Thành Thái - cư xá Đồng Tiến",
    "loc": {
      "type": "Point",
      "coordinates": [106.6663134098053, 10.769420078341605]
    },
    "values": {"ip": "10.8.83.25"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e7526f998a001b252407",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e7b76f998a001b25242d",
    "id": "TTH 269",
    "name": "Đinh Bộ Lĩnh - Bùi Đình Túy",
    "loc": {
      "type": "Point",
      "coordinates": [106.70926094055176, 10.808351840394893]
    },
    "values": {"ip": "10.8.83.26"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e7b76f998a001b25242d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e7f06f998a001b25244a",
    "id": "TTH 270",
    "name": "Đinh Bộ Lĩnh - Chu Văn An",
    "loc": {
      "type": "Point",
      "coordinates": [106.70917510986328, 10.810596533717474]
    },
    "values": {"ip": "10.8.83.27"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e7f06f998a001b25244a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e8406f998a001b252465",
    "id": "TTH 271",
    "name": "Phan Đăng Lưu - Hoàng Hoa Thám",
    "loc": {
      "type": "Point",
      "coordinates": [106.69235229492188, 10.803177389488075]
    },
    "values": {"ip": "10.8.83.28"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e8406f998a001b252465",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e88c6f998a001b25248b",
    "id": "TTH 272",
    "name": "Hoàng Minh Giám - Đăng Văn Sâm",
    "loc": {
      "type": "Point",
      "coordinates": [106.67603373527527, 10.811197223448751]
    },
    "values": {"ip": "10.8.83.29"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e88c6f998a001b25248b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e8da6f998a001b2524a6",
    "id": "TTH 273",
    "name": "Phan Đăng Lưu - Thích Quảng Đức",
    "loc": {
      "type": "Point",
      "coordinates": [106.68453097343445, 10.803293315026787]
    },
    "values": {"ip": "10.8.83.30"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e8da6f998a001b2524a6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623e9e96f998a001b2525ce",
    "id": "TTH 274",
    "name": "Phan Đình Phùng - Huynh Văn Bánh",
    "loc": {
      "type": "Point",
      "coordinates": [106.68192386627197, 10.795863451395165]
    },
    "values": {"ip": "10.8.83.31"},
    "dist": "Quận Phú Nhuận",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623e9e96f998a001b2525ce",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ea416f998a001b25260a",
    "id": "TTH 275",
    "name": "Phan Đình Phùng - Nguyễn Trọng Tuyển",
    "loc": {
      "type": "Point",
      "coordinates": [106.68115139007568, 10.797191355403706]
    },
    "values": {"ip": "10.8.83.32"},
    "dist": "Quận Phú Nhuận",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ea416f998a001b25260a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623eb466f998a001b252632",
    "id": "TTH 276",
    "name": "Hà Huy Giáp - An Lộc",
    "loc": {
      "type": "Point",
      "coordinates": [106.67922019958496, 10.853695599993376]
    },
    "values": {"ip": "10.8.83.33"},
    "dist": "Quận 12",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623eb466f998a001b252632",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ec376f998a001b252671",
    "id": "TTH 278",
    "name": "Tô Ký - Nguyễn Văn Quá",
    "loc": {
      "type": "Point",
      "coordinates": [106.63516759872437, 10.847489295458118]
    },
    "values": {"ip": "10.8.83.35"},
    "dist": "Quận 12",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ec376f998a001b252671",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ec826f998a001b252686",
    "id": "TTH 279",
    "name": "Nguyễn Oanh - Lê Đức Thọ",
    "loc": {
      "type": "Point",
      "coordinates": [106.67661309242249, 10.841936176939177]
    },
    "values": {"ip": "10.8.83.36"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ec826f998a001b252686",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ecc16f998a001b25269e",
    "id": "TTH 280",
    "name": "Nguyễn Oanh - Nguyễn Văn Lượng",
    "loc": {
      "type": "Point",
      "coordinates": [106.67551875114441, 10.838553676620977]
    },
    "values": {"ip": "10.8.83.37"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ecc16f998a001b25269e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ed396f998a001b2526b8",
    "id": "TTH 281",
    "name": "Nguyễn Thái Sơn - Phạm Ngũ Lão",
    "loc": {
      "type": "Point",
      "coordinates": [106.68346881866455, 10.820344420196985]
    },
    "values": {"ip": "10.8.83.38"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ed396f998a001b2526b8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ed9b6f998a001b2526cd",
    "id": "TTH 282.1",
    "name": "Vòng xoay Gò Vấp (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.68009996414185, 10.8260981590362]
    },
    "values": {"ip": "10.8.83.39"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ed9b6f998a001b2526cd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623edd26f998a001b2526f7",
    "id": "TTH 282.2",
    "name": "Vòng xoay Gò Vấp (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.67954206466675, 10.826793658444643]
    },
    "values": {"ip": "10.8.83.40"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623edd26f998a001b2526f7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ee176f998a001b25270c",
    "id": "TTH 283",
    "name": "Phan Văn Trị - Lê Đức Thọ",
    "loc": {
      "type": "Point",
      "coordinates": [106.68190240859985, 10.829417573493968]
    },
    "values": {"ip": "10.8.83.41"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ee176f998a001b25270c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ee666f998a001b252726",
    "id": "TTH 284",
    "name": "Quang Trung - Phan Huy Ích",
    "loc": {
      "type": "Point",
      "coordinates": [106.64012432098389, 10.84429652833867]
    },
    "values": {"ip": "10.8.83.42"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ee666f998a001b252726",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623eec96f998a001b25273b",
    "id": "TTH 285",
    "name": "Quang Trung - Thống Nhất",
    "loc": {
      "type": "Point",
      "coordinates": [106.66437149047852, 10.83464425946617]
    },
    "values": {"ip": "10.8.83.43"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623eec96f998a001b25273b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ef2b6f998a001b252753",
    "id": "TTH 286",
    "name": "Phan Văn Hớn - Trần Văn Mười",
    "loc": {
      "type": "Point",
      "coordinates": [106.58770322799683, 10.849828528936568]
    },
    "values": {"ip": "10.8.83.44"},
    "dist": "Huyện Hóc Môn",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ef2b6f998a001b252753",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623ef776f998a001b252768",
    "id": "TTH 287",
    "name": "Quốc Lộ 22 - Nguyễn Thị Sóc",
    "loc": {
      "type": "Point",
      "coordinates": [106.60274505615233, 10.861671934527296]
    },
    "values": {"ip": "10.8.83.45"},
    "dist": "Huyện Hóc Môn",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623ef776f998a001b252768",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623efc26f998a001b25277f",
    "id": "TTH 288",
    "name": "Tô Ký - Nguyễn Ảnh Thủ",
    "loc": {
      "type": "Point",
      "coordinates": [106.61551237106323, 10.867572388369775]
    },
    "values": {"ip": "10.8.83.46"},
    "dist": "Huyện Hóc Môn",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623efc26f998a001b25277f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f0246f998a001b252797",
    "id": "TTH 289",
    "name": "Âu Cơ - Lũy Bán Bích",
    "loc": {
      "type": "Point",
      "coordinates": [106.6382360458374, 10.795747522988904]
    },
    "values": {"ip": "10.8.83.47"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f0246f998a001b252797",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f0576f998a001b2527ac",
    "id": "TTH 290",
    "name": "Âu Cơ - Thoại Ngọc Hầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.64158344268797, 10.785925062904486]
    },
    "values": {"ip": "10.8.83.48"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f0576f998a001b2527ac",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f0b46f998a001b2527c3",
    "id": "TTH 291",
    "name": "Hòa Bình - Lũy Bán Bích",
    "loc": {
      "type": "Point",
      "coordinates": [106.63140177726746, 10.770421364361408]
    },
    "values": {"ip": "10.8.83.49"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f0b46f998a001b2527c3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f1046f998a001b2527db",
    "id": "TTH 292",
    "name": "Lũy Bán Bích - Thoại Ngọc Hầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.63612246513365, 10.782151972554702]
    },
    "values": {"ip": "10.8.83.50"},
    "dist": "Quận Tân Phú",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f1046f998a001b2527db",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f14b6f998a001b2527f0",
    "id": "TTH 293",
    "name": "Tân Kỳ Tân Quý - Lê Trọng Tấn",
    "loc": {
      "type": "Point",
      "coordinates": [106.63257122039795, 10.803757016734105]
    },
    "values": {"ip": "10.8.83.51"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f14b6f998a001b2527f0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f1996f998a001b252805",
    "id": "TTH 294",
    "name": "Mai Chí Thọ - Xa Lộ Hà Nội (3)",
    "loc": {
      "type": "Point",
      "coordinates": [106.75603866577148, 10.80919491966803]
    },
    "values": {"ip": "10.8.83.52"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f1996f998a001b252805",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f1f16f998a001b25281f",
    "id": "TTH 295",
    "name": "Phạm Văn Đồng - Đào Trinh Nhất",
    "loc": {
      "type": "Point",
      "coordinates": [106.75904273986816, 10.86506470973697]
    },
    "values": {"ip": "10.8.83.53"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f1f16f998a001b25281f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f3436f998a001b252863",
    "id": "TTH 297.1",
    "name": "Phạm Văn Đồng - Kha Vạn Cân 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.7616605758667, 10.866497671535535]
    },
    "values": {"ip": "10.8.83.54"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f3436f998a001b252863",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f36e6f998a001b252878",
    "id": "TTH 297.2",
    "name": "Phạm Văn Đồng - Kha Vạn Cân 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.76228284835815, 10.866392306931726]
    },
    "values": {"ip": "10.8.83.55"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f36e6f998a001b252878",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f3d66f998a001b252890",
    "id": "TTH 298",
    "name": "Quốc Lộ 1K - đường số 8",
    "loc": {
      "type": "Point",
      "coordinates": [106.76983594894409, 10.88228086887948]
    },
    "values": {"ip": "10.8.83.56"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f3d66f998a001b252890",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f44f6f998a001b2528aa",
    "id": "TTH 299.1",
    "name": "Võ Nguyên Giáp - Đỗ Xuân Hợp (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.76571607589722, 10.834970924310076]
    },
    "values": {"ip": "10.8.83.57"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f44f6f998a001b2528aa",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f4836f998a001b2528bf",
    "id": "TTH 299.2",
    "name": "Võ Nguyên Giáp - Đỗ Xuân Hợp (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7658019065857, 10.835497802339427]
    },
    "values": {"ip": "10.8.83.58"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f4836f998a001b2528bf",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f4df6f998a001b2528eb",
    "id": "TTH 300",
    "name": "Quốc Lộ 13 - cầu Ông Dầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.71380996704102, 10.836193279918211]
    },
    "values": {"ip": "10.8.83.59"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f4df6f998a001b2528eb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f51a6f998a001b252900",
    "id": "TTH 301",
    "name": "Quốc Lộ 13 - Nguyễn Thị Nhung",
    "loc": {
      "type": "Point",
      "coordinates": [106.7163634300232, 10.840345036692701]
    },
    "values": {"ip": "10.8.83.60"},
    "dist": "Quận Thủ Đức",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f51a6f998a001b252900",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f5876f998a001b25291a",
    "id": "TTH 302.1",
    "name": "Võ Nguyên Giáp - quay đầu An Phú (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.74593210220337, 10.8021340576256]
    },
    "values": {"ip": "10.8.83.61"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f5876f998a001b25291a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6623f5b56f998a001b25292f",
    "id": "TTH 302.2",
    "name": "Võ Nguyên Giáp - quay đầu An Phú (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.74660801887511, 10.80227106100622]
    },
    "values": {"ip": "10.8.83.62"},
    "dist": "Quận 2",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6623f5b56f998a001b25292f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a861e1afb9c00172d23ad",
    "id": "TTH 303",
    "name": "Nguyễn Hữu Thọ - Phạm Hữu Lầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.7181873321533, 10.695484375988409]
    },
    "values": {
      "ip": "10.8.83.63",
      "streamingUrl":
          "http://125.234.133.4:1984/api/stream.m3u8?src=test3&mp4=flac"
    },
    "dist": "Huyện Nhà Bè",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a861e1afb9c00172d23ad",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a86a11afb9c00172d2410",
    "id": "TTH 304",
    "name": "Tùng Thiện Vương - Cao Xuân Dục",
    "loc": {
      "type": "Point",
      "coordinates": [106.65856719017029, 10.745604300539469]
    },
    "values": {"ip": "10.8.83.64"},
    "dist": "Quận 8",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a86a11afb9c00172d2410",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a873b1afb9c00172d2483",
    "id": "TTH 305.1",
    "name": "Võ Trần Chí - Trần Văn Giàu 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.58182382583618, 10.748950955112786]
    },
    "values": {"ip": "10.8.83.65"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a873b1afb9c00172d2483",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a87641afb9c00172d24b0",
    "id": "TTH 305.2",
    "name": "Võ Trần Chí - Trần Văn Giàu 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.58087968826294, 10.74922501022156]
    },
    "values": {"ip": "10.8.83.66"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a87641afb9c00172d24b0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a87a41afb9c00172d24e9",
    "id": "TTH 306",
    "name": "Trần Văn Giàu - Tỉnh Lộ 10",
    "loc": {
      "type": "Point",
      "coordinates": [106.56967878341675, 10.761725874739577]
    },
    "values": {"ip": "10.8.83.67"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a87a41afb9c00172d24e9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a87df1afb9c00172d2522",
    "id": "TTH 307",
    "name": "Trần Văn Giàu - Nguyễn Cửu Phú",
    "loc": {
      "type": "Point",
      "coordinates": [106.58502101898192, 10.747854732189253]
    },
    "values": {"ip": "10.8.83.68"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a87df1afb9c00172d2522",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a881a1afb9c00172d2559",
    "id": "TTH 308",
    "name": "Kinh Dương Vương - Tên Lửa",
    "loc": {
      "type": "Point",
      "coordinates": [106.61497592926025, 10.73805179257537]
    },
    "values": {
      "ip": "10.8.83.69",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Kinh%20D%C6%B0%C6%A1ng%20V%C6%B0%C6%A1ng%20-%20T%C3%AAn%20L%E1%BB%ADa&mp4"
    },
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a881a1afb9c00172d2559",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a88521afb9c00172d2592",
    "id": "TTH 310",
    "name": "Kinh Dương Vương - Hồ Học Lãm",
    "loc": {
      "type": "Point",
      "coordinates": [106.60726189613342, 10.72818528702747]
    },
    "values": {"ip": "10.8.83.70"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a88521afb9c00172d2592",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a89211afb9c00172d2636",
    "id": "TTH 312",
    "name": "Quốc Lộ 1 - Dương Đình Cúc",
    "loc": {
      "type": "Point",
      "coordinates": [106.5979814529419, 10.705952846726015]
    },
    "values": {"ip": "10.8.83.72"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a89211afb9c00172d2636",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a896e1afb9c00172d2674",
    "id": "TTH 313",
    "name": "Võ Trần Chí - Trần Đại Nghĩa",
    "loc": {
      "type": "Point",
      "coordinates": [106.57742500305174, 10.730272459287301]
    },
    "values": {"ip": "10.8.83.73"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a896e1afb9c00172d2674",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a89ae1afb9c00172d26ad",
    "id": "TTH 314.1",
    "name": "Nguyễn Văn Linh - Trịnh Quang Nghị",
    "loc": {
      "type": "Point",
      "coordinates": [106.63353681564331, 10.702821831431617]
    },
    "values": {"ip": "10.8.83.74"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a89ae1afb9c00172d26ad",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a89f51afb9c00172d26ef",
    "id": "TTH 314.2",
    "name": "Nguyễn Văn Linh - Trịnh Quang Nghị 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.63465261459349, 10.702400143398902]
    },
    "values": {"ip": "10.8.83.75"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a89f51afb9c00172d26ef",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8a661afb9c00172d2762",
    "id": "TTH 315",
    "name": "Nguyễn Văn Linh - Quản Trọng Linh",
    "loc": {
      "type": "Point",
      "coordinates": [106.61046981811523, 10.69398734459857]
    },
    "values": {"ip": "10.8.83.76"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8a661afb9c00172d2762",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8b061afb9c00172d27d7",
    "id": "TTH 316",
    "name": "Nguyễn Văn Linh - đường số 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.6608738899231, 10.723272996482265]
    },
    "values": {"ip": "10.8.83.77"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8b061afb9c00172d27d7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8b9e1afb9c00172d284d",
    "id": "TTH 317.1",
    "name": "đường dẫn cao tốc Thành Phố Hồ Chí Minh - Trung Lương - Tân Túc 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.58578276634216, 10.688283798182258]
    },
    "values": {"ip": "10.8.83.78"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8b9e1afb9c00172d284d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8c381afb9c00172d28b6",
    "id": "TTH 318",
    "name": "Dương Bá Trạc - đường 9A",
    "loc": {
      "type": "Point",
      "coordinates": [106.68958425521849, 10.73885290495532]
    },
    "values": {"ip": "10.8.83.79"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8c381afb9c00172d28b6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8c931afb9c00172d2901",
    "id": "TTH 319",
    "name": "Huỳnh Tấn Phát - Hoàng Quốc Việt",
    "loc": {
      "type": "Point",
      "coordinates": [106.73694133758544, 10.714333688056662]
    },
    "values": {"ip": "10.8.83.80"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8c931afb9c00172d2901",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8cc51afb9c00172d2938",
    "id": "TTH 320",
    "name": "Huỳnh Tấn Phát - Phú Thuận",
    "loc": {
      "type": "Point",
      "coordinates": [106.73200607299803, 10.73079952071083]
    },
    "values": {"ip": "10.8.83.81"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8cc51afb9c00172d2938",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8cfe1afb9c00172d296e",
    "id": "TTH 321",
    "name": "Huỳnh Tấn Phát - Trần Trọng Cung",
    "loc": {
      "type": "Point",
      "coordinates": [106.72958135604858, 10.743343311333486]
    },
    "values": {"ip": "10.8.83.82"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8cfe1afb9c00172d296e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8d821afb9c00172d29c8",
    "id": "TTH 322",
    "name": "Nguyễn Thị Thập - Tân Mỹ",
    "loc": {
      "type": "Point",
      "coordinates": [106.71831607818604, 10.738199366068127]
    },
    "values": {"ip": "10.8.83.83"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8d821afb9c00172d29c8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8ddd1afb9c00172d2a0f",
    "id": "TTH 323.1",
    "name": "Nguyễn Văn Linh - cầu Tân Thuận 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.7250645160675, 10.752102573837988]
    },
    "values": {"ip": "10.8.83.84"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8ddd1afb9c00172d2a0f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8e121afb9c00172d2a3f",
    "id": "TTH 323.2",
    "name": "Huỳnh Tấn Phát - cầu Tân Thuận 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.72386825084685, 10.755422805447822]
    },
    "values": {"ip": "10.8.83.85"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8e121afb9c00172d2a3f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8e641afb9c00172d2a7e",
    "id": "TTH 324.1",
    "name": "Nguyễn Văn Linh - Nguyễn Thị Thập 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.72123432159424, 10.73793584192334]
    },
    "values": {"ip": "10.8.83.86"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8e641afb9c00172d2a7e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8eb41afb9c00172d2aba",
    "id": "TTH 324.2",
    "name": "Nguyễn Văn Linh - Nguyễn Thị Thập 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.72182440757751, 10.737999087739055]
    },
    "values": {"ip": "10.8.83.92"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8eb41afb9c00172d2aba",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8ef41afb9c00172d2af2",
    "id": "TTH 325",
    "name": "Lê Văn Lương - Đường số 15",
    "loc": {
      "type": "Point",
      "coordinates": [106.70432567596436, 10.744987668798736]
    },
    "values": {"ip": "10.8.83.87"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8ef41afb9c00172d2af2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8f3a1afb9c00172d2b31",
    "id": "TTH 326",
    "name": "Nguyễn Hữu Thọ - Đường số 15",
    "loc": {
      "type": "Point",
      "coordinates": [106.70160055160522, 10.744523876574167]
    },
    "values": {"ip": "10.8.83.88"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8f3a1afb9c00172d2b31",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8f701afb9c00172d2b5e",
    "id": "TTH 327",
    "name": "Nguyễn Thị Thập - Lê Văn Lương",
    "loc": {
      "type": "Point",
      "coordinates": [106.7035961151123, 10.739928078758016]
    },
    "values": {"ip": "10.8.83.89"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8f701afb9c00172d2b5e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a8fd41afb9c00172d2bac",
    "id": "TTH 328",
    "name": "Nguyễn Lương Bằng - Phạm Hữu Lầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.73237085342407, 10.704540204099231]
    },
    "values": {"ip": "10.8.83.90"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a8fd41afb9c00172d2bac",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662a902a1afb9c00172d2bed",
    "id": "TTH 329",
    "name": "Quốc Lộ 1 - Hưng Nhơn",
    "loc": {
      "type": "Point",
      "coordinates": [106.59907579421997, 10.71140305543971]
    },
    "values": {"ip": "10.8.83.91"},
    "dist": "Huyện Bình Chánh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662a902a1afb9c00172d2bed",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4d781afb9c00172d8571",
    "id": "TTH 330",
    "name": "An Dương Vương - Lê Hồng Phong",
    "loc": {
      "type": "Point",
      "coordinates": [106.67756795883179, 10.75891164436319]
    },
    "values": {"ip": "10.8.82.192"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4d781afb9c00172d8571",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4de41afb9c00172d85c5",
    "id": "TTH 331",
    "name": "Hải Thượng Lãn Ông - Châu Văn Liêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.65899634361267, 10.750985281333568]
    },
    "values": {"ip": "10.8.82.193"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4de41afb9c00172d85c5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4e201afb9c00172d85f9",
    "id": "TTH 332",
    "name": "Hồng Bàng - Tạ Uyên",
    "loc": {
      "type": "Point",
      "coordinates": [106.65382504463196, 10.753725802746075]
    },
    "values": {"ip": "10.8.82.194"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4e201afb9c00172d85f9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4e581afb9c00172d862f",
    "id": "TTH 333",
    "name": "Lê Hồng Phong - Trần Phú",
    "loc": {
      "type": "Point",
      "coordinates": [106.67709589004515, 10.76041889461084]
    },
    "values": {"ip": "10.8.82.195"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4e581afb9c00172d862f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4e8e1afb9c00172d865c",
    "id": "TTH 334",
    "name": "Lý Thường Kiệt - Nguyễn Chí Thanh",
    "loc": {
      "type": "Point",
      "coordinates": [106.66148543357849, 10.758426793031518]
    },
    "values": {"ip": "10.8.82.196"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4e8e1afb9c00172d865c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4ecb1afb9c00172d8692",
    "id": "TTH 335",
    "name": "Nguyễn Chí Thanh - Thuận Kiều",
    "loc": {
      "type": "Point",
      "coordinates": [106.65800929069519, 10.757678434011058]
    },
    "values": {"ip": "10.8.82.197"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4ecb1afb9c00172d8692",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4efc1afb9c00172d86bc",
    "id": "TTH 336",
    "name": "Trần Hưng Đạo - Trần Phú",
    "loc": {
      "type": "Point",
      "coordinates": [106.6678476333618, 10.752566354417159]
    },
    "values": {"ip": "10.8.82.198"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4efc1afb9c00172d86bc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4f411afb9c00172d86fc",
    "id": "TTH 337",
    "name": "Hậu Giang - Minh Phụng",
    "loc": {
      "type": "Point",
      "coordinates": [106.64236128330231, 10.74978366024954]
    },
    "values": {"ip": "10.8.82.199"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4f411afb9c00172d86fc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4f7e1afb9c00172d872e",
    "id": "TTH 338",
    "name": "Hậu Giang - Nguyễn Văn Luông",
    "loc": {
      "type": "Point",
      "coordinates": [106.63510322570801, 10.748097166447916]
    },
    "values": {"ip": "10.8.82.200"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4f7e1afb9c00172d872e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b4faa1afb9c00172d875e",
    "id": "TTH 339",
    "name": "Tháp Mười - Phạm Đình Hổ",
    "loc": {
      "type": "Point",
      "coordinates": [106.64947986602783, 10.74972568718151]
    },
    "values": {"ip": "10.8.82.201"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b4faa1afb9c00172d875e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b50261afb9c00172d87b2",
    "id": "TTH 340",
    "name": "Dương Bá Trạc - Đường số 9",
    "loc": {
      "type": "Point",
      "coordinates": [106.6881787776947, 10.74207841488251]
    },
    "values": {"ip": "10.8.82.202"},
    "dist": "Quận 8",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b50261afb9c00172d87b2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b50571afb9c00172d87df",
    "id": "TTH 341",
    "name": "Quốc Lộ 50 - Bùi Minh Trực",
    "loc": {
      "type": "Point",
      "coordinates": [106.65623903274536, 10.737514202813614]
    },
    "values": {"ip": "10.8.82.203"},
    "dist": "Quận 8",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b50571afb9c00172d87df",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b50841afb9c00172d880d",
    "id": "TTH 342",
    "name": "Tùng Thiện Vương - Xóm Củi",
    "loc": {
      "type": "Point",
      "coordinates": [106.66056275367737, 10.746695261303193]
    },
    "values": {"ip": "10.8.82.204"},
    "dist": "Quận 8",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b50841afb9c00172d880d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b50c11afb9c00172d8843",
    "id": "TTH 343",
    "name": "An Dương Vương - Đường số 7",
    "loc": {
      "type": "Point",
      "coordinates": [106.62408471107483, 10.751744197447632]
    },
    "values": {"ip": "10.8.82.205"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b50c11afb9c00172d8843",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b50e51afb9c00172d886a",
    "id": "TTH 344",
    "name": "Bà Hom - An Dương Vương",
    "loc": {
      "type": "Point",
      "coordinates": [106.62461042404175, 10.75597090365959]
    },
    "values": {"ip": "10.8.82.206"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b50e51afb9c00172d886a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b51201afb9c00172d889a",
    "id": "TTH 345",
    "name": "Hương Lộ 2 - Mã Lò",
    "loc": {
      "type": "Point",
      "coordinates": [106.60413980484009, 10.765446521012159]
    },
    "values": {"ip": "10.8.82.207"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b51201afb9c00172d889a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b51761afb9c00172d88ef",
    "id": "TTH 346",
    "name": "Hương Lộ 3 - Đường kênh 19/5",
    "loc": {
      "type": "Point",
      "coordinates": [106.61006212234497, 10.802956076971686]
    },
    "values": {"ip": "10.8.82.208"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b51761afb9c00172d88ef",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b51a41afb9c00172d8926",
    "id": "TTH 347",
    "name": "Lê Văn Quới - Mã Lò",
    "loc": {
      "type": "Point",
      "coordinates": [106.6010069847107, 10.77639739169272]
    },
    "values": {"ip": "10.8.82.209"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b51a41afb9c00172d8926",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b51d21afb9c00172d89bf",
    "id": "TTH 348",
    "name": "Tên Lửa - Đường số 7",
    "loc": {
      "type": "Point",
      "coordinates": [106.61025524139404, 10.752197438105355]
    },
    "values": {"ip": "10.8.82.210"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b51d21afb9c00172d89bf",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b52131afb9c00172d8a23",
    "id": "TTH 349",
    "name": "Tỉnh lộ 10 - Mã Lò",
    "loc": {
      "type": "Point",
      "coordinates": [106.60698294639587, 10.758173826809852]
    },
    "values": {"ip": "10.8.82.211"},
    "dist": "Quận Bình Tân",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b52131afb9c00172d8a23",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b52a31afb9c00172d8b01",
    "id": "TTH 350",
    "name": "Lê Đức Thọ - Hẻm 688",
    "loc": {
      "type": "Point",
      "coordinates": [106.67060494422913, 10.846467192201999]
    },
    "values": {"ip": "10.8.82.212"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b52a31afb9c00172d8b01",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b54711afb9c00172d8d4f",
    "id": "TTH 351",
    "name": "90 Nguyễn Thái Sơn",
    "loc": {
      "type": "Point",
      "coordinates": [106.68009996414185, 10.816087003883482]
    },
    "values": {"ip": "10.8.82.213"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b54711afb9c00172d8d4f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b54bb1afb9c00172d8dbb",
    "id": "TTH 352",
    "name": "Phạm Văn Chiêu - Đường số 59",
    "loc": {
      "type": "Point",
      "coordinates": [106.65262341499329, 10.850207862370524]
    },
    "values": {"ip": "10.8.82.214"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b54bb1afb9c00172d8dbb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b55111afb9c00172d8e2e",
    "id": "TTH 353",
    "name": "Quang Trung - Phạm Văn Chiêu",
    "loc": {
      "type": "Point",
      "coordinates": [106.64072513580322, 10.844644257104683]
    },
    "values": {"ip": "10.8.82.215"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b55111afb9c00172d8e2e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b558c1afb9c00172d8ed2",
    "id": "TTH 354",
    "name": "625 Quang Trung",
    "loc": {
      "type": "Point",
      "coordinates": [106.66349172592163, 10.835128987816251]
    },
    "values": {"ip": "10.8.82.216"},
    "dist": "Quận Gò Vấp",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b558c1afb9c00172d8ed2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b56c51afb9c00172d9071",
    "id": "TTH 355",
    "name": "Bạch Đằng - Đặng Văn Sâm",
    "loc": {
      "type": "Point",
      "coordinates": [106.67174220085144, 10.814648531492336]
    },
    "values": {"ip": "10.8.82.217"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b56c51afb9c00172d9071",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b571d1afb9c00172d9083",
    "id": "TTH 356",
    "name": "Cách Mạng Tháng Tám - Phạm Văn Hai (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.66018187999725, 10.789292347979542]
    },
    "values": {"ip": "10.8.82.218"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b571d1afb9c00172d9083",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b57471afb9c00172d9095",
    "id": "TTH 357",
    "name": "Cộng Hòa - Ấp Bắc",
    "loc": {
      "type": "Point",
      "coordinates": [106.64157271385193, 10.802397525609766]
    },
    "values": {"ip": "10.8.82.219"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b57471afb9c00172d9095",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b57711afb9c00172d90a7",
    "id": "TTH 358",
    "name": "Cộng Hòa - Đường A4",
    "loc": {
      "type": "Point",
      "coordinates": [106.64989829063416, 10.801712508370132]
    },
    "values": {"ip": "10.8.82.220"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b57711afb9c00172d90a7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b57ec1afb9c00172d90e3",
    "id": "TTH 359",
    "name": "Cộng Hòa - Hoàng Hoa Thám",
    "loc": {
      "type": "Point",
      "coordinates": [106.64838552474976, 10.801828434474384]
    },
    "values": {"ip": "10.8.82.221"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b57ec1afb9c00172d90e3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b58401afb9c00172d90f5",
    "id": "TTH 360",
    "name": "Hoàng Văn Thụ - Bùi Thị Xuân",
    "loc": {
      "type": "Point",
      "coordinates": [106.66182339191437, 10.800648093866688]
    },
    "values": {"ip": "10.8.82.222"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b58401afb9c00172d90f5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b58791afb9c00172d9107",
    "id": "TTH 361",
    "name": "255 Hoàng Văn Thụ",
    "loc": {
      "type": "Point",
      "coordinates": [106.66430175304413, 10.800521628526434]
    },
    "values": {"ip": "10.8.82.223"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b58791afb9c00172d9107",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b58bd1afb9c00172d9119",
    "id": "TTH 362",
    "name": "Lê Văn Sỹ - Đặng Văn Ngữ",
    "loc": {
      "type": "Point",
      "coordinates": [106.66899561882018, 10.79375565520437]
    },
    "values": {"ip": "10.8.82.224"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b58bd1afb9c00172d9119",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b59291afb9c00172d912b",
    "id": "TTH 363",
    "name": "Lê Văn Sỹ - Nguyễn Trọng Tuyển",
    "loc": {
      "type": "Point",
      "coordinates": [106.66256904602051, 10.798751108171771]
    },
    "values": {"ip": "10.8.82.225"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b59291afb9c00172d912b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5a401afb9c00172d91fc",
    "id": "TTH 364",
    "name": "Trường Chinh - Nguyễn Hồng Đào",
    "loc": {
      "type": "Point",
      "coordinates": [106.6437292098999, 10.798023927145682]
    },
    "values": {"ip": "10.8.82.226"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5a401afb9c00172d91fc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5a9c1afb9c00172d9240",
    "id": "TTH 365",
    "name": "Trường Chinh - Nguyễn Thái Bình",
    "loc": {
      "type": "Point",
      "coordinates": [106.65014505386353, 10.794662009378262]
    },
    "values": {"ip": "10.8.82.227"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5a9c1afb9c00172d9240",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5adc1afb9c00172d925b",
    "id": "TTH 366.1",
    "name": "Trường Chinh - Phan Huy Ích 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.62920236587524, 10.823579594640108]
    },
    "values": {"ip": "10.8.82.228"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5adc1afb9c00172d925b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5afe1afb9c00172d9284",
    "id": "TTH 366.2",
    "name": "Trường Chinh - Phan Huy Ích 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.62981390953064, 10.822726017803706]
    },
    "values": {"ip": "10.8.82.229"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5afe1afb9c00172d9284",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5b271afb9c00172d9296",
    "id": "TTH 367",
    "name": "Trường Chinh - Tân Hải",
    "loc": {
      "type": "Point",
      "coordinates": [106.64021015167236, 10.799941995035589]
    },
    "values": {"ip": "10.8.82.230"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5b271afb9c00172d9296",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5b481afb9c00172d92a8",
    "id": "TTH 368",
    "name": "Trường Chinh - Trương Công Định",
    "loc": {
      "type": "Point",
      "coordinates": [106.64193749427795, 10.799046195622289]
    },
    "values": {"ip": "10.8.82.231"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5b481afb9c00172d92a8",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5b8c1afb9c00172d92ca",
    "id": "TTH 369",
    "name": "Bình Long - Lê Thúc Hoạch",
    "loc": {
      "type": "Point",
      "coordinates": [106.61720752716063, 10.788443943243315]
    },
    "values": {"ip": "10.8.82.232"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5b8c1afb9c00172d92ca",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5bc31afb9c00172d92e2",
    "id": "TTH 370",
    "name": "Lê Trọng Tấn - Đường Kênh 19/5",
    "loc": {
      "type": "Point",
      "coordinates": [106.61508321762085, 10.809342458297316]
    },
    "values": {"ip": "10.8.82.233"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5bc31afb9c00172d92e2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5be91afb9c00172d939b",
    "id": "TTH 371",
    "name": "Lê Trọng Tấn - Tây Thạnh",
    "loc": {
      "type": "Point",
      "coordinates": [106.61877393722534, 10.808246455319214]
    },
    "values": {"ip": "10.8.82.234"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5be91afb9c00172d939b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5c141afb9c00172d93d7",
    "id": "TTH 372",
    "name": "Tân Kỳ Tân Quý - Bình Long",
    "loc": {
      "type": "Point",
      "coordinates": [106.6137421131134, 10.79658009873194]
    },
    "values": {"ip": "10.8.82.235"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5c141afb9c00172d93d7",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b5c981afb9c00172d94c0",
    "id": "TTH 373",
    "name": "Tân Kỳ Tân Quý - Tân Quý",
    "loc": {
      "type": "Point",
      "coordinates": [106.61931037902832, 10.799436132165837]
    },
    "values": {"ip": "10.8.82.236"},
    "dist": "Quận Tân Phú",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b5c981afb9c00172d94c0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b7ce71afb9c00172dc676",
    "id": "TTH 374",
    "name": "Cách Mạng Tháng Tám - Bùi Thị Xuân",
    "loc": {
      "type": "Point",
      "coordinates": [106.69106483459473, 10.77264526140365]
    },
    "values": {"ip": "10.8.82.140"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b7ce71afb9c00172dc676",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b7d0c1afb9c00172dc6a6",
    "id": "TTH 375",
    "name": "Cống Quỳnh - Bùi Viện",
    "loc": {
      "type": "Point",
      "coordinates": [106.69013142585754, 10.765277880815121]
    },
    "values": {"ip": "10.8.82.141"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b7d0c1afb9c00172dc6a6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b7d8a1afb9c00172dc71f",
    "id": "TTH 376",
    "name": "Lê Lai - Phạm Hồng Thái",
    "loc": {
      "type": "Point",
      "coordinates": [106.69591426849365, 10.771222390780672]
    },
    "values": {"ip": "10.8.82.143"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b7d8a1afb9c00172dc71f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b7f251afb9c00172dc8bc",
    "id": "TTH 377",
    "name": "Nam Kỳ Khởi Nghĩa - Nguyễn Du",
    "loc": {
      "type": "Point",
      "coordinates": [106.69799566268921, 10.776787357607532]
    },
    "values": {"ip": "10.8.82.145"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b7f251afb9c00172dc8bc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b7f9f1afb9c00172dca50",
    "id": "TTH 379",
    "name": "Nguyễn Đình Chiểu - Nguyễn Bỉnh Khiêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.70147180557251, 10.790467463628659]
    },
    "values": {"ip": "10.8.82.147"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b7f9f1afb9c00172dca50",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b80051afb9c00172dcaf6",
    "id": "TTH 380",
    "name": "Nguyễn Trãi - Nguyễn Cư Trinh",
    "loc": {
      "type": "Point",
      "coordinates": [106.68658018112183, 10.76252692427571]
    },
    "values": {"ip": "10.8.82.149"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b80051afb9c00172dcaf6",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b80721afb9c00172dcb28",
    "id": "TTH 381",
    "name": "Nguyễn Văn Thủ - Trần Doãn Khanh",
    "loc": {
      "type": "Point",
      "coordinates": [106.69774889945984, 10.788633648857969]
    },
    "values": {"ip": "10.8.82.150"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b80721afb9c00172dcb28",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b80b91afb9c00172dcb5b",
    "id": "TTH 382",
    "name": "Nút giao Ngã sáu Phù Đổng 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.6930228471756, 10.771570204220417]
    },
    "values": {"ip": "10.8.82.151"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b80b91afb9c00172dcb5b",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b80e81afb9c00172dcbec",
    "id": "TTH 383",
    "name": "Cách Mạng Tháng Tám - Sương Nguyệt Anh",
    "loc": {
      "type": "Point",
      "coordinates": [106.6900509595871, 10.773035232178387]
    },
    "values": {"ip": "10.8.82.152"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b80e81afb9c00172dcbec",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b811d1afb9c00172dcc1d",
    "id": "TTH 384",
    "name": "Trần Hưng Đạo - Nguyễn Cư Trinh",
    "loc": {
      "type": "Point",
      "coordinates": [106.69286727905272, 10.76501438031831]
    },
    "values": {"ip": "10.8.82.153"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b811d1afb9c00172dcc1d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b81721afb9c00172dcc44",
    "id": "TTH 385",
    "name": "Đinh Tiên Hoàng - Trần Quang Khải",
    "loc": {
      "type": "Point",
      "coordinates": [106.69607520103455, 10.792743907781624]
    },
    "values": {"ip": "10.8.82.154"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b81721afb9c00172dcc44",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b81a31afb9c00172dcc65",
    "id": "TTH 386",
    "name": "Nam Kỳ Khởi Nghĩa - Võ Văn Tần",
    "loc": {
      "type": "Point",
      "coordinates": [106.69390797615051, 10.780539436267752]
    },
    "values": {"ip": "10.8.82.155"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b81a31afb9c00172dcc65",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b81eb1afb9c00172dcc85",
    "id": "TTH 387",
    "name": "Nguyễn Thị Minh Khai - Nguyễn Bỉnh Khiêm 2",
    "loc": {
      "type": "Point",
      "coordinates": [106.70393943786621, 10.788233159086664]
    },
    "values": {"ip": "10.8.82.156"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b81eb1afb9c00172dcc85",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b82761afb9c00172dcda3",
    "id": "TTH 388",
    "name": "Trần Quang Khải - Trần Nguyên Đán",
    "loc": {
      "type": "Point",
      "coordinates": [106.69414401054382, 10.792359232086644]
    },
    "values": {"ip": "10.8.82.157"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b82761afb9c00172dcda3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b82a61afb9c00172dcdfd",
    "id": "TTH 389",
    "name": "Trần Quang Khải - Trần Nhật Duật",
    "loc": {
      "type": "Point",
      "coordinates": [106.68938040733336, 10.791647844230368]
    },
    "values": {"ip": "10.8.82.158"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b82a61afb9c00172dcdfd",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b82da1afb9c00172dce94",
    "id": "TTH 390",
    "name": "Hai Bà Trưng - Nguyễn Hữu Cầu",
    "loc": {
      "type": "Point",
      "coordinates": [106.69012069702148, 10.789371391777161]
    },
    "values": {"ip": "10.8.82.159"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b82da1afb9c00172dce94",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b830e1afb9c00172dcf50",
    "id": "TTH 391",
    "name": "Cách Mạng Tháng Tám - Võ Văn Tần",
    "loc": {
      "type": "Point",
      "coordinates": [106.68801784515381, 10.774342157578799]
    },
    "values": {"ip": "10.8.82.160"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b830e1afb9c00172dcf50",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b83381afb9c00172dcf88",
    "id": "TTH 392",
    "name": "Hai Bà Trưng - Nguyễn Đình Chiểu",
    "loc": {
      "type": "Point",
      "coordinates": [106.69595718383789, 10.784691963163917]
    },
    "values": {"ip": "10.8.82.161"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b83381afb9c00172dcf88",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b83ff1afb9c00172dcffb",
    "id": "TTH 394",
    "name": "Lê Duẩn - Phạm Ngọc Thạch",
    "loc": {
      "type": "Point",
      "coordinates": [106.69818878173828, 10.780507817822805]
    },
    "values": {"ip": "10.8.82.163"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b83ff1afb9c00172dcffb",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b843d1afb9c00172dd02d",
    "id": "TTH 395",
    "name": "Lê Thánh Tôn - Đồng Khởi",
    "loc": {
      "type": "Point",
      "coordinates": [106.70182585716248, 10.777198402214083]
    },
    "values": {"ip": "10.8.82.164"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b843d1afb9c00172dd02d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b84771afb9c00172dd076",
    "id": "TTH 396",
    "name": "Nguyễn Du - Công xã Paris",
    "loc": {
      "type": "Point",
      "coordinates": [106.70001268386841, 10.779032286696667]
    },
    "values": {"ip": "10.8.82.165"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b84771afb9c00172dd076",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b84c11afb9c00172dd0b5",
    "id": "TTH 397",
    "name": "Nguyễn Thị Minh Khai - Phạm Ngọc Thạch",
    "loc": {
      "type": "Point",
      "coordinates": [106.69693350791931, 10.781783092467101]
    },
    "values": {"ip": "10.8.82.166"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b84c11afb9c00172dd0b5",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b85031afb9c00172dd0dc",
    "id": "TTH 398",
    "name": "Lê Lợi - Phan Bội Châu",
    "loc": {
      "type": "Point",
      "coordinates": [106.69893980026245, 10.772307988974998]
    },
    "values": {"ip": "10.8.82.167"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b85031afb9c00172dd0dc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b85481afb9c00172dd0f1",
    "id": "TTH 399",
    "name": "Võ Văn Kiệt - Pasteur",
    "loc": {
      "type": "Point",
      "coordinates": [106.7030918598175, 10.76871917614739]
    },
    "values": {"ip": "10.8.82.168"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b85481afb9c00172dd0f1",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b857b1afb9c00172dd106",
    "id": "TTH 400",
    "name": "Điện Biên Phủ - Nguyễn Bỉnh Khiêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.69973909854889, 10.792085216222851]
    },
    "values": {"ip": "10.8.82.169"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b857b1afb9c00172dd106",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b85bf1afb9c00172dd149",
    "id": "TTH 401",
    "name": "Nam Kỳ Khởi Nghĩa - Hàm Nghi",
    "loc": {
      "type": "Point",
      "coordinates": [106.7011284828186, 10.770969435299474]
    },
    "values": {"ip": "10.8.82.170"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b85bf1afb9c00172dd149",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b85f51afb9c00172dd1c2",
    "id": "TTH 402",
    "name": "Nguyễn Thị Nghĩa - Lê Lai",
    "loc": {
      "type": "Point",
      "coordinates": [106.6941976547241, 10.769841672860895]
    },
    "values": {"ip": "10.8.82.171"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b85f51afb9c00172dd1c2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b862a1afb9c00172dd1ff",
    "id": "TTH 403",
    "name": "Hàm Nghi - Phó Đức Chính",
    "loc": {
      "type": "Point",
      "coordinates": [106.6995245218277, 10.771174961644146]
    },
    "values": {"ip": "10.8.82.172"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b862a1afb9c00172dd1ff",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b86551afb9c00172dd227",
    "id": "TTH 404",
    "name": "Trần Hưng Đạo - Calmette",
    "loc": {
      "type": "Point",
      "coordinates": [106.69746994972229, 10.77020529765982]
    },
    "values": {"ip": "10.8.82.173"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b86551afb9c00172dd227",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b867b1afb9c00172dd250",
    "id": "TTH 405",
    "name": "Trần Hưng Đạo - Ký Con",
    "loc": {
      "type": "Point",
      "coordinates": [106.69667601585388, 10.76929886980811]
    },
    "values": {"ip": "10.8.82.174"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b867b1afb9c00172dd250",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b86c41afb9c00172dd31c",
    "id": "TTH 406",
    "name": "Trần Quang Khải - Trần Khắc Chân",
    "loc": {
      "type": "Point",
      "coordinates": [106.69105410575865, 10.791890243244568]
    },
    "values": {"ip": "10.8.82.175"},
    "dist": "Quận 1",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b86c41afb9c00172dd31c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b872d1afb9c00172dd36a",
    "id": "TTH 407",
    "name": "Lê Văn Sỹ - Trần Quang Diệu",
    "loc": {
      "type": "Point",
      "coordinates": [106.67788982391357, 10.787811590330069]
    },
    "values": {"ip": "10.8.82.176"},
    "dist": "Quận 3",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b872d1afb9c00172dd36a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "662b87551afb9c00172dd43a",
    "id": "TTH 408",
    "name": "Trần Quốc Thảo - Kỳ Đồng",
    "loc": {
      "type": "Point",
      "coordinates": [106.68310403823853, 10.784897480138408]
    },
    "values": {"ip": "10.8.82.177"},
    "dist": "Quận 3",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=662b87551afb9c00172dd43a",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "665861d864f11e00173c73a9",
    "id": "TTH 309",
    "name": "Huỳnh Tấn Phát - Cầu Tân Thuận 1",
    "loc": {
      "type": "Point",
      "coordinates": [106.72337472438812, 10.755470237063209]
    },
    "values": {"ip": "10.8.83.85"},
    "dist": "Quận 7",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=665861d864f11e00173c73a9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c158779f740018673eb4",
    "id": "TTH 409",
    "name": "Hùng Vương - Lê Hồng Phong",
    "loc": {
      "type": "Point",
      "coordinates": [106.67644143104553, 10.762252881252905]
    },
    "values": {"ip": "10.8.82.178"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c158779f740018673eb4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c190779f740018673ed4",
    "id": "TTH 410",
    "name": "Nguyễn Trãi - Trần Phú",
    "loc": {
      "type": "Point",
      "coordinates": [106.67188167572021, 10.75507497337378]
    },
    "values": {"ip": "10.8.82.179"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c190779f740018673ed4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c1bf779f740018673ef2",
    "id": "TTH 411",
    "name": "An Dương Vương - Trần Phú",
    "loc": {
      "type": "Point",
      "coordinates": [106.67448878288269, 10.757741675690259]
    },
    "values": {"ip": "10.8.82.180"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c1bf779f740018673ef2",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c1f2779f740018673f0d",
    "id": "TTH 412",
    "name": "An Dương Vương - Nguyễn Văn Cừ",
    "loc": {
      "type": "Point",
      "coordinates": [106.68317914009093, 10.761104005868816]
    },
    "values": {"ip": "10.8.82.181"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c1f2779f740018673f0d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c22f779f740018673f6e",
    "id": "TTH 413.2",
    "name": "Vòng xoay Phú Lâm (2)",
    "loc": {
      "type": "Point",
      "coordinates": [106.63392305374146, 10.753630938959278]
    },
    "values": {"ip": "10.8.82.182"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c22f779f740018673f6e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c311779f740018674083",
    "id": "TTH 413.1",
    "name": "Vòng xoay Phú Lâm (1)",
    "loc": {
      "type": "Point",
      "coordinates": [106.63491010665894, 10.754337146434397]
    },
    "values": {"ip": "10.8.82.183"},
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c311779f740018674083",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c34d779f74001867409e",
    "id": "TTH 414",
    "name": "Ba Tháng Hai - Thành Thái",
    "loc": {
      "type": "Point",
      "coordinates": [106.66682839393616, 10.768197450898993]
    },
    "values": {"ip": "10.8.82.184"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c34d779f74001867409e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c370779f7400186740b3",
    "id": "TTH 415",
    "name": "Thành Thái - Tô Hiến Thành",
    "loc": {
      "type": "Point",
      "coordinates": [106.66351318359375, 10.77638685206639]
    },
    "values": {"ip": "10.8.82.185"},
    "dist": "Quận 10",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c370779f7400186740b3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c398779f7400186740e3",
    "id": "TTH 416",
    "name": "Ba Tháng Hai - Tạ Uyên",
    "loc": {
      "type": "Point",
      "coordinates": [106.6532564163208, 10.760197550640891]
    },
    "values": {"ip": "10.8.82.186"},
    "dist": "Quận 11",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c398779f7400186740e3",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c3c2779f740018674125",
    "id": "TTH 417",
    "name": "Vòng xoay Mũi Tàu Phú Lâm",
    "loc": {
      "type": "Point",
      "coordinates": [106.62409543991089, 10.745941602839128]
    },
    "values": {
      "ip": "10.8.82.187",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=V%C3%B2ng%20xoay%20M%C5%A9i%20t%C3%A0u%20Ph%C3%BA%20L%C3%A2m&mp4"
    },
    "dist": "Quận 6",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c3c2779f740018674125",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c3fa779f740018674146",
    "id": "TTH 418",
    "name": "Nguyễn Hữu Cảnh - Ung Văn Khiêm",
    "loc": {
      "type": "Point",
      "coordinates": [106.72370731830596, 10.79913050626919]
    },
    "values": {"ip": "10.8.82.188"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c3fa779f740018674146",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c426779f74001867415e",
    "id": "TTH 419",
    "name": "Điện Biên Phủ - Nguyễn Gia Trí",
    "loc": {
      "type": "Point",
      "coordinates": [106.71516180038452, 10.801080183377422]
    },
    "values": {"ip": "10.8.82.189"},
    "dist": "Quận Bình Thạnh",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c426779f74001867415e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c4a2779f74001867418c",
    "id": "TTH 420",
    "name": "Lê Văn Sỹ - Phạm Văn Hai",
    "loc": {
      "type": "Point",
      "coordinates": [106.66455388069153, 10.797117583112758]
    },
    "values": {"ip": "10.8.82.190"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c4a2779f74001867418c",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66b1c4e7779f7400186741e4",
    "id": "TTH 421",
    "name": "Hoàng Văn Thụ - Phạm Văn Hai",
    "loc": {
      "type": "Point",
      "coordinates": [106.66545510292053, 10.80040043252538]
    },
    "values": {"ip": "10.8.82.191"},
    "dist": "Quận Tân Bình",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66b1c4e7779f7400186741e4",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66f1266f538c780017c93579",
    "id": "TTH 265.2",
    "name": "Hùng Vương - Nguyễn Chí Thanh",
    "loc": {
      "type": "Point",
      "coordinates": [106.67405962944031, 10.760766720520992]
    },
    "values": {"ip": "181.1.2.10"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66f1266f538c780017c93579",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "66f126e8538c780017c9362f",
    "id": "TTH 334.2",
    "name": "Nguyễn Chí Thanh - Nguyễn Kim",
    "loc": {
      "type": "Point",
      "coordinates": [106.66274070739746, 10.758700839532171]
    },
    "values": {"ip": "181.1.2.14"},
    "dist": "Quận 5",
    "ptz": true,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=66f126e8538c780017c9362f",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792ef4f8c5ed4001b27f2c0",
    "id": "TTH 0001",
    "name": "Quốc Lộ 1 - Ba Làng",
    "loc": {
      "type": "Point",
      "coordinates": [106.5558385848999, 10.656221760029576]
    },
    "values": {
      "ip": "181.1.2.23",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20l%E1%BB%99%201%20-%20Ng%C3%A3%20t%C6%B0%20Ba%20L%C3%A0ng%201&mp4"
    },
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792ef4f8c5ed4001b27f2c0",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792efe48c5ed4001b27f336",
    "id": "TTH 0002",
    "name": "Xa Lộ Hà Nội - Cổng ĐH An ninh",
    "loc": {
      "type": "Point",
      "coordinates": [106.80803060531616, 10.87353594282426]
    },
    "values": {
      "ip": "181.1.2.30",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20l%E1%BB%99%201%20-%20%C4%90H%20An%20Ninh&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792efe48c5ed4001b27f336",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792f03d8c5ed4001b27f378",
    "id": "TTH 0003",
    "name": "Quốc Lộ 50 - Cổng chào Long An",
    "loc": {
      "type": "Point",
      "coordinates": [106.65703296661376, 10.64247232079253]
    },
    "values": {
      "ip": "181.1.2.29",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20l%E1%BB%99%2050%20-%20Long%20An&mp4"
    },
    "dist": "Huyện Bình Chánh",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792f03d8c5ed4001b27f378",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792f16e8c5ed4001b27f482",
    "id": "TTH 0005",
    "name": "Cao tốc LT-DG - Trạm thu phí Long Phước",
    "loc": {
      "type": "Point",
      "coordinates": [106.85062408447266, 10.785882905731855]
    },
    "values": {
      "ip": "181.1.2.20",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Cao%20T%E1%BB%91c%20Long%20Th%C3%A0nh%20-%20D%E1%BA%A7u%20Gi%C3%A2y&mp4"
    },
    "dist": "Đồng Nai",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792f16e8c5ed4001b27f482",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792f1b78c5ed4001b27f4a9",
    "id": "TTH 0006",
    "name": "Quốc Lộ 13 - Cầu Vĩnh Bình",
    "loc": {
      "type": "Point",
      "coordinates": [106.71621322631835, 10.868288864109225]
    },
    "values": {
      "ip": "181.1.2.26",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20l%E1%BB%99%2013%20-%20c%E1%BA%A7u%20V%C4%A9nh%20B%C3%ACnh&mp4"
    },
    "dist": "Bình Dương",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792f1b78c5ed4001b27f4a9",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792f2248c5ed4001b27f4dc",
    "id": "TTH 0007",
    "name": "Quốc Lộ 1 - Độc Lập (cổng KCN Sóng Thần)",
    "loc": {
      "type": "Point",
      "coordinates": [106.7515754699707, 10.875622105104815]
    },
    "values": {
      "ip": "181.1.2.27",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20l%E1%BB%99%201%20-%20S%C3%B3ng%20Th%E1%BA%A7n&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792f2248c5ed4001b27f4dc",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792f3cf8c5ed4001b27f61e",
    "id": "TTH 0010",
    "name": "Tỉnh Lộ 8 - Cầu Phú Cường",
    "loc": {
      "type": "Point",
      "coordinates": [106.64364337921143, 10.977130981136062]
    },
    "values": {
      "ip": "181.1.2.25",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=T%E1%BB%89nh%20l%E1%BB%99%208%20-%20c%E1%BA%A7u%20Ph%C3%BA%20C%C6%B0%E1%BB%9Dng&mp4"
    },
    "dist": "Huyện Củ Chi",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792f3cf8c5ed4001b27f61e",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  },
  {
    "_id": "6792f9c88c5ed4001b27fb3d",
    "id": "TTH 0008",
    "name": "Quốc Lộ 1K - Đường GS1",
    "loc": {
      "type": "Point",
      "coordinates": [106.77603721618651, 10.888096629451274]
    },
    "values": {
      "ip": "181.1.2.28",
      "streamingUrl":
          "http://125.234.114.126:11984/api/stream.m3u8?src=Qu%E1%BB%91c%20l%E1%BB%99%201K%20-%20B%C3%ACnh%20D%C6%B0%C6%A1ng&mp4"
    },
    "dist": "Quận Thủ Đức",
    "ptz": false,
    "angle": null,
    "liveviewUrl":
        "http://giaothong.hochiminhcity.gov.vn/render/ImageHandler.ashx?id=6792f9c88c5ed4001b27fb3d",
    "isEnabled": true,
    "lastModified": "2025-06-13T06:57:33.943361"
  }
].map((e) => Camera.fromJson(e)).toList();
