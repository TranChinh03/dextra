import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/schedule_info.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/entities/timestamp.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/interfaces/interface_statistic_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date/send_email_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_cam_custom/statistic_by_cam_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:injectable/injectable.dart';

const getTimestampUrl = ApiPath.fetchTimestampUrl;
const getDateUrl = ApiPath.fetchDateUrl;
const detectByDateUrl = ApiPath.detectByDateUrl;
const detectByCustomUrl = ApiPath.detectByCustomUrl;
const detectByDistrictUrl = ApiPath.detectByDistrictUrl;
const detectByCameraUrl = ApiPath.detectByCameraUrl;
const trackingByDateUrl = ApiPath.trackingByDateUrl;
const detectByCameraCustomUrl = ApiPath.detectByCameraCustomUrl;
// const fetchHeatmapUrl = ApiPath.fetchHeatmapUrl;
const sendEmailByDateUrl = ApiPath.sendEmailByDateUrl;
const fetchShedulesUrl = ApiPath.fetchSchedulesUrl;
const cancelScheduleUrl = ApiPath.cancelScheduleUrl;

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
  Future<BaseApiResponse<List<ScheduleInfo>>> getSchedules(String email) async {
    final response = await _apiClient.get<List<ScheduleInfo>, ScheduleInfo>(
      "$fetchShedulesUrl?$email",
      parser: (json) => ScheduleInfo.fromJson(json),
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
    // print('response: ${response.data}');

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByCustom(Query query) async {
    final DetectByCustomQuery detectByCustomQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$detectByCustomUrl?date=${detectByCustomQuery.date ?? ''}&time_from=${detectByCustomQuery.timeFrom ?? ''}&time_to=${detectByCustomQuery.timeTo ?? ''}",
      parser: (json) => StatisticResult.fromJson(json),
    );
    // print('response: ${response.data}');

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByDistrict(Query query) async {
    final DetectByDistrictQuery detectByDistrictQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$detectByDistrictUrl?district=${detectByDistrictQuery.district ?? ""}&date=${detectByDistrictQuery.date ?? ''}&time_from=${detectByDistrictQuery.timeFrom ?? ''}&time_to=${detectByDistrictQuery.timeTo ?? ''}",
      parser: (json) => StatisticResult.fromJson(json),
    );
    // print('response: ${response.data}');

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByCamera(Query query) async {
    final DetectByCameraQuery detectByCameraQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$detectByCameraUrl?camera=${detectByCameraQuery.camera ?? ""}",
      parser: (json) => StatisticResult.fromJson(json),
    );
    // print('response: ${response.data}');

    return response;
  }

  @override
  Future<BaseApiResponse<StatisticResult>> detectByCameraCustom(
      Query query) async {
    final DetectByCameraCustomQuery detectByCameraCustomQuery = query.query;

    final response = await _apiClient.get<StatisticResult, StatisticResult>(
      "$detectByCameraCustomUrl?date=${detectByCameraCustomQuery.date}&camera=${detectByCameraCustomQuery.camera}&timeFrom=${detectByCameraCustomQuery.timeFrom}&timeTo=${detectByCameraCustomQuery.timeTo}",
      parser: (json) => StatisticResult.fromJson(json),
    );

    return response;
  }

  @override
  Future<BaseApiResponse<List<ResultDetail>>> trackingByDate() async {
    final response = await _apiClient.get<List<ResultDetail>, ResultDetail>(
      trackingByDateUrl,
      parser: (json) => ResultDetail.fromJson(json),
    );

    return response;
  }

  // @override
  // Future<BaseApiResponse<StatisticResult>> fetchHeatmap(Query query) async {
  //   final FetchHeatmapQuery fetchHeatmapQuery = query.query;
  //   final response = await _apiClient.get<StatisticResult, StatisticResult>(
  //     "$fetchHeatmapUrl?date=${fetchHeatmapQuery.date}&time_from=${fetchHeatmapQuery.timeFrom ?? ""}&time_to=${fetchHeatmapQuery.timeTo ?? ""}",
  //     parser: (json) => StatisticResult.fromJson(json),
  //   );

  //   return response;
  // }

  @override
  Future<BaseApiResponse<String?>> sendEmailByDate(Query query) async {
    final SendEmailByDateQuery sendEmailByDateQuery = query.query;

    final response = await _apiClient.post<String, String>(
      sendEmailByDateUrl,
      data: sendEmailByDateQuery.toJson(),
    );

    return response;
  }

  @override
  Future<BaseApiResponse<String?>> cancelSchedule(String scheduleId) async {
    final response = await _apiClient.post<String, String>(
      cancelScheduleUrl,
      data: {
        "scheduleId": scheduleId,
      },
    );

    return response;
  }
}
