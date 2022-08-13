// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationInitial value) initial,
    required TResult Function(StateLocationLoading value) loading,
    required TResult Function(StateLocationData value) data,
    required TResult Function(StateLocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocLocationCopyWith<$Res> {
  factory $StateBlocLocationCopyWith(
          StateBlocLocation value, $Res Function(StateBlocLocation) then) =
      _$StateBlocLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocLocationCopyWithImpl<$Res>
    implements $StateBlocLocationCopyWith<$Res> {
  _$StateBlocLocationCopyWithImpl(this._value, this._then);

  final StateBlocLocation _value;
  // ignore: unused_field
  final $Res Function(StateBlocLocation) _then;
}

/// @nodoc
abstract class _$$StateLocationInitialCopyWith<$Res> {
  factory _$$StateLocationInitialCopyWith(_$StateLocationInitial value,
          $Res Function(_$StateLocationInitial) then) =
      __$$StateLocationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateLocationInitialCopyWithImpl<$Res>
    extends _$StateBlocLocationCopyWithImpl<$Res>
    implements _$$StateLocationInitialCopyWith<$Res> {
  __$$StateLocationInitialCopyWithImpl(_$StateLocationInitial _value,
      $Res Function(_$StateLocationInitial) _then)
      : super(_value, (v) => _then(v as _$StateLocationInitial));

  @override
  _$StateLocationInitial get _value => super._value as _$StateLocationInitial;
}

/// @nodoc

class _$StateLocationInitial implements StateLocationInitial {
  const _$StateLocationInitial();

  @override
  String toString() {
    return 'StateBlocLocation.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateLocationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationInitial value) initial,
    required TResult Function(StateLocationLoading value) loading,
    required TResult Function(StateLocationData value) data,
    required TResult Function(StateLocationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateLocationInitial implements StateBlocLocation {
  const factory StateLocationInitial() = _$StateLocationInitial;
}

/// @nodoc
abstract class _$$StateLocationLoadingCopyWith<$Res> {
  factory _$$StateLocationLoadingCopyWith(_$StateLocationLoading value,
          $Res Function(_$StateLocationLoading) then) =
      __$$StateLocationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateLocationLoadingCopyWithImpl<$Res>
    extends _$StateBlocLocationCopyWithImpl<$Res>
    implements _$$StateLocationLoadingCopyWith<$Res> {
  __$$StateLocationLoadingCopyWithImpl(_$StateLocationLoading _value,
      $Res Function(_$StateLocationLoading) _then)
      : super(_value, (v) => _then(v as _$StateLocationLoading));

  @override
  _$StateLocationLoading get _value => super._value as _$StateLocationLoading;
}

/// @nodoc

class _$StateLocationLoading implements StateLocationLoading {
  const _$StateLocationLoading();

  @override
  String toString() {
    return 'StateBlocLocation.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateLocationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
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
    required TResult Function(StateLocationInitial value) initial,
    required TResult Function(StateLocationLoading value) loading,
    required TResult Function(StateLocationData value) data,
    required TResult Function(StateLocationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateLocationLoading implements StateBlocLocation {
  const factory StateLocationLoading() = _$StateLocationLoading;
}

/// @nodoc
abstract class _$$StateLocationDataCopyWith<$Res> {
  factory _$$StateLocationDataCopyWith(
          _$StateLocationData value, $Res Function(_$StateLocationData) then) =
      __$$StateLocationDataCopyWithImpl<$Res>;
  $Res call({List<Location> data});
}

/// @nodoc
class __$$StateLocationDataCopyWithImpl<$Res>
    extends _$StateBlocLocationCopyWithImpl<$Res>
    implements _$$StateLocationDataCopyWith<$Res> {
  __$$StateLocationDataCopyWithImpl(
      _$StateLocationData _value, $Res Function(_$StateLocationData) _then)
      : super(_value, (v) => _then(v as _$StateLocationData));

  @override
  _$StateLocationData get _value => super._value as _$StateLocationData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StateLocationData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc

class _$StateLocationData implements StateLocationData {
  const _$StateLocationData({required final List<Location> data})
      : _data = data;

  final List<Location> _data;
  @override
  List<Location> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'StateBlocLocation.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateLocationData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$StateLocationDataCopyWith<_$StateLocationData> get copyWith =>
      __$$StateLocationDataCopyWithImpl<_$StateLocationData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationInitial value) initial,
    required TResult Function(StateLocationLoading value) loading,
    required TResult Function(StateLocationData value) data,
    required TResult Function(StateLocationError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateLocationData implements StateBlocLocation {
  const factory StateLocationData({required final List<Location> data}) =
      _$StateLocationData;

  List<Location> get data;
  @JsonKey(ignore: true)
  _$$StateLocationDataCopyWith<_$StateLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateLocationErrorCopyWith<$Res> {
  factory _$$StateLocationErrorCopyWith(_$StateLocationError value,
          $Res Function(_$StateLocationError) then) =
      __$$StateLocationErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$StateLocationErrorCopyWithImpl<$Res>
    extends _$StateBlocLocationCopyWithImpl<$Res>
    implements _$$StateLocationErrorCopyWith<$Res> {
  __$$StateLocationErrorCopyWithImpl(
      _$StateLocationError _value, $Res Function(_$StateLocationError) _then)
      : super(_value, (v) => _then(v as _$StateLocationError));

  @override
  _$StateLocationError get _value => super._value as _$StateLocationError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StateLocationError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateLocationError implements StateLocationError {
  const _$StateLocationError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StateBlocLocation.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateLocationError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StateLocationErrorCopyWith<_$StateLocationError> get copyWith =>
      __$$StateLocationErrorCopyWithImpl<_$StateLocationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateLocationInitial value) initial,
    required TResult Function(StateLocationLoading value) loading,
    required TResult Function(StateLocationData value) data,
    required TResult Function(StateLocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateLocationInitial value)? initial,
    TResult Function(StateLocationLoading value)? loading,
    TResult Function(StateLocationData value)? data,
    TResult Function(StateLocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateLocationError implements StateBlocLocation {
  const factory StateLocationError(final String error) = _$StateLocationError;

  String get error;
  @JsonKey(ignore: true)
  _$$StateLocationErrorCopyWith<_$StateLocationError> get copyWith =>
      throw _privateConstructorUsedError;
}
