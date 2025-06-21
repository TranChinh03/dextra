import 'package:dextra/domain/entities/heatmap_result.dart';
import 'package:dextra/domain/interfaces/interface_heatmap_repository.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchHeatmapInDayHandler {
  late IHeatmapRepository _iHeatmapRepository;

  FetchHeatmapInDayHandler(IHeatmapRepository iHeatmapRepository) {
    _iHeatmapRepository = iHeatmapRepository;
  }

  Future<HeatmapResult> handle(Query query) async {
    final response = await _iHeatmapRepository.fetchHeatmapInDay(query);

    return response.data;
  }
}
