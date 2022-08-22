// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocCharacter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateCharacterInitial value) initial,
    required TResult Function(StateCharacterLoading value) loading,
    required TResult Function(StateCharacterData value) data,
    required TResult Function(StateCharacterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocCharacterCopyWith<$Res> {
  factory $StateBlocCharacterCopyWith(
          StateBlocCharacter value, $Res Function(StateBlocCharacter) then) =
      _$StateBlocCharacterCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocCharacterCopyWithImpl<$Res>
    implements $StateBlocCharacterCopyWith<$Res> {
  _$StateBlocCharacterCopyWithImpl(this._value, this._then);

  final StateBlocCharacter _value;
  // ignore: unused_field
  final $Res Function(StateBlocCharacter) _then;
}

/// @nodoc
abstract class _$$StateCharacterInitialCopyWith<$Res> {
  factory _$$StateCharacterInitialCopyWith(_$StateCharacterInitial value,
          $Res Function(_$StateCharacterInitial) then) =
      __$$StateCharacterInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateCharacterInitialCopyWithImpl<$Res>
    extends _$StateBlocCharacterCopyWithImpl<$Res>
    implements _$$StateCharacterInitialCopyWith<$Res> {
  __$$StateCharacterInitialCopyWithImpl(_$StateCharacterInitial _value,
      $Res Function(_$StateCharacterInitial) _then)
      : super(_value, (v) => _then(v as _$StateCharacterInitial));

  @override
  _$StateCharacterInitial get _value => super._value as _$StateCharacterInitial;
}

/// @nodoc

class _$StateCharacterInitial
    with DiagnosticableTreeMixin
    implements StateCharacterInitial {
  const _$StateCharacterInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocCharacter.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateBlocCharacter.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateCharacterInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
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
    required TResult Function(StateCharacterInitial value) initial,
    required TResult Function(StateCharacterLoading value) loading,
    required TResult Function(StateCharacterData value) data,
    required TResult Function(StateCharacterError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateCharacterInitial implements StateBlocCharacter {
  const factory StateCharacterInitial() = _$StateCharacterInitial;
}

/// @nodoc
abstract class _$$StateCharacterLoadingCopyWith<$Res> {
  factory _$$StateCharacterLoadingCopyWith(_$StateCharacterLoading value,
          $Res Function(_$StateCharacterLoading) then) =
      __$$StateCharacterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateCharacterLoadingCopyWithImpl<$Res>
    extends _$StateBlocCharacterCopyWithImpl<$Res>
    implements _$$StateCharacterLoadingCopyWith<$Res> {
  __$$StateCharacterLoadingCopyWithImpl(_$StateCharacterLoading _value,
      $Res Function(_$StateCharacterLoading) _then)
      : super(_value, (v) => _then(v as _$StateCharacterLoading));

  @override
  _$StateCharacterLoading get _value => super._value as _$StateCharacterLoading;
}

/// @nodoc

class _$StateCharacterLoading
    with DiagnosticableTreeMixin
    implements StateCharacterLoading {
  const _$StateCharacterLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocCharacter.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateBlocCharacter.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateCharacterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
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
    required TResult Function(StateCharacterInitial value) initial,
    required TResult Function(StateCharacterLoading value) loading,
    required TResult Function(StateCharacterData value) data,
    required TResult Function(StateCharacterError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateCharacterLoading implements StateBlocCharacter {
  const factory StateCharacterLoading() = _$StateCharacterLoading;
}

/// @nodoc
abstract class _$$StateCharacterDataCopyWith<$Res> {
  factory _$$StateCharacterDataCopyWith(_$StateCharacterData value,
          $Res Function(_$StateCharacterData) then) =
      __$$StateCharacterDataCopyWithImpl<$Res>;
  $Res call({List<Character> data});
}

/// @nodoc
class __$$StateCharacterDataCopyWithImpl<$Res>
    extends _$StateBlocCharacterCopyWithImpl<$Res>
    implements _$$StateCharacterDataCopyWith<$Res> {
  __$$StateCharacterDataCopyWithImpl(
      _$StateCharacterData _value, $Res Function(_$StateCharacterData) _then)
      : super(_value, (v) => _then(v as _$StateCharacterData));

  @override
  _$StateCharacterData get _value => super._value as _$StateCharacterData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StateCharacterData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$StateCharacterData
    with DiagnosticableTreeMixin
    implements StateCharacterData {
  const _$StateCharacterData({required final List<Character> data})
      : _data = data;

  final List<Character> _data;
  @override
  List<Character> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocCharacter.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateBlocCharacter.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateCharacterData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$StateCharacterDataCopyWith<_$StateCharacterData> get copyWith =>
      __$$StateCharacterDataCopyWithImpl<_$StateCharacterData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
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
    required TResult Function(StateCharacterInitial value) initial,
    required TResult Function(StateCharacterLoading value) loading,
    required TResult Function(StateCharacterData value) data,
    required TResult Function(StateCharacterError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateCharacterData implements StateBlocCharacter {
  const factory StateCharacterData({required final List<Character> data}) =
      _$StateCharacterData;

  List<Character> get data;
  @JsonKey(ignore: true)
  _$$StateCharacterDataCopyWith<_$StateCharacterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateCharacterErrorCopyWith<$Res> {
  factory _$$StateCharacterErrorCopyWith(_$StateCharacterError value,
          $Res Function(_$StateCharacterError) then) =
      __$$StateCharacterErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$StateCharacterErrorCopyWithImpl<$Res>
    extends _$StateBlocCharacterCopyWithImpl<$Res>
    implements _$$StateCharacterErrorCopyWith<$Res> {
  __$$StateCharacterErrorCopyWithImpl(
      _$StateCharacterError _value, $Res Function(_$StateCharacterError) _then)
      : super(_value, (v) => _then(v as _$StateCharacterError));

  @override
  _$StateCharacterError get _value => super._value as _$StateCharacterError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StateCharacterError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateCharacterError
    with DiagnosticableTreeMixin
    implements StateCharacterError {
  const _$StateCharacterError(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateBlocCharacter.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateBlocCharacter.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateCharacterError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StateCharacterErrorCopyWith<_$StateCharacterError> get copyWith =>
      __$$StateCharacterErrorCopyWithImpl<_$StateCharacterError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data)? data,
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
    required TResult Function(StateCharacterInitial value) initial,
    required TResult Function(StateCharacterLoading value) loading,
    required TResult Function(StateCharacterData value) data,
    required TResult Function(StateCharacterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharacterInitial value)? initial,
    TResult Function(StateCharacterLoading value)? loading,
    TResult Function(StateCharacterData value)? data,
    TResult Function(StateCharacterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateCharacterError implements StateBlocCharacter {
  const factory StateCharacterError(final String error) = _$StateCharacterError;

  String get error;
  @JsonKey(ignore: true)
  _$$StateCharacterErrorCopyWith<_$StateCharacterError> get copyWith =>
      throw _privateConstructorUsedError;
}
