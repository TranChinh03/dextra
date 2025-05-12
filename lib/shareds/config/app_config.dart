import 'package:dextra/shareds/config/app_env_config.dart';
import 'package:dextra/shareds/config/app_config_key.dart';

class AppConfig {
  static const AppEnvConfig env = AppEnvConfig.dev;

  static const String baseUrl = String.fromEnvironment(
    AppConfigKey.baseUrl,
    defaultValue: env == AppEnvConfig.dev ? 'http://localhost:8002' : '',
  );

  static String idempotencyKey = const String.fromEnvironment(
    AppConfigKey.idempotencyKey,
    defaultValue: "f9a108fc-e8b4-4803-b38b-e3db75de7680",
  );

  static int apiConnectionTimeout = const int.fromEnvironment(
    AppConfigKey.apiConnectionTimeout,
    defaultValue: 30000,
  );

  static int debounceTime = const int.fromEnvironment(
    AppConfigKey.debounceTime,
    defaultValue: 300,
  );
}
