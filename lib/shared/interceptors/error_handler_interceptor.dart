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
    HttpError httpError;

    switch (err.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        httpError = HttpError.connectTimeOut();
        break;
      case DioErrorType.SEND_TIMEOUT:
        httpError = HttpError.sendTimeOut();
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        httpError = HttpError.receiveTimeOut();
        break;
      case DioErrorType.RESPONSE:
        httpError = HttpError.response();
        break;
      case DioErrorType.CANCEL:
        httpError = HttpError.cancel();
        break;
      case DioErrorType.DEFAULT:
        switch (err.response.statusCode) {
          case 400:
            httpError = HttpError.badRequest();
            break;
          case 401:
            httpError = HttpError.unAuthorized();
            break;
          case 403:
            httpError = HttpError.forbidden();
            break;
          case 404:
            httpError = HttpError.notFound();
            break;
          default:
            httpError = HttpError.internalServer();
        }
        break;
    }
    return _dio.reject(Error.server(httpError: httpError));
  }
}
