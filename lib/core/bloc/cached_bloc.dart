import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:mg/core/bloc/base_bloc.dart';
import 'package:mg/core/type.dart';

abstract class CachedBloc<T> extends BaseBloc<T> {
  final Box cachedBox;

  CachedBloc(T state, this.cachedBox) : super(state);

  @override
  Future<void> close() async {
    await cachedBox.close();
    return super.close();
  }
}

abstract class SimpleCachedBloc<T, S> extends CachedBloc<T> {
  final Box<String> cachedBox;

  SimpleCachedBloc(T initialState, this.cachedBox)
      : super(initialState, cachedBox);

  Future<void> putValue(S data) {
    final dataString = jsonEncode(data);

    return cachedBox.put(_Key.cached, dataString);
  }

  S getValue(FromJson<S> fromJson) {
    final source = cachedBox.get(_Key.cached);

    if (source?.isEmpty ?? false) {
      return null;
    }

    final decodeObject = jsonDecode(source);

    return fromJson(decodeObject);
  }
}

class _Key {
  static const cached = 'cached';
}
