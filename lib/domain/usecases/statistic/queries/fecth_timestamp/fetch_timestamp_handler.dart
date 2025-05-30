import 'package:dextra/domain/entities/timestamp.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchTimestampHandler {
  late IStatisticRepository _iStatisticRepository;

  FetchTimestampHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<List<Timestamp>> handle() async {
    final response = await _iStatisticRepository.getTimestamp();

    return response.data;
  }
}
