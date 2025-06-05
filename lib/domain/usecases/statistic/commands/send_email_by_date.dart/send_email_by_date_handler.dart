import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendEmailByDateHandler {
  late IStatisticRepository _iStatisticRepository;

  SendEmailByDateHandler(IStatisticRepository iStatisticRepository) {
    _iStatisticRepository = iStatisticRepository;
  }

  Future<bool> handle(Query query) async {
    final response = await _iStatisticRepository.sendEmailByDate(query);

    return response.data['message'] == 'Email sent successfully';
  }
}
