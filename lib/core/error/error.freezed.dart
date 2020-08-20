// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ErrorTearOff {
  const _$ErrorTearOff();

  _Server server({HttpError httpError}) {
    return _Server(
      httpError: httpError,
    );
  }

  _Network network() {
    return const _Network();
  }

  _Cache cache() {
    return const _Cache();
  }

  _Unknown unknown() {
    return const _Unknown();
  }
}

// ignore: unused_element
const $Error = _$ErrorTearOff();

mixin _$Error {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(HttpError httpError),
    @required Result network(),
    @required Result cache(),
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(HttpError httpError),
    Result network(),
    Result cache(),
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(_Server value),
    @required Result network(_Network value),
    @required Result cache(_Cache value),
    @required Result unknown(_Unknown value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_Server value),
    Result network(_Network value),
    Result cache(_Cache value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  });
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  final Error _value;
  // ignore: unused_field
  final $Res Function(Error) _then;
}

abstract class _$ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) then) =
      __$ServerCopyWithImpl<$Res>;
  $Res call({HttpError httpError});

  $HttpErrorCopyWith<$Res> get httpError;
}

class __$ServerCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(_Server _value, $Res Function(_Server) _then)
      : super(_value, (v) => _then(v as _Server));

  @override
  _Server get _value => super._value as _Server;

  @override
  $Res call({
    Object httpError = freezed,
  }) {
    return _then(_Server(
      httpError:
          httpError == freezed ? _value.httpError : httpError as HttpError,
    ));
  }

  @override
  $HttpErrorCopyWith<$Res> get httpError {
    if (_value.httpError == null) {
      return null;
    }
    return $HttpErrorCopyWith<$Res>(_value.httpError, (value) {
      return _then(_value.copyWith(httpError: value));
    });
  }
}

class _$_Server implements _Server {
  const _$_Server({this.httpError});

  @override
  final HttpError httpError;

