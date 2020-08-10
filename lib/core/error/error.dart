import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
abstract class Error with _$Error {
  const factory Error.server({HttpError httpError}) = _Server;

  const factory Error.network() = _Network;

  const factory Error.cache() = _Cache;

  const factory Error.unknown() = _Unknown;
}

@freezed
abstract class HttpError with _$HttpError {
  const factory HttpError.sendTimeOut() = _SendTimeOut;

  const factory HttpError.receiveTimeOut() = _ReceiveTimeOut;

  const factory HttpError.connectTimeOut() = _ConnectTimeOut;

  const factory HttpError.response() = _Response;

  const factory HttpError.cancel() = _Cancel;

  const factory HttpError.notFound() = _NotFound;

  const factory HttpError.unAuthorized() = _Unauthorized;

  const factory HttpError.badRequest() = _BadRequest;

  const factory HttpError.internalServer() = _InternalServer;

  const factory HttpError.forbidden() = _Forbidden;

  const factory HttpError.badGateway() = _BadGateway;
}
