// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocEpisode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            List<Episodes> data, bool isLoading, String? errorMessage)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodeInitial value) initial,
    required TResult Function(StateEpisodeLoading value) loading,
    required TResult Function(StateEpisodeError value) error,
    required TResult Function(StateEpisodeData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocEpisodeCopyWith<$Res> {
  factory $StateBlocEpisodeCopyWith(
          StateBlocEpisode value, $Res Function(StateBlocEpisode) then) =
      _$StateBlocEpisodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocEpisodeCopyWithImpl<$Res>
    implements $StateBlocEpisodeCopyWith<$Res> {
  _$StateBlocEpisodeCopyWithImpl(this._value, this._then);

  final StateBlocEpisode _value;
  // ignore: unused_field
  final $Res Function(StateBlocEpisode) _then;
}

/// @nodoc
abstract class _$$StateEpisodeInitialCopyWith<$Res> {
  factory _$$StateEpisodeInitialCopyWith(_$StateEpisodeInitial value,
          $Res Function(_$StateEpisodeInitial) then) =
      __$$StateEpisodeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateEpisodeInitialCopyWithImpl<$Res>
    extends _$StateBlocEpisodeCopyWithImpl<$Res>
    implements _$$StateEpisodeInitialCopyWith<$Res> {
  __$$StateEpisodeInitialCopyWithImpl(
      _$StateEpisodeInitial _value, $Res Function(_$StateEpisodeInitial) _then)
      : super(_value, (v) => _then(v as _$StateEpisodeInitial));

  @override
  _$StateEpisodeInitial get _value => super._value as _$StateEpisodeInitial;
}

/// @nodoc

class _$StateEpisodeInitial implements StateEpisodeInitial {
  const _$StateEpisodeInitial();

  @override
  String toString() {
    return 'StateBlocEpisode.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateEpisodeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            List<Episodes> data, bool isLoading, String? errorMessage)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
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
    required TResult Function(StateEpisodeInitial value) initial,
    required TResult Function(StateEpisodeLoading value) loading,
    required TResult Function(StateEpisodeError value) error,
    required TResult Function(StateEpisodeData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateEpisodeInitial implements StateBlocEpisode {
  const factory StateEpisodeInitial() = _$StateEpisodeInitial;
}

/// @nodoc
abstract class _$$StateEpisodeLoadingCopyWith<$Res> {
  factory _$$StateEpisodeLoadingCopyWith(_$StateEpisodeLoading value,
          $Res Function(_$StateEpisodeLoading) then) =
      __$$StateEpisodeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateEpisodeLoadingCopyWithImpl<$Res>
    extends _$StateBlocEpisodeCopyWithImpl<$Res>
    implements _$$StateEpisodeLoadingCopyWith<$Res> {
  __$$StateEpisodeLoadingCopyWithImpl(
      _$StateEpisodeLoading _value, $Res Function(_$StateEpisodeLoading) _then)
      : super(_value, (v) => _then(v as _$StateEpisodeLoading));

  @override
  _$StateEpisodeLoading get _value => super._value as _$StateEpisodeLoading;
}

/// @nodoc

class _$StateEpisodeLoading implements StateEpisodeLoading {
  const _$StateEpisodeLoading();

  @override
  String toString() {
    return 'StateBlocEpisode.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateEpisodeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            List<Episodes> data, bool isLoading, String? errorMessage)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
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
    required TResult Function(StateEpisodeInitial value) initial,
    required TResult Function(StateEpisodeLoading value) loading,
    required TResult Function(StateEpisodeError value) error,
    required TResult Function(StateEpisodeData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateEpisodeLoading implements StateBlocEpisode {
  const factory StateEpisodeLoading() = _$StateEpisodeLoading;
}

/// @nodoc
abstract class _$$StateEpisodeErrorCopyWith<$Res> {
  factory _$$StateEpisodeErrorCopyWith(
          _$StateEpisodeError value, $Res Function(_$StateEpisodeError) then) =
      __$$StateEpisodeErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$StateEpisodeErrorCopyWithImpl<$Res>
    extends _$StateBlocEpisodeCopyWithImpl<$Res>
    implements _$$StateEpisodeErrorCopyWith<$Res> {
  __$$StateEpisodeErrorCopyWithImpl(
      _$StateEpisodeError _value, $Res Function(_$StateEpisodeError) _then)
      : super(_value, (v) => _then(v as _$StateEpisodeError));

  @override
  _$StateEpisodeError get _value => super._value as _$StateEpisodeError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StateEpisodeError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateEpisodeError implements StateEpisodeError {
  const _$StateEpisodeError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StateBlocEpisode.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEpisodeError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StateEpisodeErrorCopyWith<_$StateEpisodeError> get copyWith =>
      __$$StateEpisodeErrorCopyWithImpl<_$StateEpisodeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            List<Episodes> data, bool isLoading, String? errorMessage)
        data,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
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
    required TResult Function(StateEpisodeInitial value) initial,
    required TResult Function(StateEpisodeLoading value) loading,
    required TResult Function(StateEpisodeError value) error,
    required TResult Function(StateEpisodeData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateEpisodeError implements StateBlocEpisode {
  const factory StateEpisodeError(final String error) = _$StateEpisodeError;

  String get error;
  @JsonKey(ignore: true)
  _$$StateEpisodeErrorCopyWith<_$StateEpisodeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateEpisodeDataCopyWith<$Res> {
  factory _$$StateEpisodeDataCopyWith(
          _$StateEpisodeData value, $Res Function(_$StateEpisodeData) then) =
      __$$StateEpisodeDataCopyWithImpl<$Res>;
  $Res call({List<Episodes> data, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$StateEpisodeDataCopyWithImpl<$Res>
    extends _$StateBlocEpisodeCopyWithImpl<$Res>
    implements _$$StateEpisodeDataCopyWith<$Res> {
  __$$StateEpisodeDataCopyWithImpl(
      _$StateEpisodeData _value, $Res Function(_$StateEpisodeData) _then)
      : super(_value, (v) => _then(v as _$StateEpisodeData));

  @override
  _$StateEpisodeData get _value => super._value as _$StateEpisodeData;

  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$StateEpisodeData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Episodes>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StateEpisodeData implements StateEpisodeData {
  const _$StateEpisodeData(
      {required final List<Episodes> data,
      this.isLoading = false,
      this.errorMessage})
      : _data = data;

  final List<Episodes> _data;
  @override
  List<Episodes> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'StateBlocEpisode.data(data: $data, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateEpisodeData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$StateEpisodeDataCopyWith<_$StateEpisodeData> get copyWith =>
      __$$StateEpisodeDataCopyWithImpl<_$StateEpisodeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            List<Episodes> data, bool isLoading, String? errorMessage)
        data,
  }) {
    return data(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
  }) {
    return data?.call(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Episodes> data, bool isLoading, String? errorMessage)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateEpisodeInitial value) initial,
    required TResult Function(StateEpisodeLoading value) loading,
    required TResult Function(StateEpisodeError value) error,
    required TResult Function(StateEpisodeData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateEpisodeInitial value)? initial,
    TResult Function(StateEpisodeLoading value)? loading,
    TResult Function(StateEpisodeError value)? error,
    TResult Function(StateEpisodeData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateEpisodeData implements StateBlocEpisode {
  const factory StateEpisodeData(
      {required final List<Episodes> data,
      final bool isLoading,
      final String? errorMessage}) = _$StateEpisodeData;

  List<Episodes> get data;
  bool get isLoading;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$StateEpisodeDataCopyWith<_$StateEpisodeData> get copyWith =>
      throw _privateConstructorUsedError;
}
