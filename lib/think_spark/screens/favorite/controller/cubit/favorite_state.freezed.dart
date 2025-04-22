// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(String error) favoriteError,
    required TResult Function(List<IdeaResponse> data) favoriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(String error)? favoriteError,
    TResult? Function(List<IdeaResponse> data)? favoriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(String error)? favoriteError,
    TResult Function(List<IdeaResponse> data)? favoriteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavoriteLoading value) favoriteLoading,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteSuccess value) favoriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavoriteLoading value)? favoriteLoading,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteSuccess value)? favoriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavoriteLoading value)? favoriteLoading,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteSuccess value)? favoriteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(String error) favoriteError,
    required TResult Function(List<IdeaResponse> data) favoriteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(String error)? favoriteError,
    TResult? Function(List<IdeaResponse> data)? favoriteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(String error)? favoriteError,
    TResult Function(List<IdeaResponse> data)? favoriteSuccess,
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
    required TResult Function(Initial value) initial,
    required TResult Function(FavoriteLoading value) favoriteLoading,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteSuccess value) favoriteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavoriteLoading value)? favoriteLoading,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteSuccess value)? favoriteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavoriteLoading value)? favoriteLoading,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteSuccess value)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FavoriteState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FavoriteLoadingImplCopyWith<$Res> {
  factory _$$FavoriteLoadingImplCopyWith(_$FavoriteLoadingImpl value,
          $Res Function(_$FavoriteLoadingImpl) then) =
      __$$FavoriteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteLoadingImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteLoadingImpl>
    implements _$$FavoriteLoadingImplCopyWith<$Res> {
  __$$FavoriteLoadingImplCopyWithImpl(
      _$FavoriteLoadingImpl _value, $Res Function(_$FavoriteLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoriteLoadingImpl implements FavoriteLoading {
  const _$FavoriteLoadingImpl();

  @override
  String toString() {
    return 'FavoriteState.favoriteLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(String error) favoriteError,
    required TResult Function(List<IdeaResponse> data) favoriteSuccess,
  }) {
    return favoriteLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(String error)? favoriteError,
    TResult? Function(List<IdeaResponse> data)? favoriteSuccess,
  }) {
    return favoriteLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(String error)? favoriteError,
    TResult Function(List<IdeaResponse> data)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (favoriteLoading != null) {
      return favoriteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavoriteLoading value) favoriteLoading,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteSuccess value) favoriteSuccess,
  }) {
    return favoriteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavoriteLoading value)? favoriteLoading,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteSuccess value)? favoriteSuccess,
  }) {
    return favoriteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavoriteLoading value)? favoriteLoading,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteSuccess value)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (favoriteLoading != null) {
      return favoriteLoading(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoading implements FavoriteState {
  const factory FavoriteLoading() = _$FavoriteLoadingImpl;
}

/// @nodoc
abstract class _$$FavoriteErrorImplCopyWith<$Res> {
  factory _$$FavoriteErrorImplCopyWith(
          _$FavoriteErrorImpl value, $Res Function(_$FavoriteErrorImpl) then) =
      __$$FavoriteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FavoriteErrorImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteErrorImpl>
    implements _$$FavoriteErrorImplCopyWith<$Res> {
  __$$FavoriteErrorImplCopyWithImpl(
      _$FavoriteErrorImpl _value, $Res Function(_$FavoriteErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FavoriteErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteErrorImpl implements FavoriteError {
  const _$FavoriteErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteState.favoriteError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteErrorImplCopyWith<_$FavoriteErrorImpl> get copyWith =>
      __$$FavoriteErrorImplCopyWithImpl<_$FavoriteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(String error) favoriteError,
    required TResult Function(List<IdeaResponse> data) favoriteSuccess,
  }) {
    return favoriteError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(String error)? favoriteError,
    TResult? Function(List<IdeaResponse> data)? favoriteSuccess,
  }) {
    return favoriteError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(String error)? favoriteError,
    TResult Function(List<IdeaResponse> data)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (favoriteError != null) {
      return favoriteError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavoriteLoading value) favoriteLoading,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteSuccess value) favoriteSuccess,
  }) {
    return favoriteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavoriteLoading value)? favoriteLoading,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteSuccess value)? favoriteSuccess,
  }) {
    return favoriteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavoriteLoading value)? favoriteLoading,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteSuccess value)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (favoriteError != null) {
      return favoriteError(this);
    }
    return orElse();
  }
}

abstract class FavoriteError implements FavoriteState {
  const factory FavoriteError(final String error) = _$FavoriteErrorImpl;

  String get error;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteErrorImplCopyWith<_$FavoriteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteSuccessImplCopyWith<$Res> {
  factory _$$FavoriteSuccessImplCopyWith(_$FavoriteSuccessImpl value,
          $Res Function(_$FavoriteSuccessImpl) then) =
      __$$FavoriteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IdeaResponse> data});
}

/// @nodoc
class __$$FavoriteSuccessImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteSuccessImpl>
    implements _$$FavoriteSuccessImplCopyWith<$Res> {
  __$$FavoriteSuccessImplCopyWithImpl(
      _$FavoriteSuccessImpl _value, $Res Function(_$FavoriteSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FavoriteSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<IdeaResponse>,
    ));
  }
}

/// @nodoc

class _$FavoriteSuccessImpl implements FavoriteSuccess {
  const _$FavoriteSuccessImpl(final List<IdeaResponse> data) : _data = data;

  final List<IdeaResponse> _data;
  @override
  List<IdeaResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FavoriteState.favoriteSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteSuccessImplCopyWith<_$FavoriteSuccessImpl> get copyWith =>
      __$$FavoriteSuccessImplCopyWithImpl<_$FavoriteSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(String error) favoriteError,
    required TResult Function(List<IdeaResponse> data) favoriteSuccess,
  }) {
    return favoriteSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(String error)? favoriteError,
    TResult? Function(List<IdeaResponse> data)? favoriteSuccess,
  }) {
    return favoriteSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(String error)? favoriteError,
    TResult Function(List<IdeaResponse> data)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (favoriteSuccess != null) {
      return favoriteSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavoriteLoading value) favoriteLoading,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteSuccess value) favoriteSuccess,
  }) {
    return favoriteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavoriteLoading value)? favoriteLoading,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteSuccess value)? favoriteSuccess,
  }) {
    return favoriteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavoriteLoading value)? favoriteLoading,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteSuccess value)? favoriteSuccess,
    required TResult orElse(),
  }) {
    if (favoriteSuccess != null) {
      return favoriteSuccess(this);
    }
    return orElse();
  }
}

abstract class FavoriteSuccess implements FavoriteState {
  const factory FavoriteSuccess(final List<IdeaResponse> data) =
      _$FavoriteSuccessImpl;

  List<IdeaResponse> get data;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteSuccessImplCopyWith<_$FavoriteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
