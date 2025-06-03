import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetectByDateHandler {
  late IStatisticRepository _iStatisticRepository;

  DetectByDateHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<StatisticResult> handle(Query query) async {
    final response = await _iStatisticRepository.detectByDate(query);

    return response.data;
  }
}
