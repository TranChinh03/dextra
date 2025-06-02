import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/entities/timestamp.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';

abstract class IStatisticRepository {
  Future<BaseApiResponse<List<Timestamp>>> getTimestamp();
  Future<BaseApiResponse<List<Date>>> getDate();
  Future<BaseApiResponse<StatisticResult>> detectByDate(Query query);
  Future<BaseApiResponse<StatisticResult>> detectByCustom(Query query);
  Future<BaseApiResponse<StatisticResult>> detectByDistrict(Query query);
}
