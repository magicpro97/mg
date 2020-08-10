import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:mg/core/error/error.dart';

class ErrorHandlerInterceptor extends Interceptor {
  final Dio _dio;

  ErrorHandlerInterceptor(this._dio);

  @override
  Future onRequest(RequestOptions options) async {
    final connection = await Connectivity().checkConnectivity();

    if (connection != ConnectivityResult.none) {
      final hasInternet = await DataConnectionChecker().hasConnection;

      if (!hasInternet) {
        return _dio.reject(Error.network());
      }
    }

    return super.onRequest(options);
  }

  @override
  Future onError(DioError err) async {
    HttpError httpError = parseError(err);

    return _dio.reject(Error.server(httpError: httpError));
  }

  HttpError parseError(DioError error) {
    switch (error.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        return HttpError.connectTimeOut();
      case DioErrorType.SEND_TIMEOUT:
        return HttpError.sendTimeOut();
      case DioErrorType.RECEIVE_TIMEOUT:
        return HttpError.receiveTimeOut();
      case DioErrorType.RESPONSE:
        return HttpError.response();
      case DioErrorType.CANCEL:
        return HttpError.cancel();
      default:
        switch (error.response.statusCode) {
          case 400:
            return HttpError.badRequest();
          case 401:
            return HttpError.unAuthorized();
          case 403:
            return HttpError.forbidden();
          case 404:
            return HttpError.notFound();
          case 500:
            return HttpError.internalServer();
          case 502:
            return HttpError.badGateway();
          default:
            return HttpError.internalServer();
        }
        break;
    }
  }
}
