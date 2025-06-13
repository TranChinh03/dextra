import 'package:dextra/domain/entities/heatmap_result.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/interfaces/interface_heatmap_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heatmap/fetch_heatmap_query.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:injectable/injectable.dart';

const fetchHeatmapUrl = ApiPath.fetchHeatmapUrl;
const fetchHeatmapInDayUrl = ApiPath.fetchHeatmapInDayUrl;

@Injectable(as: IHeatmapRepository)
class HeatmapRepository implements IHeatmapRepository {
  final IApiClient _apiClient;

  HeatmapRepository(this._apiClient);

  @override
  Future<BaseApiResponse<StatisticResult>> fetchHeatmap(Query query) async {
    final FetchHeatmapQuery fetchHeatmapQuery = query.query;
    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$fetchHeatmapUrl?date=${fetchHeatmapQuery.date}&time_from=${fetchHeatmapQuery.timeFrom ?? ""}&time_to=${fetchHeatmapQuery.timeTo ?? ""}",
      parser: (json) => StatisticResult.fromJson(json),
    );

    return response;
  }

  @override
  Future<BaseApiResponse<HeatmapResult>> fetchHeatmapInDay(Query query) async {
    final FetchHeatmapInDayQuery fetchHeatmapInDayQuery = query.query;
    final response = await _apiClient.get<HeatmapResult, HeatmapResult>(
      "$fetchHeatmapInDayUrl?date=${fetchHeatmapInDayQuery.date}&time_from=${fetchHeatmapInDayQuery.timeFrom ?? ""}&time_to=${fetchHeatmapInDayQuery.timeTo ?? ""}",
      parser: (json) => HeatmapResult.fromJson(json),
    );

    return response;
  }
}
