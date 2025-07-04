import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/schedule_info.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/entities/timestamp.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';

abstract class IStatisticRepository {
  Future<BaseApiResponse<List<Timestamp>>> getTimestamp();
  Future<BaseApiResponse<List<Date>>> getDate();
  Future<BaseApiResponse<List<ScheduleInfo>>> getSchedules(String email);
  Future<BaseApiResponse<StatisticResult>> detectByDate(Query query);
  Future<BaseApiResponse<StatisticResult>> detectByCustom(Query query);
  Future<BaseApiResponse<StatisticResult>> detectByDistrict(Query query);
  Future<BaseApiResponse<StatisticResult>> detectByCamera(Query query);
  Future<BaseApiResponse<List<ResultDetail>>> trackingByDate();
  // Future<BaseApiResponse<StatisticResult>> fetchHeatmap(Query query);
  Future<BaseApiResponse<String?>> sendEmailByDate(Query query);
  Future<BaseApiResponse<String?>> cancelSchedule(String scheduleId);
  Future<BaseApiResponse<StatisticResult>> detectByCameraCustom(Query query);
}
