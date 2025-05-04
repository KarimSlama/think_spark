// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometrics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BiometricsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricsStateCopyWith<$Res> {
  factory $BiometricsStateCopyWith(
          BiometricsState value, $Res Function(BiometricsState) then) =
      _$BiometricsStateCopyWithImpl<$Res, BiometricsState>;
}

/// @nodoc
class _$BiometricsStateCopyWithImpl<$Res, $Val extends BiometricsState>
    implements $BiometricsStateCopyWith<$Res> {
  _$BiometricsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiometricsState
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
    extends _$BiometricsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BiometricsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BiometricsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BiometricsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BiometricsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BiometricsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$IsSupportedImplCopyWith<$Res> {
  factory _$$IsSupportedImplCopyWith(
          _$IsSupportedImpl value, $Res Function(_$IsSupportedImpl) then) =
      __$$IsSupportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSupported});
}

/// @nodoc
class __$$IsSupportedImplCopyWithImpl<$Res>
    extends _$BiometricsStateCopyWithImpl<$Res, _$IsSupportedImpl>
    implements _$$IsSupportedImplCopyWith<$Res> {
  __$$IsSupportedImplCopyWithImpl(
      _$IsSupportedImpl _value, $Res Function(_$IsSupportedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSupported = null,
  }) {
    return _then(_$IsSupportedImpl(
      isSupported: null == isSupported
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsSupportedImpl implements _IsSupported {
  const _$IsSupportedImpl({required this.isSupported});

  @override
  final bool isSupported;

  @override
  String toString() {
    return 'BiometricsState.isSupported(isSupported: $isSupported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSupportedImpl &&
            (identical(other.isSupported, isSupported) ||
                other.isSupported == isSupported));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSupported);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSupportedImplCopyWith<_$IsSupportedImpl> get copyWith =>
      __$$IsSupportedImplCopyWithImpl<_$IsSupportedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) {
    return isSupported(this.isSupported);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) {
    return isSupported?.call(this.isSupported);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
    required TResult orElse(),
  }) {
    if (isSupported != null) {
      return isSupported(this.isSupported);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) {
    return isSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) {
    return isSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) {
    if (isSupported != null) {
      return isSupported(this);
    }
    return orElse();
  }
}

abstract class _IsSupported implements BiometricsState {
  const factory _IsSupported({required final bool isSupported}) =
      _$IsSupportedImpl;

  bool get isSupported;

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsSupportedImplCopyWith<_$IsSupportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BiometricAuthenticatedImplCopyWith<$Res> {
  factory _$$BiometricAuthenticatedImplCopyWith(
          _$BiometricAuthenticatedImpl value,
          $Res Function(_$BiometricAuthenticatedImpl) then) =
      __$$BiometricAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuthenticated});
}

/// @nodoc
class __$$BiometricAuthenticatedImplCopyWithImpl<$Res>
    extends _$BiometricsStateCopyWithImpl<$Res, _$BiometricAuthenticatedImpl>
    implements _$$BiometricAuthenticatedImplCopyWith<$Res> {
  __$$BiometricAuthenticatedImplCopyWithImpl(
      _$BiometricAuthenticatedImpl _value,
      $Res Function(_$BiometricAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
  }) {
    return _then(_$BiometricAuthenticatedImpl(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BiometricAuthenticatedImpl implements BiometricAuthenticated {
  const _$BiometricAuthenticatedImpl({required this.isAuthenticated});

  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'BiometricsState.biometricAuthenticated(isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricAuthenticatedImpl &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthenticated);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricAuthenticatedImplCopyWith<_$BiometricAuthenticatedImpl>
      get copyWith => __$$BiometricAuthenticatedImplCopyWithImpl<
          _$BiometricAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) {
    return biometricAuthenticated(isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) {
    return biometricAuthenticated?.call(isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
    required TResult orElse(),
  }) {
    if (biometricAuthenticated != null) {
      return biometricAuthenticated(isAuthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) {
    return biometricAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) {
    return biometricAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) {
    if (biometricAuthenticated != null) {
      return biometricAuthenticated(this);
    }
    return orElse();
  }
}

abstract class BiometricAuthenticated implements BiometricsState {
  const factory BiometricAuthenticated({required final bool isAuthenticated}) =
      _$BiometricAuthenticatedImpl;

  bool get isAuthenticated;

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricAuthenticatedImplCopyWith<_$BiometricAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BiometricAvailableImplCopyWith<$Res> {
  factory _$$BiometricAvailableImplCopyWith(_$BiometricAvailableImpl value,
          $Res Function(_$BiometricAvailableImpl) then) =
      __$$BiometricAvailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BiometricType> biometrics});
}

/// @nodoc
class __$$BiometricAvailableImplCopyWithImpl<$Res>
    extends _$BiometricsStateCopyWithImpl<$Res, _$BiometricAvailableImpl>
    implements _$$BiometricAvailableImplCopyWith<$Res> {
  __$$BiometricAvailableImplCopyWithImpl(_$BiometricAvailableImpl _value,
      $Res Function(_$BiometricAvailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biometrics = null,
  }) {
    return _then(_$BiometricAvailableImpl(
      null == biometrics
          ? _value._biometrics
          : biometrics // ignore: cast_nullable_to_non_nullable
              as List<BiometricType>,
    ));
  }
}

/// @nodoc

class _$BiometricAvailableImpl implements BiometricAvailable {
  const _$BiometricAvailableImpl(final List<BiometricType> biometrics)
      : _biometrics = biometrics;

  final List<BiometricType> _biometrics;
  @override
  List<BiometricType> get biometrics {
    if (_biometrics is EqualUnmodifiableListView) return _biometrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_biometrics);
  }

  @override
  String toString() {
    return 'BiometricsState.biometricAvailable(biometrics: $biometrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricAvailableImpl &&
            const DeepCollectionEquality()
                .equals(other._biometrics, _biometrics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_biometrics));

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricAvailableImplCopyWith<_$BiometricAvailableImpl> get copyWith =>
      __$$BiometricAvailableImplCopyWithImpl<_$BiometricAvailableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) {
    return biometricAvailable(biometrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) {
    return biometricAvailable?.call(biometrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
    required TResult orElse(),
  }) {
    if (biometricAvailable != null) {
      return biometricAvailable(biometrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) {
    return biometricAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) {
    return biometricAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) {
    if (biometricAvailable != null) {
      return biometricAvailable(this);
    }
    return orElse();
  }
}

abstract class BiometricAvailable implements BiometricsState {
  const factory BiometricAvailable(final List<BiometricType> biometrics) =
      _$BiometricAvailableImpl;

  List<BiometricType> get biometrics;

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricAvailableImplCopyWith<_$BiometricAvailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BiometricErrorImplCopyWith<$Res> {
  factory _$$BiometricErrorImplCopyWith(_$BiometricErrorImpl value,
          $Res Function(_$BiometricErrorImpl) then) =
      __$$BiometricErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BiometricErrorImplCopyWithImpl<$Res>
    extends _$BiometricsStateCopyWithImpl<$Res, _$BiometricErrorImpl>
    implements _$$BiometricErrorImplCopyWith<$Res> {
  __$$BiometricErrorImplCopyWithImpl(
      _$BiometricErrorImpl _value, $Res Function(_$BiometricErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BiometricErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BiometricErrorImpl implements BiometricError {
  const _$BiometricErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BiometricsState.biometricError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricErrorImplCopyWith<_$BiometricErrorImpl> get copyWith =>
      __$$BiometricErrorImplCopyWithImpl<_$BiometricErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSupported) isSupported,
    required TResult Function(bool isAuthenticated) biometricAuthenticated,
    required TResult Function(List<BiometricType> biometrics)
        biometricAvailable,
    required TResult Function(String error) biometricError,
  }) {
    return biometricError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSupported)? isSupported,
    TResult? Function(bool isAuthenticated)? biometricAuthenticated,
    TResult? Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult? Function(String error)? biometricError,
  }) {
    return biometricError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSupported)? isSupported,
    TResult Function(bool isAuthenticated)? biometricAuthenticated,
    TResult Function(List<BiometricType> biometrics)? biometricAvailable,
    TResult Function(String error)? biometricError,
    required TResult orElse(),
  }) {
    if (biometricError != null) {
      return biometricError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(_IsSupported value) isSupported,
    required TResult Function(BiometricAuthenticated value)
        biometricAuthenticated,
    required TResult Function(BiometricAvailable value) biometricAvailable,
    required TResult Function(BiometricError value) biometricError,
  }) {
    return biometricError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(_IsSupported value)? isSupported,
    TResult? Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult? Function(BiometricAvailable value)? biometricAvailable,
    TResult? Function(BiometricError value)? biometricError,
  }) {
    return biometricError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(_IsSupported value)? isSupported,
    TResult Function(BiometricAuthenticated value)? biometricAuthenticated,
    TResult Function(BiometricAvailable value)? biometricAvailable,
    TResult Function(BiometricError value)? biometricError,
    required TResult orElse(),
  }) {
    if (biometricError != null) {
      return biometricError(this);
    }
    return orElse();
  }
}

abstract class BiometricError implements BiometricsState {
  const factory BiometricError({required final String error}) =
      _$BiometricErrorImpl;

  String get error;

  /// Create a copy of BiometricsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricErrorImplCopyWith<_$BiometricErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
