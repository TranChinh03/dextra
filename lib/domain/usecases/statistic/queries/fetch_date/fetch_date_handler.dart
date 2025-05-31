import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchDateHandler {
  late IStatisticRepository _iStatisticRepository;

  FetchDateHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<List<Date>> handle() async {
    final response = await _iStatisticRepository.getDate();

    return response.data;
  }
}
