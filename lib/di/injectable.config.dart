// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../domain/interfaces/api_client.dart' as _i1065;
import '../domain/interfaces/interface_camera_repository.dart' as _i574;
import '../domain/interfaces/interface_detection_repository.dart' as _i65;
import '../domain/interfaces/interface_statistic_repository.dart' as _i474;
import '../domain/usecases/camera/queries/fetch_cameras/fetch_cameras_handler.dart'
    as _i187;
import '../domain/usecases/camera/queries/fetch_districts/fetch_districts_handler.dart'
    as _i702;
import '../domain/usecases/camera/queries/fetch_vehicles/fetch_vehicles_handler.dart'
    as _i655;
import '../domain/usecases/camera/queries/search_cameras/search_cameras_handler.dart'
    as _i63;
import '../domain/usecases/detection/queries/detect_streamline/detect_streamline_handler.dart'
    as _i475;
import '../domain/usecases/detection/queries/detect_vehicle/detect_vehicle_handler.dart'
    as _i604;
import '../domain/usecases/statistic/queries/fecth_timestamp/fetch_timestamp_handler.dart'
    as _i58;
import '../domain/usecases/statistic/queries/fetch_date/fetch_date_handler.dart'
    as _i699;
import '../domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_handler.dart'
    as _i884;
import '../domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_handler.dart'
    as _i459;
import '../domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_handler.dart'
    as _i412;
import '../domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_handler.dart'
    as _i691;
import '../domain/usecases/statistic/queries/tracking_by_date/tracking_by_date_handler.dart'
    as _i255;
import '../infrastructure/base_api/dio_client/client.dart' as _i447;
import '../infrastructure/camera_repository/camera_repository.dart' as _i866;
import '../infrastructure/detection_repository/detection_repository.dart'
    as _i842;
import '../infrastructure/statistic_repository/statistic_repository.dart'
    as _i520;
import '../presentation/app/blocs/app/app_bloc.dart' as _i875;
import '../presentation/app/blocs/authentication/authentication_bloc.dart'
    as _i948;
import '../presentation/app/blocs/theme/app_theme_bloc.dart' as _i468;
import '../presentation/modules/commons/bloc/camera/camera_bloc.dart' as _i247;
import '../presentation/modules/commons/bloc/datetime/datetime_bloc.dart'
    as _i530;
import '../presentation/modules/commons/bloc/detection/detection_bloc.dart'
    as _i792;
import '../presentation/modules/commons/bloc/search/search_bloc.dart' as _i317;
import '../presentation/modules/commons/bloc/statistic/statistic_bloc.dart'
    as _i407;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i875.AppBloc>(() => _i875.AppBloc());
    gh.lazySingleton<_i948.AuthenticationBloc>(
        () => _i948.AuthenticationBloc());
    gh.lazySingleton<_i468.AppThemeBloc>(() => _i468.AppThemeBloc());
    gh.lazySingleton<_i1065.IApiClient>(() => _i447.DioClient());
    gh.factory<_i574.ICameraRepository>(
        () => _i866.CameraRepository(gh<_i1065.IApiClient>()));
    gh.factory<_i474.IStatisticRepository>(
        () => _i520.StatisticRepository(gh<_i1065.IApiClient>()));
    gh.factory<_i187.FetchCamerasHandler>(
        () => _i187.FetchCamerasHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i702.FetchDistrictsHandler>(
        () => _i702.FetchDistrictsHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i655.FetchVehiclesHandler>(
        () => _i655.FetchVehiclesHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i63.SearchCamerasHandler>(
        () => _i63.SearchCamerasHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i58.FetchTimestampHandler>(
        () => _i58.FetchTimestampHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i699.FetchDateHandler>(
        () => _i699.FetchDateHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i884.DetectByCameraHandler>(
        () => _i884.DetectByCameraHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i459.DetectByCustomHandler>(
        () => _i459.DetectByCustomHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i412.DetectByDateHandler>(
        () => _i412.DetectByDateHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i691.DetectByDistrictHandler>(
        () => _i691.DetectByDistrictHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i255.TrackingByDateHandler>(
        () => _i255.TrackingByDateHandler(gh<_i474.IStatisticRepository>()));
    gh.factory<_i65.IDetectionRepository>(
        () => _i842.DetectionRepository(gh<_i1065.IApiClient>()));
    gh.singleton<_i407.StatisticBloc>(() => _i407.StatisticBloc(
          gh<_i412.DetectByDateHandler>(),
          gh<_i459.DetectByCustomHandler>(),
          gh<_i691.DetectByDistrictHandler>(),
          gh<_i884.DetectByCameraHandler>(),
          gh<_i255.TrackingByDateHandler>(),
        ));
    gh.factory<_i317.SearchBloc>(
        () => _i317.SearchBloc(gh<_i63.SearchCamerasHandler>()));
    gh.singleton<_i530.DateTimeBloc>(() => _i530.DateTimeBloc(
          gh<_i58.FetchTimestampHandler>(),
          gh<_i699.FetchDateHandler>(),
        ));
    gh.factory<_i475.DetectStreamlineHandler>(
        () => _i475.DetectStreamlineHandler(gh<_i65.IDetectionRepository>()));
    gh.factory<_i604.DetectVehicleHandler>(
        () => _i604.DetectVehicleHandler(gh<_i65.IDetectionRepository>()));
    gh.singleton<_i247.CameraBloc>(() => _i247.CameraBloc(
          gh<_i187.FetchCamerasHandler>(),
          gh<_i702.FetchDistrictsHandler>(),
          gh<_i655.FetchVehiclesHandler>(),
        ));
    gh.factory<_i792.DetectionBloc>(() => _i792.DetectionBloc(
          gh<_i604.DetectVehicleHandler>(),
          gh<_i475.DetectStreamlineHandler>(),
        ));
    return this;
  }
}
