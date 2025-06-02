import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetectByDistrictHandler {
  late IStatisticRepository _iStatisticRepository;

  DetectByDistrictHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<StatisticResult> handle(Query query) async {
    final response = await _iStatisticRepository.detectByDistrict(query);

    return response.data;
  }
}
