// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResultTearOff {
  const _$ResultTearOff();

  _Error<R> error<R>(ErrorResponse error) {
    return _Error<R>(
      error,
    );
  }

  _Success<R> success<R>(R result) {
    return _Success<R>(
      result,
    );
  }

  _Unknown<R> unknown<R>(Exception exception) {
    return _Unknown<R>(
      exception,
    );
  }
}

// ignore: unused_element
const $Result = _$ResultTearOff();

mixin _$Result<R> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(ErrorResponse error),
    @required Result success(R result),
    @required Result unknown(Exception exception),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(ErrorResponse error),
    Result success(R result),
    Result unknown(Exception exception),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error<R> value),
    @required Result success(_Success<R> value),
    @required Result unknown(_Unknown<R> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error<R> value),
    Result success(_Success<R> value),
    Result unknown(_Unknown<R> value),
    @required Result orElse(),
  });
}

abstract class $ResultCopyWith<R, $Res> {
  factory $ResultCopyWith(Result<R> value, $Res Function(Result<R>) then) =
      _$ResultCopyWithImpl<R, $Res>;
}

class _$ResultCopyWithImpl<R, $Res> implements $ResultCopyWith<R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<R> _value;
  // ignore: unused_field
  final $Res Function(Result<R>) _then;
}

abstract class _$ErrorCopyWith<R, $Res> {
  factory _$ErrorCopyWith(_Error<R> value, $Res Function(_Error<R>) then) =
      __$ErrorCopyWithImpl<R, $Res>;
  $Res call({ErrorResponse error});
}

class __$ErrorCopyWithImpl<R, $Res> extends _$ResultCopyWithImpl<R, $Res>
    implements _$ErrorCopyWith<R, $Res> {
  __$ErrorCopyWithImpl(_Error<R> _value, $Res Function(_Error<R>) _then)
      : super(_value, (v) => _then(v as _Error<R>));

  @override
  _Error<R> get _value => super._value as _Error<R>;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Error<R>(
      error == freezed ? _value.error : error as ErrorResponse,
    ));
  }
}

class _$_Error<R> implements _Error<R> {
  _$_Error(this.error) : assert(error != null);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'Result<$R>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<R> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$ErrorCopyWith<R, _Error<R>> get copyWith =>
      __$ErrorCopyWithImpl<R, _Error<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(ErrorResponse error),
    @required Result success(R result),
    @required Result unknown(Exception exception),
  }) {
    assert(error != null);
    assert(success != null);
    assert(unknown != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(ErrorResponse error),
    Result success(R result),
    Result unknown(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error<R> value),
    @required Result success(_Success<R> value),
    @required Result unknown(_Unknown<R> value),
  }) {
    assert(error != null);
    assert(success != null);
    assert(unknown != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error<R> value),
    Result success(_Success<R> value),
    Result unknown(_Unknown<R> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<R> implements Result<R> {
  factory _Error(ErrorResponse error) = _$_Error<R>;

  ErrorResponse get error;
  _$ErrorCopyWith<R, _Error<R>> get copyWith;
}

abstract class _$SuccessCopyWith<R, $Res> {
  factory _$SuccessCopyWith(
          _Success<R> value, $Res Function(_Success<R>) then) =
      __$SuccessCopyWithImpl<R, $Res>;
  $Res call({R result});
}

class __$SuccessCopyWithImpl<R, $Res> extends _$ResultCopyWithImpl<R, $Res>
    implements _$SuccessCopyWith<R, $Res> {
  __$SuccessCopyWithImpl(_Success<R> _value, $Res Function(_Success<R>) _then)
      : super(_value, (v) => _then(v as _Success<R>));

  @override
  _Success<R> get _value => super._value as _Success<R>;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_Success<R>(
      result == freezed ? _value.result : result as R,
    ));
  }
}

class _$_Success<R> implements _Success<R> {
  _$_Success(this.result) : assert(result != null);

  @override
  final R result;

  @override
  String toString() {
    return 'Result<$R>.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<R> &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  _$SuccessCopyWith<R, _Success<R>> get copyWith =>
      __$SuccessCopyWithImpl<R, _Success<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(ErrorResponse error),
    @required Result success(R result),
    @required Result unknown(Exception exception),
  }) {
    assert(error != null);
    assert(success != null);
    assert(unknown != null);
    return success(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(ErrorResponse error),
    Result success(R result),
    Result unknown(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error<R> value),
    @required Result success(_Success<R> value),
    @required Result unknown(_Unknown<R> value),
  }) {
    assert(error != null);
    assert(success != null);
    assert(unknown != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error<R> value),
    Result success(_Success<R> value),
    Result unknown(_Unknown<R> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<R> implements Result<R> {
  factory _Success(R result) = _$_Success<R>;

  R get result;
  _$SuccessCopyWith<R, _Success<R>> get copyWith;
}

abstract class _$UnknownCopyWith<R, $Res> {
  factory _$UnknownCopyWith(
          _Unknown<R> value, $Res Function(_Unknown<R>) then) =
      __$UnknownCopyWithImpl<R, $Res>;
  $Res call({Exception exception});
}

class __$UnknownCopyWithImpl<R, $Res> extends _$ResultCopyWithImpl<R, $Res>
    implements _$UnknownCopyWith<R, $Res> {
  __$UnknownCopyWithImpl(_Unknown<R> _value, $Res Function(_Unknown<R>) _then)
      : super(_value, (v) => _then(v as _Unknown<R>));

  @override
  _Unknown<R> get _value => super._value as _Unknown<R>;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_Unknown<R>(
      exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

class _$_Unknown<R> implements _Unknown<R> {
  _$_Unknown(this.exception) : assert(exception != null);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'Result<$R>.unknown(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unknown<R> &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @override
  _$UnknownCopyWith<R, _Unknown<R>> get copyWith =>
      __$UnknownCopyWithImpl<R, _Unknown<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(ErrorResponse error),
    @required Result success(R result),
    @required Result unknown(Exception exception),
  }) {
    assert(error != null);
    assert(success != null);
    assert(unknown != null);
    return unknown(exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(ErrorResponse error),
    Result success(R result),
    Result unknown(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error<R> value),
    @required Result success(_Success<R> value),
    @required Result unknown(_Unknown<R> value),
  }) {
    assert(error != null);
    assert(success != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error<R> value),
    Result success(_Success<R> value),
    Result unknown(_Unknown<R> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown<R> implements Result<R> {
  factory _Unknown(Exception exception) = _$_Unknown<R>;

  Exception get exception;
  _$UnknownCopyWith<R, _Unknown<R>> get copyWith;
}
