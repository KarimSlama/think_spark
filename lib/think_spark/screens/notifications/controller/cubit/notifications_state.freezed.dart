// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notificationLoading,
    required TResult Function(String error) notificationError,
    required TResult Function(List<Map<String, dynamic>> notifications)
        notificationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notificationLoading,
    TResult? Function(String error)? notificationError,
    TResult? Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notificationLoading,
    TResult Function(String error)? notificationError,
    TResult Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NotificationLoading value) notificationLoading,
    required TResult Function(NotificationError value) notificationError,
    required TResult Function(NotificationSuccess value) notificationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NotificationLoading value)? notificationLoading,
    TResult? Function(NotificationError value)? notificationError,
    TResult? Function(NotificationSuccess value)? notificationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NotificationLoading value)? notificationLoading,
    TResult Function(NotificationError value)? notificationError,
    TResult Function(NotificationSuccess value)? notificationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsState
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
    extends _$NotificationsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NotificationsState.initial()';
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
    required TResult Function() notificationLoading,
    required TResult Function(String error) notificationError,
    required TResult Function(List<Map<String, dynamic>> notifications)
        notificationSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notificationLoading,
    TResult? Function(String error)? notificationError,
    TResult? Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notificationLoading,
    TResult Function(String error)? notificationError,
    TResult Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
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
    required TResult Function(NotificationLoading value) notificationLoading,
    required TResult Function(NotificationError value) notificationError,
    required TResult Function(NotificationSuccess value) notificationSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NotificationLoading value)? notificationLoading,
    TResult? Function(NotificationError value)? notificationError,
    TResult? Function(NotificationSuccess value)? notificationSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NotificationLoading value)? notificationLoading,
    TResult Function(NotificationError value)? notificationError,
    TResult Function(NotificationSuccess value)? notificationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NotificationsState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NotificationLoadingImplCopyWith<$Res> {
  factory _$$NotificationLoadingImplCopyWith(_$NotificationLoadingImpl value,
          $Res Function(_$NotificationLoadingImpl) then) =
      __$$NotificationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationLoadingImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$NotificationLoadingImpl>
    implements _$$NotificationLoadingImplCopyWith<$Res> {
  __$$NotificationLoadingImplCopyWithImpl(_$NotificationLoadingImpl _value,
      $Res Function(_$NotificationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationLoadingImpl implements NotificationLoading {
  const _$NotificationLoadingImpl();

  @override
  String toString() {
    return 'NotificationsState.notificationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notificationLoading,
    required TResult Function(String error) notificationError,
    required TResult Function(List<Map<String, dynamic>> notifications)
        notificationSuccess,
  }) {
    return notificationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notificationLoading,
    TResult? Function(String error)? notificationError,
    TResult? Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
  }) {
    return notificationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notificationLoading,
    TResult Function(String error)? notificationError,
    TResult Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
    required TResult orElse(),
  }) {
    if (notificationLoading != null) {
      return notificationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NotificationLoading value) notificationLoading,
    required TResult Function(NotificationError value) notificationError,
    required TResult Function(NotificationSuccess value) notificationSuccess,
  }) {
    return notificationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NotificationLoading value)? notificationLoading,
    TResult? Function(NotificationError value)? notificationError,
    TResult? Function(NotificationSuccess value)? notificationSuccess,
  }) {
    return notificationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NotificationLoading value)? notificationLoading,
    TResult Function(NotificationError value)? notificationError,
    TResult Function(NotificationSuccess value)? notificationSuccess,
    required TResult orElse(),
  }) {
    if (notificationLoading != null) {
      return notificationLoading(this);
    }
    return orElse();
  }
}

abstract class NotificationLoading implements NotificationsState {
  const factory NotificationLoading() = _$NotificationLoadingImpl;
}

