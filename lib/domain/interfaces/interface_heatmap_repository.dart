import 'package:dextra/domain/entities/heatmap_result.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';

abstract class IHeatmapRepository {
  Future<BaseApiResponse<StatisticResult>> fetchHeatmap(Query query);
  Future<BaseApiResponse<HeatmapResult>> fetchHeatmapInDay(Query query);
}
