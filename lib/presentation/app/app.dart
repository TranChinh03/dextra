import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/app/app_bloc.dart';
import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/presentation/locale/localization.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/router/app_router.dart';
import 'package:dextra/theme/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appThemeBloc = getIt.get<AppThemeBloc>();
  final _appBloc = getIt.get<AppBloc>();
  final _cameraBloc = getIt.get<CameraBloc>();
  final _dateTimeBloc = getIt.get<DateTimeBloc>();
  final _statisticBloc = getIt.get<StatisticBloc>();
  ThemeMode selectedTheme = ThemeMode.light;

  @override
  void initState() {
    Localization().initContext(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: _appBloc),
          BlocProvider.value(value: _appThemeBloc),
          BlocProvider.value(value: _cameraBloc),
          BlocProvider.value(value: _dateTimeBloc),
          BlocProvider.value(value: _statisticBloc),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AppThemeBloc, AppThemeState>(
              listenWhen: (p, c) => p.themeMode != c.themeMode,
              listener: (context, state) {
                setState(() {
                  selectedTheme = state.themeMode;
                });
              },
            ),
          ],
          child: MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routerConfig: AppRouter().appRouter,
            builder: _builderApp,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: selectedTheme,
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }

  Widget _builderApp(BuildContext context, Widget? child) {
    var build = child;
    build = FlutterEasyLoading(child: build);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
      child: build,
    );
  }
}
