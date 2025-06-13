import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/interfaces/interface_heatmap_repository.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchHeatmapHandler {
  late IHeatmapRepository _iHeatmapRepository;

  FetchHeatmapHandler(IHeatmapRepository iHeatmapRepository) {
    _iHeatmapRepository = iHeatmapRepository;
  }

  Future<StatisticResult> handle(Query query) async {
    final response = await _iHeatmapRepository.fetchHeatmap(query);

    return response.data;
  }
}