  @override
  String toString() {
    return 'Error.server(httpError: $httpError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Server &&
            (identical(other.httpError, httpError) ||
                const DeepCollectionEquality()
                    .equals(other.httpError, httpError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(httpError);

  @override
  _$ServerCopyWith<_Server> get copyWith =>
      __$ServerCopyWithImpl<_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(HttpError httpError),
    @required Result network(),
    @required Result cache(),
    @required Result unknown(),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return server(httpError);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(HttpError httpError),
    Result network(),
    Result cache(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(httpError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(_Server value),
    @required Result network(_Network value),
    @required Result cache(_Cache value),
    @required Result unknown(_Unknown value),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return server(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_Server value),
    Result network(_Network value),
    Result cache(_Cache value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Error {
  const factory _Server({HttpError httpError}) = _$_Server;

  HttpError get httpError;
  _$ServerCopyWith<_Server> get copyWith;
}

abstract class _$NetworkCopyWith<$Res> {
  factory _$NetworkCopyWith(_Network value, $Res Function(_Network) then) =
      __$NetworkCopyWithImpl<$Res>;
}

class __$NetworkCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$NetworkCopyWith<$Res> {
  __$NetworkCopyWithImpl(_Network _value, $Res Function(_Network) _then)
      : super(_value, (v) => _then(v as _Network));

  @override
  _Network get _value => super._value as _Network;
}

class _$_Network implements _Network {
  const _$_Network();

  @override
  String toString() {
    return 'Error.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(HttpError httpError),
    @required Result network(),
    @required Result cache(),
    @required Result unknown(),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return network();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(HttpError httpError),
    Result network(),
    Result cache(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(_Server value),
    @required Result network(_Network value),
    @required Result cache(_Cache value),
    @required Result unknown(_Unknown value),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return network(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_Server value),
    Result network(_Network value),
    Result cache(_Cache value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements Error {
  const factory _Network() = _$_Network;
}

abstract class _$CacheCopyWith<$Res> {
  factory _$CacheCopyWith(_Cache value, $Res Function(_Cache) then) =
      __$CacheCopyWithImpl<$Res>;
}

class __$CacheCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$CacheCopyWith<$Res> {
  __$CacheCopyWithImpl(_Cache _value, $Res Function(_Cache) _then)
      : super(_value, (v) => _then(v as _Cache));

  @override
  _Cache get _value => super._value as _Cache;
}

class _$_Cache implements _Cache {
  const _$_Cache();

  @override
  String toString() {
    return 'Error.cache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cache);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(HttpError httpError),
    @required Result network(),
    @required Result cache(),
    @required Result unknown(),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return cache();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(HttpError httpError),
    Result network(),
    Result cache(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(_Server value),
    @required Result network(_Network value),
    @required Result cache(_Cache value),
    @required Result unknown(_Unknown value),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return cache(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_Server value),
    Result network(_Network value),
    Result cache(_Cache value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _Cache implements Error {
  const factory _Cache() = _$_Cache;
}

abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

class __$UnknownCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'Error.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(HttpError httpError),
    @required Result network(),
    @required Result cache(),
    @required Result unknown(),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(HttpError httpError),
    Result network(),
    Result cache(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(_Server value),
    @required Result network(_Network value),
    @required Result cache(_Cache value),
    @required Result unknown(_Unknown value),
  }) {
    assert(server != null);
    assert(network != null);
    assert(cache != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_Server value),
    Result network(_Network value),
    Result cache(_Cache value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements Error {
  const factory _Unknown() = _$_Unknown;
}

class _$HttpErrorTearOff {
  const _$HttpErrorTearOff();

  _SendTimeOut sendTimeOut() {
    return const _SendTimeOut();
  }

  _ReceiveTimeOut receiveTimeOut() {
    return const _ReceiveTimeOut();
  }

  _ConnectTimeOut connectTimeOut() {
    return const _ConnectTimeOut();
  }

  _Response response() {
    return const _Response();
  }

  _Cancel cancel() {
    return const _Cancel();
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _Unauthorized unAuthorized() {
    return const _Unauthorized();
  }

  _BadRequest badRequest() {
    return const _BadRequest();
  }

  _InternalServer internalServer() {
    return const _InternalServer();
  }

  _Forbidden forbidden() {
    return const _Forbidden();
  }

  _BadGateway badGateway() {
    return const _BadGateway();
  }
}

// ignore: unused_element
const $HttpError = _$HttpErrorTearOff();

mixin _$HttpError {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  });
}

abstract class $HttpErrorCopyWith<$Res> {
  factory $HttpErrorCopyWith(HttpError value, $Res Function(HttpError) then) =
      _$HttpErrorCopyWithImpl<$Res>;
}

class _$HttpErrorCopyWithImpl<$Res> implements $HttpErrorCopyWith<$Res> {
  _$HttpErrorCopyWithImpl(this._value, this._then);

  final HttpError _value;
  // ignore: unused_field
  final $Res Function(HttpError) _then;
}

abstract class _$SendTimeOutCopyWith<$Res> {
  factory _$SendTimeOutCopyWith(
          _SendTimeOut value, $Res Function(_SendTimeOut) then) =
      __$SendTimeOutCopyWithImpl<$Res>;
}

class __$SendTimeOutCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$SendTimeOutCopyWith<$Res> {
  __$SendTimeOutCopyWithImpl(
      _SendTimeOut _value, $Res Function(_SendTimeOut) _then)
      : super(_value, (v) => _then(v as _SendTimeOut));

  @override
  _SendTimeOut get _value => super._value as _SendTimeOut;
}

class _$_SendTimeOut implements _SendTimeOut {
  const _$_SendTimeOut();

  @override
  String toString() {
    return 'HttpError.sendTimeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendTimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return sendTimeOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeOut != null) {
      return sendTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return sendTimeOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeOut != null) {
      return sendTimeOut(this);
    }
    return orElse();
  }
}

abstract class _SendTimeOut implements HttpError {
  const factory _SendTimeOut() = _$_SendTimeOut;
}

abstract class _$ReceiveTimeOutCopyWith<$Res> {
  factory _$ReceiveTimeOutCopyWith(
          _ReceiveTimeOut value, $Res Function(_ReceiveTimeOut) then) =
      __$ReceiveTimeOutCopyWithImpl<$Res>;
}

class __$ReceiveTimeOutCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$ReceiveTimeOutCopyWith<$Res> {
  __$ReceiveTimeOutCopyWithImpl(
      _ReceiveTimeOut _value, $Res Function(_ReceiveTimeOut) _then)
      : super(_value, (v) => _then(v as _ReceiveTimeOut));

  @override
  _ReceiveTimeOut get _value => super._value as _ReceiveTimeOut;
}

class _$_ReceiveTimeOut implements _ReceiveTimeOut {
  const _$_ReceiveTimeOut();

  @override
  String toString() {
    return 'HttpError.receiveTimeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReceiveTimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return receiveTimeOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiveTimeOut != null) {
      return receiveTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return receiveTimeOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiveTimeOut != null) {
      return receiveTimeOut(this);
    }
    return orElse();
  }
}

abstract class _ReceiveTimeOut implements HttpError {
  const factory _ReceiveTimeOut() = _$_ReceiveTimeOut;
}

abstract class _$ConnectTimeOutCopyWith<$Res> {
  factory _$ConnectTimeOutCopyWith(
          _ConnectTimeOut value, $Res Function(_ConnectTimeOut) then) =
      __$ConnectTimeOutCopyWithImpl<$Res>;
}

class __$ConnectTimeOutCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$ConnectTimeOutCopyWith<$Res> {
  __$ConnectTimeOutCopyWithImpl(
      _ConnectTimeOut _value, $Res Function(_ConnectTimeOut) _then)
      : super(_value, (v) => _then(v as _ConnectTimeOut));

  @override
  _ConnectTimeOut get _value => super._value as _ConnectTimeOut;
}

class _$_ConnectTimeOut implements _ConnectTimeOut {
  const _$_ConnectTimeOut();

  @override
  String toString() {
    return 'HttpError.connectTimeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ConnectTimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return connectTimeOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectTimeOut != null) {
      return connectTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return connectTimeOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectTimeOut != null) {
      return connectTimeOut(this);
    }
    return orElse();
  }
}

abstract class _ConnectTimeOut implements HttpError {
  const factory _ConnectTimeOut() = _$_ConnectTimeOut;
}

abstract class _$ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
}

class __$ResponseCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(_Response _value, $Res Function(_Response) _then)
      : super(_value, (v) => _then(v as _Response));

  @override
  _Response get _value => super._value as _Response;
}

class _$_Response implements _Response {
  const _$_Response();

  @override
  String toString() {
    return 'HttpError.response()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Response);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return response();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (response != null) {
      return response();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return response(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class _Response implements HttpError {
  const factory _Response() = _$_Response;
}

abstract class _$CancelCopyWith<$Res> {
  factory _$CancelCopyWith(_Cancel value, $Res Function(_Cancel) then) =
      __$CancelCopyWithImpl<$Res>;
}

class __$CancelCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$CancelCopyWith<$Res> {
  __$CancelCopyWithImpl(_Cancel _value, $Res Function(_Cancel) _then)
      : super(_value, (v) => _then(v as _Cancel));

  @override
  _Cancel get _value => super._value as _Cancel;
}

class _$_Cancel implements _Cancel {
  const _$_Cancel();

  @override
  String toString() {
    return 'HttpError.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return cancel();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements HttpError {
  const factory _Cancel() = _$_Cancel;
}

abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

class __$NotFoundCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'HttpError.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements HttpError {
  const factory _NotFound() = _$_NotFound;
}

abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

class __$UnauthorizedCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'HttpError.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements HttpError {
  const factory _Unauthorized() = _$_Unauthorized;
}

abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
}

class __$BadRequestCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(
      _BadRequest _value, $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest();

  @override
  String toString() {
    return 'HttpError.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return badRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements HttpError {
  const factory _BadRequest() = _$_BadRequest;
}

abstract class _$InternalServerCopyWith<$Res> {
  factory _$InternalServerCopyWith(
          _InternalServer value, $Res Function(_InternalServer) then) =
      __$InternalServerCopyWithImpl<$Res>;
}

class __$InternalServerCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$InternalServerCopyWith<$Res> {
  __$InternalServerCopyWithImpl(
      _InternalServer _value, $Res Function(_InternalServer) _then)
      : super(_value, (v) => _then(v as _InternalServer));

  @override
  _InternalServer get _value => super._value as _InternalServer;
}

class _$_InternalServer implements _InternalServer {
  const _$_InternalServer();

  @override
  String toString() {
    return 'HttpError.internalServer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InternalServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return internalServer();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServer != null) {
      return internalServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return internalServer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServer != null) {
      return internalServer(this);
    }
    return orElse();
  }
}

abstract class _InternalServer implements HttpError {
  const factory _InternalServer() = _$_InternalServer;
}

abstract class _$ForbiddenCopyWith<$Res> {
  factory _$ForbiddenCopyWith(
          _Forbidden value, $Res Function(_Forbidden) then) =
      __$ForbiddenCopyWithImpl<$Res>;
}

class __$ForbiddenCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$ForbiddenCopyWith<$Res> {
  __$ForbiddenCopyWithImpl(_Forbidden _value, $Res Function(_Forbidden) _then)
      : super(_value, (v) => _then(v as _Forbidden));

  @override
  _Forbidden get _value => super._value as _Forbidden;
}

class _$_Forbidden implements _Forbidden {
  const _$_Forbidden();

  @override
  String toString() {
    return 'HttpError.forbidden()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Forbidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return forbidden();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forbidden != null) {
      return forbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _Forbidden implements HttpError {
  const factory _Forbidden() = _$_Forbidden;
}

abstract class _$BadGatewayCopyWith<$Res> {
  factory _$BadGatewayCopyWith(
          _BadGateway value, $Res Function(_BadGateway) then) =
      __$BadGatewayCopyWithImpl<$Res>;
}

class __$BadGatewayCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$BadGatewayCopyWith<$Res> {
  __$BadGatewayCopyWithImpl(
      _BadGateway _value, $Res Function(_BadGateway) _then)
      : super(_value, (v) => _then(v as _BadGateway));

  @override
  _BadGateway get _value => super._value as _BadGateway;
}

class _$_BadGateway implements _BadGateway {
  const _$_BadGateway();

  @override
  String toString() {
    return 'HttpError.badGateway()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BadGateway);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendTimeOut(),
    @required Result receiveTimeOut(),
    @required Result connectTimeOut(),
    @required Result response(),
    @required Result cancel(),
    @required Result notFound(),
    @required Result unAuthorized(),
    @required Result badRequest(),
    @required Result internalServer(),
    @required Result forbidden(),
    @required Result badGateway(),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return badGateway();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendTimeOut(),
    Result receiveTimeOut(),
    Result connectTimeOut(),
    Result response(),
    Result cancel(),
    Result notFound(),
    Result unAuthorized(),
    Result badRequest(),
    Result internalServer(),
    Result forbidden(),
    Result badGateway(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badGateway != null) {
      return badGateway();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendTimeOut(_SendTimeOut value),
    @required Result receiveTimeOut(_ReceiveTimeOut value),
    @required Result connectTimeOut(_ConnectTimeOut value),
    @required Result response(_Response value),
    @required Result cancel(_Cancel value),
    @required Result notFound(_NotFound value),
    @required Result unAuthorized(_Unauthorized value),
    @required Result badRequest(_BadRequest value),
    @required Result internalServer(_InternalServer value),
    @required Result forbidden(_Forbidden value),
    @required Result badGateway(_BadGateway value),
  }) {
    assert(sendTimeOut != null);
    assert(receiveTimeOut != null);
    assert(connectTimeOut != null);
    assert(response != null);
    assert(cancel != null);
    assert(notFound != null);
    assert(unAuthorized != null);
    assert(badRequest != null);
    assert(internalServer != null);
    assert(forbidden != null);
    assert(badGateway != null);
    return badGateway(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendTimeOut(_SendTimeOut value),
    Result receiveTimeOut(_ReceiveTimeOut value),
    Result connectTimeOut(_ConnectTimeOut value),
    Result response(_Response value),
    Result cancel(_Cancel value),
    Result notFound(_NotFound value),
    Result unAuthorized(_Unauthorized value),
    Result badRequest(_BadRequest value),
    Result internalServer(_InternalServer value),
    Result forbidden(_Forbidden value),
    Result badGateway(_BadGateway value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badGateway != null) {
      return badGateway(this);
    }
    return orElse();
  }
}

abstract class _BadGateway implements HttpError {
  const factory _BadGateway() = _$_BadGateway;
}
