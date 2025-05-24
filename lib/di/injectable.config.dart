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
import '../domain/usecases/camera/queries/fetch_cameras/fetch_cameras_handler.dart'
    as _i187;
import '../domain/usecases/camera/queries/fetch_cameras/fetch_districts_handler.dart'
    as _i1025;
import '../domain/usecases/camera/queries/fetch_cameras/fetch_vehicles_handler.dart'
    as _i961;
import '../domain/usecases/camera/queries/fetch_cameras/search_cameras_handler.dart'
    as _i297;
import '../infrastructure/base_api/dio_client/client.dart' as _i447;
import '../infrastructure/camera_repository/camera_repository.dart' as _i866;
import '../presentation/app/blocs/app/app_bloc.dart' as _i875;
import '../presentation/app/blocs/authentication/authentication_bloc.dart'
    as _i948;
import '../presentation/app/blocs/theme/app_theme_bloc.dart' as _i468;
import '../presentation/modules/commons/bloc/camera/camera_bloc.dart' as _i247;

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
    gh.factory<_i297.SearchCamerasHandler>(
        () => _i297.SearchCamerasHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i1025.FetchDistrictsHandler>(
        () => _i1025.FetchDistrictsHandler(gh<_i574.ICameraRepository>()));
    gh.factory<_i961.FetchVehiclesHandler>(
        () => _i961.FetchVehiclesHandler(gh<_i574.ICameraRepository>()));
    gh.singleton<_i247.CameraBloc>(() => _i247.CameraBloc(
          gh<_i187.FetchCamerasHandler>(),
          gh<_i297.SearchCamerasHandler>(),
          gh<_i1025.FetchDistrictsHandler>(),
          gh<_i961.FetchVehiclesHandler>(),
        ));
    return this;
  }
}
