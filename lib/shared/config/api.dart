import 'package:mg/shared/config/env.dart';

class Api {
  static final env = Env.env;

  static final baseUrl = env == BuildEnv.DEV
      ? 'https://mgcenter.rsaprovider.tk'
      : 'https://tcsv.tanchonggroup.com';

  static final cmsUrl = '$baseUrl/cms-mobile/api';

  static final userApi = '$cmsUrl/user';
}

class UserApi {
  static final baseUrl = Api.userApi;

  static final forgotPassword = '$baseUrl/forgotpassword';

  static final register = '$baseUrl/register';

  static final systemLogin = '${Api.cmsUrl}/login/userReg';
}
