import 'package:dextra/domain/entities/schedule_info.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchSchedulesHandler {
  late IStatisticRepository _iStatisticRepository;

  FetchSchedulesHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<List<ScheduleInfo>> handle(String email) async {
    final response = await _iStatisticRepository.getSchedules(email);

    return response.data;
  }
}