/// @nodoc
abstract class _$$NotificationErrorImplCopyWith<$Res> {
  factory _$$NotificationErrorImplCopyWith(_$NotificationErrorImpl value,
          $Res Function(_$NotificationErrorImpl) then) =
      __$$NotificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$NotificationErrorImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$NotificationErrorImpl>
    implements _$$NotificationErrorImplCopyWith<$Res> {
  __$$NotificationErrorImplCopyWithImpl(_$NotificationErrorImpl _value,
      $Res Function(_$NotificationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$NotificationErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationErrorImpl implements NotificationError {
  const _$NotificationErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NotificationsState.notificationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationErrorImplCopyWith<_$NotificationErrorImpl> get copyWith =>
      __$$NotificationErrorImplCopyWithImpl<_$NotificationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notificationLoading,
    required TResult Function(String error) notificationError,
    required TResult Function(List<Map<String, dynamic>> notifications)
        notificationSuccess,
  }) {
    return notificationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notificationLoading,
    TResult? Function(String error)? notificationError,
    TResult? Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
  }) {
    return notificationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notificationLoading,
    TResult Function(String error)? notificationError,
    TResult Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
    required TResult orElse(),
  }) {
    if (notificationError != null) {
      return notificationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NotificationLoading value) notificationLoading,
    required TResult Function(NotificationError value) notificationError,
    required TResult Function(NotificationSuccess value) notificationSuccess,
  }) {
    return notificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NotificationLoading value)? notificationLoading,
    TResult? Function(NotificationError value)? notificationError,
    TResult? Function(NotificationSuccess value)? notificationSuccess,
  }) {
    return notificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NotificationLoading value)? notificationLoading,
    TResult Function(NotificationError value)? notificationError,
    TResult Function(NotificationSuccess value)? notificationSuccess,
    required TResult orElse(),
  }) {
    if (notificationError != null) {
      return notificationError(this);
    }
    return orElse();
  }
}

abstract class NotificationError implements NotificationsState {
  const factory NotificationError(final String error) = _$NotificationErrorImpl;

  String get error;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationErrorImplCopyWith<_$NotificationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationSuccessImplCopyWith<$Res> {
  factory _$$NotificationSuccessImplCopyWith(_$NotificationSuccessImpl value,
          $Res Function(_$NotificationSuccessImpl) then) =
      __$$NotificationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> notifications});
}

/// @nodoc
class __$$NotificationSuccessImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$NotificationSuccessImpl>
    implements _$$NotificationSuccessImplCopyWith<$Res> {
  __$$NotificationSuccessImplCopyWithImpl(_$NotificationSuccessImpl _value,
      $Res Function(_$NotificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$NotificationSuccessImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$NotificationSuccessImpl implements NotificationSuccess {
  const _$NotificationSuccessImpl(
      {required final List<Map<String, dynamic>> notifications})
      : _notifications = notifications;

  final List<Map<String, dynamic>> _notifications;
  @override
  List<Map<String, dynamic>> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsState.notificationSuccess(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSuccessImplCopyWith<_$NotificationSuccessImpl> get copyWith =>
      __$$NotificationSuccessImplCopyWithImpl<_$NotificationSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notificationLoading,
    required TResult Function(String error) notificationError,
    required TResult Function(List<Map<String, dynamic>> notifications)
        notificationSuccess,
  }) {
    return notificationSuccess(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notificationLoading,
    TResult? Function(String error)? notificationError,
    TResult? Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
  }) {
    return notificationSuccess?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notificationLoading,
    TResult Function(String error)? notificationError,
    TResult Function(List<Map<String, dynamic>> notifications)?
        notificationSuccess,
    required TResult orElse(),
  }) {
    if (notificationSuccess != null) {
      return notificationSuccess(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NotificationLoading value) notificationLoading,
    required TResult Function(NotificationError value) notificationError,
    required TResult Function(NotificationSuccess value) notificationSuccess,
  }) {
    return notificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NotificationLoading value)? notificationLoading,
    TResult? Function(NotificationError value)? notificationError,
    TResult? Function(NotificationSuccess value)? notificationSuccess,
  }) {
    return notificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NotificationLoading value)? notificationLoading,
    TResult Function(NotificationError value)? notificationError,
    TResult Function(NotificationSuccess value)? notificationSuccess,
    required TResult orElse(),
  }) {
    if (notificationSuccess != null) {
      return notificationSuccess(this);
    }
    return orElse();
  }
}

abstract class NotificationSuccess implements NotificationsState {
  const factory NotificationSuccess(
          {required final List<Map<String, dynamic>> notifications}) =
      _$NotificationSuccessImpl;

  List<Map<String, dynamic>> get notifications;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSuccessImplCopyWith<_$NotificationSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
