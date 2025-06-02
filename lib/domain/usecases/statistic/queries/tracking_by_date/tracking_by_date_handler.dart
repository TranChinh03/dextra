import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class TrackingByDateHandler {
  late IStatisticRepository _iStatisticRepository;

  TrackingByDateHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<List<ResultDetail>> handle() async {
    final response = await _iStatisticRepository.trackingByDate();

    return response.data;
  }
}
