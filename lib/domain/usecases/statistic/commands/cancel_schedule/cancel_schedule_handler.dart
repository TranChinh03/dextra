import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class CancelScheduleHandler {
  late IStatisticRepository _iStatisticRepository;

  CancelScheduleHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<BaseApiResponse> handle(String scheduleId) async {
    final response = await _iStatisticRepository.cancelSchedule(scheduleId);

    return response;
  }
}
