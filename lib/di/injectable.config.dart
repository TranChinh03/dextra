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
import '../infrastructure/base_api/dio_client/client.dart' as _i447;
import '../infrastructure/camera_repository/camera_repository.dart' as _i866;
import '../infrastructure/detection_repository/detection_repository.dart'
    as _i842;
import '../presentation/app/blocs/app/app_bloc.dart' as _i875;
import '../presentation/app/blocs/authentication/authentication_bloc.dart'
    as _i948;
import '../presentation/app/blocs/theme/app_theme_bloc.dart' as _i468;
import '../presentation/modules/commons/bloc/camera/camera_bloc.dart' as _i247;
import '../presentation/modules/commons/bloc/detection/detection_bloc.dart'
    as _i792;
import '../presentation/modules/commons/bloc/search/search_bloc.dart' as _i317;

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
    gh.factory<_i187.FetchCamerasHandler>(
        () => _i187.FetchCamerasHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i702.FetchDistrictsHandler>(
        () => _i702.FetchDistrictsHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i655.FetchVehiclesHandler>(
        () => _i655.FetchVehiclesHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i63.SearchCamerasHandler>(
        () => _i63.SearchCamerasHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i65.IDetectionRepository>(
        () => _i842.DetectionRepository(gh<_i1065.IApiClient>()));
    gh.factory<_i317.SearchBloc>(
        () => _i317.SearchBloc(gh<_i63.SearchCamerasHandler>()));
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
