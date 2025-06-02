import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/entities/timestamp.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_custom/detect_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_district/detect_by_district_query.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:injectable/injectable.dart';

const getTimestampUrl = ApiPath.fetchTimestampUrl;
const getDateUrl = ApiPath.fetchDateUrl;
const detectByDateUrl = ApiPath.detectByDateUrl;
const detectByCustomUrl = ApiPath.detectByCustomUrl;
const detectByDistrictUrl = ApiPath.detectByDistrictUrl;

@Injectable(as: IStatisticRepository)
class StatisticRepository implements IStatisticRepository {
  final IApiClient _apiClient;

  StatisticRepository(this._apiClient);

  @override
  Future<BaseApiResponse<List<Timestamp>>> getTimestamp() async {
    final response = await _apiClient.get<List<Timestamp>, Timestamp>(
      getTimestampUrl,
      parser: (json) => Timestamp.fromJson(json),
    );
    return response;
  }

  @override
  Future<BaseApiResponse<List<Date>>> getDate() async {
    final response = await _apiClient.get<List<Date>, Date>(
      getDateUrl,
      parser: (json) => Date.fromJson(json),
    );

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByDate(Query query) async {
    final DetectByDateQuery detectByDateQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      detectByDateUrl + (detectByDateQuery.date ?? ''),
      parser: (json) => StatisticResult.fromJson(json),
    );
    print('response: ${response.data}');

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByCustom(Query query) async {
    final DetectByCustomQuery detectByCustomQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$detectByCustomUrl?date=${detectByCustomQuery.date ?? ''}&time_from=${detectByCustomQuery.timeFrom ?? ''}&time_to=${detectByCustomQuery.timeTo ?? ''}",
      parser: (json) => StatisticResult.fromJson(json),
    );
    print('response: ${response.data}');

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByDistrict(Query query) async {
    final DetectByDistrictQuery detectByDistrictQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$detectByDistrictUrl?district=${detectByDistrictQuery.district ?? ""}&date=${detectByDistrictQuery.date ?? ''}&time_from=${detectByDistrictQuery.timeFrom ?? ''}&time_to=${detectByDistrictQuery.timeTo ?? ''}",
      parser: (json) => StatisticResult.fromJson(json),
    );
    print('response: ${response.data}');

    return response;
  }
}
