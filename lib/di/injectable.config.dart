// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../domain/interfaces/api_client.dart' as _i1065;
import '../infrastructure/base_api/dio_client/client.dart' as _i447;
import '../presentation/app/blocs/app/app_bloc.dart' as _i875;

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
    gh.lazySingleton<AppThemeBloc>(() => AppThemeBloc());
    gh.lazySingleton<_i1065.IApiClient>(() => _i447.DioClient());
    return this;
  }
}
