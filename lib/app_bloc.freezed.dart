// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppStateTearOff {
  const _$AppStateTearOff();

  _UnAuthorized unAuthorized() {
    return _UnAuthorized();
  }

  _Authorized authorized() {
    return _Authorized();
  }

  _Loading loading() {
    return const _Loading();
  }
}

// ignore: unused_element
const $AppState = _$AppStateTearOff();

mixin _$AppState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unAuthorized(),
    @required Result authorized(),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unAuthorized(),
    Result authorized(),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unAuthorized(_UnAuthorized value),
    @required Result authorized(_Authorized value),
    @required Result loading(_Loading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unAuthorized(_UnAuthorized value),
    Result authorized(_Authorized value),
    Result loading(_Loading value),
    @required Result orElse(),
  });
}

abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

abstract class _$UnAuthorizedCopyWith<$Res> {
  factory _$UnAuthorizedCopyWith(
          _UnAuthorized value, $Res Function(_UnAuthorized) then) =
      __$UnAuthorizedCopyWithImpl<$Res>;
}

class __$UnAuthorizedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UnAuthorizedCopyWith<$Res> {
  __$UnAuthorizedCopyWithImpl(
      _UnAuthorized _value, $Res Function(_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _UnAuthorized));

  @override
  _UnAuthorized get _value => super._value as _UnAuthorized;
}

class _$_UnAuthorized extends _UnAuthorized {
  _$_UnAuthorized() : super._();

  @override
  String toString() {
    return 'AppState.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unAuthorized(),
    @required Result authorized(),
    @required Result loading(),
  }) {
    assert(unAuthorized != null);
    assert(authorized != null);
    assert(loading != null);
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unAuthorized(),
    Result authorized(),
    Result loading(),
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
    @required Result unAuthorized(_UnAuthorized value),
    @required Result authorized(_Authorized value),
    @required Result loading(_Loading value),
  }) {
    assert(unAuthorized != null);
    assert(authorized != null);
    assert(loading != null);
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unAuthorized(_UnAuthorized value),
    Result authorized(_Authorized value),
    Result loading(_Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized extends AppState {
  _UnAuthorized._() : super._();
  factory _UnAuthorized() = _$_UnAuthorized;
}

abstract class _$AuthorizedCopyWith<$Res> {
  factory _$AuthorizedCopyWith(
          _Authorized value, $Res Function(_Authorized) then) =
      __$AuthorizedCopyWithImpl<$Res>;
}

class __$AuthorizedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AuthorizedCopyWith<$Res> {
  __$AuthorizedCopyWithImpl(
      _Authorized _value, $Res Function(_Authorized) _then)
      : super(_value, (v) => _then(v as _Authorized));

  @override
  _Authorized get _value => super._value as _Authorized;
}

class _$_Authorized extends _Authorized {
  _$_Authorized() : super._();

  @override
  String toString() {
    return 'AppState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unAuthorized(),
    @required Result authorized(),
    @required Result loading(),
  }) {
    assert(unAuthorized != null);
    assert(authorized != null);
    assert(loading != null);
    return authorized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unAuthorized(),
    Result authorized(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unAuthorized(_UnAuthorized value),
    @required Result authorized(_Authorized value),
    @required Result loading(_Loading value),
  }) {
    assert(unAuthorized != null);
    assert(authorized != null);
    assert(loading != null);
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unAuthorized(_UnAuthorized value),
    Result authorized(_Authorized value),
    Result loading(_Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized extends AppState {
  _Authorized._() : super._();
  factory _Authorized() = _$_Authorized;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unAuthorized(),
    @required Result authorized(),
    @required Result loading(),
  }) {
    assert(unAuthorized != null);
    assert(authorized != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unAuthorized(),
    Result authorized(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unAuthorized(_UnAuthorized value),
    @required Result authorized(_Authorized value),
    @required Result loading(_Loading value),
  }) {
    assert(unAuthorized != null);
    assert(authorized != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unAuthorized(_UnAuthorized value),
    Result authorized(_Authorized value),
    Result loading(_Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AppState {
  const _Loading._() : super._();
  const factory _Loading() = _$_Loading;
}
