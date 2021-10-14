// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'direccion_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DireccionStateTearOff {
  const _$DireccionStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _NoData noData() {
    return const _NoData();
  }

  _HasData hasData(List<DireccionModel>? DireccionStream) {
    return _HasData(
      DireccionStream,
    );
  }

  _HasError hasError(String? error) {
    return _HasError(
      error,
    );
  }
}

/// @nodoc
const $DireccionState = _$DireccionStateTearOff();

/// @nodoc
mixin _$DireccionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function(List<DireccionModel>? DireccionStream) hasData,
    required TResult Function(String? error) hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoData value) noData,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_HasError value) hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DireccionStateCopyWith<$Res> {
  factory $DireccionStateCopyWith(
          DireccionState value, $Res Function(DireccionState) then) =
      _$DireccionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DireccionStateCopyWithImpl<$Res>
    implements $DireccionStateCopyWith<$Res> {
  _$DireccionStateCopyWithImpl(this._value, this._then);

  final DireccionState _value;
  // ignore: unused_field
  final $Res Function(DireccionState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DireccionStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DireccionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function(List<DireccionModel>? DireccionStream) hasData,
    required TResult Function(String? error) hasError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoData value) noData,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_HasError value) hasError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DireccionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res> extends _$DireccionStateCopyWithImpl<$Res>
    implements _$NoDataCopyWith<$Res> {
  __$NoDataCopyWithImpl(_NoData _value, $Res Function(_NoData) _then)
      : super(_value, (v) => _then(v as _NoData));

  @override
  _NoData get _value => super._value as _NoData;
}

/// @nodoc

class _$_NoData implements _NoData {
  const _$_NoData();

  @override
  String toString() {
    return 'DireccionState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function(List<DireccionModel>? DireccionStream) hasData,
    required TResult Function(String? error) hasError,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoData value) noData,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_HasError value) hasError,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements DireccionState {
  const factory _NoData() = _$_NoData;
}

/// @nodoc
abstract class _$HasDataCopyWith<$Res> {
  factory _$HasDataCopyWith(_HasData value, $Res Function(_HasData) then) =
      __$HasDataCopyWithImpl<$Res>;
  $Res call({List<DireccionModel>? DireccionStream});
}

/// @nodoc
class __$HasDataCopyWithImpl<$Res> extends _$DireccionStateCopyWithImpl<$Res>
    implements _$HasDataCopyWith<$Res> {
  __$HasDataCopyWithImpl(_HasData _value, $Res Function(_HasData) _then)
      : super(_value, (v) => _then(v as _HasData));

  @override
  _HasData get _value => super._value as _HasData;

  @override
  $Res call({
    Object? DireccionStream = freezed,
  }) {
    return _then(_HasData(
      DireccionStream == freezed
          ? _value.DireccionStream
          : DireccionStream // ignore: cast_nullable_to_non_nullable
              as List<DireccionModel>?,
    ));
  }
}

/// @nodoc

class _$_HasData implements _HasData {
  const _$_HasData(this.DireccionStream);

  @override
  final List<DireccionModel>? DireccionStream;

  @override
  String toString() {
    return 'DireccionState.hasData(DireccionStream: $DireccionStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasData &&
            (identical(other.DireccionStream, DireccionStream) ||
                const DeepCollectionEquality()
                    .equals(other.DireccionStream, DireccionStream)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(DireccionStream);

  @JsonKey(ignore: true)
  @override
  _$HasDataCopyWith<_HasData> get copyWith =>
      __$HasDataCopyWithImpl<_HasData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function(List<DireccionModel>? DireccionStream) hasData,
    required TResult Function(String? error) hasError,
  }) {
    return hasData(DireccionStream);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
  }) {
    return hasData?.call(DireccionStream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(DireccionStream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoData value) noData,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_HasError value) hasError,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasData implements DireccionState {
  const factory _HasData(List<DireccionModel>? DireccionStream) = _$_HasData;

  List<DireccionModel>? get DireccionStream =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasDataCopyWith<_HasData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasErrorCopyWith<$Res> {
  factory _$HasErrorCopyWith(_HasError value, $Res Function(_HasError) then) =
      __$HasErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$HasErrorCopyWithImpl<$Res> extends _$DireccionStateCopyWithImpl<$Res>
    implements _$HasErrorCopyWith<$Res> {
  __$HasErrorCopyWithImpl(_HasError _value, $Res Function(_HasError) _then)
      : super(_value, (v) => _then(v as _HasError));

  @override
  _HasError get _value => super._value as _HasError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_HasError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HasError implements _HasError {
  const _$_HasError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'DireccionState.hasError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$HasErrorCopyWith<_HasError> get copyWith =>
      __$HasErrorCopyWithImpl<_HasError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noData,
    required TResult Function(List<DireccionModel>? DireccionStream) hasData,
    required TResult Function(String? error) hasError,
  }) {
    return hasError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
  }) {
    return hasError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noData,
    TResult Function(List<DireccionModel>? DireccionStream)? hasData,
    TResult Function(String? error)? hasError,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoData value) noData,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_HasError value) hasError,
  }) {
    return hasError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
  }) {
    return hasError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoData value)? noData,
    TResult Function(_HasData value)? hasData,
    TResult Function(_HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(this);
    }
    return orElse();
  }
}

abstract class _HasError implements DireccionState {
  const factory _HasError(String? error) = _$_HasError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasErrorCopyWith<_HasError> get copyWith =>
      throw _privateConstructorUsedError;
}
