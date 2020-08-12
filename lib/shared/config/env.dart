import 'dart:developer';

class Env {
  static final env = _getEnv(
    String.fromEnvironment(
      'ENV',
      defaultValue: 'dev',
    ),
  );

  static BuildEnv _getEnv(String value) {
    switch (value.toLowerCase()) {
      case 'dev':
        return BuildEnv.DEV;
      case 'prod':
        return BuildEnv.PROD;
      default:
        throw UnsupportedError('Not support this variant $value');
    }
  }
}

enum BuildEnv {
  DEV,
  PROD,
}
