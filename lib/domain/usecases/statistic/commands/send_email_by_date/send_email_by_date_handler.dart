import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendEmailByDateHandler {
  late IStatisticRepository _iStatisticRepository;

  SendEmailByDateHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<BaseApiResponse> handle(Query query) async {
    final response = await _iStatisticRepository.sendEmailByDate(query);

    return response;
  }
}
