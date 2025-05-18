// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
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
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
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
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChatState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
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
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChatState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationsResponse conversations});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$LoadedImpl(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as ConversationsResponse,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required this.conversations});

  @override
  final ConversationsResponse conversations;

  @override
  String toString() {
    return 'ChatState.loaded(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.conversations, conversations) ||
                other.conversations == conversations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversations);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return loaded(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return loaded?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ChatState {
  const factory Loaded({required final ConversationsResponse conversations}) =
      _$LoadedImpl;

  ConversationsResponse get conversations;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ChatState {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendingImplCopyWith<$Res> {
  factory _$$SendingImplCopyWith(
          _$SendingImpl value, $Res Function(_$SendingImpl) then) =
      __$$SendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SendingImpl>
    implements _$$SendingImplCopyWith<$Res> {
  __$$SendingImplCopyWithImpl(
      _$SendingImpl _value, $Res Function(_$SendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingImpl implements Sending {
  const _$SendingImpl();

  @override
  String toString() {
    return 'ChatState.sending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class Sending implements ChatState {
  const factory Sending() = _$SendingImpl;
}

/// @nodoc
abstract class _$$ConversationCreatedImplCopyWith<$Res> {
  factory _$$ConversationCreatedImplCopyWith(_$ConversationCreatedImpl value,
          $Res Function(_$ConversationCreatedImpl) then) =
      __$$ConversationCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendMessageResponse response});
}

/// @nodoc
class __$$ConversationCreatedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ConversationCreatedImpl>
    implements _$$ConversationCreatedImplCopyWith<$Res> {
  __$$ConversationCreatedImplCopyWithImpl(_$ConversationCreatedImpl _value,
      $Res Function(_$ConversationCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ConversationCreatedImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SendMessageResponse,
    ));
  }
}

/// @nodoc

class _$ConversationCreatedImpl implements ConversationCreated {
  const _$ConversationCreatedImpl({required this.response});

  @override
  final SendMessageResponse response;

  @override
  String toString() {
    return 'ChatState.conversationCreated(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationCreatedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationCreatedImplCopyWith<_$ConversationCreatedImpl> get copyWith =>
      __$$ConversationCreatedImplCopyWithImpl<_$ConversationCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return conversationCreated(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return conversationCreated?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (conversationCreated != null) {
      return conversationCreated(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return conversationCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return conversationCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (conversationCreated != null) {
      return conversationCreated(this);
    }
    return orElse();
  }
}

abstract class ConversationCreated implements ChatState {
  const factory ConversationCreated(
          {required final SendMessageResponse response}) =
      _$ConversationCreatedImpl;

  SendMessageResponse get response;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationCreatedImplCopyWith<_$ConversationCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSendSuccessImplCopyWith<$Res> {
  factory _$$ChatSendSuccessImplCopyWith(_$ChatSendSuccessImpl value,
          $Res Function(_$ChatSendSuccessImpl) then) =
      __$$ChatSendSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Messages> messages});
}

/// @nodoc
class __$$ChatSendSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatSendSuccessImpl>
    implements _$$ChatSendSuccessImplCopyWith<$Res> {
  __$$ChatSendSuccessImplCopyWithImpl(
      _$ChatSendSuccessImpl _value, $Res Function(_$ChatSendSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatSendSuccessImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Messages>,
    ));
  }
}

/// @nodoc

class _$ChatSendSuccessImpl implements ChatSendSuccess {
  const _$ChatSendSuccessImpl({required final List<Messages> messages})
      : _messages = messages;

  final List<Messages> _messages;
  @override
  List<Messages> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.sendSuccess(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSendSuccessImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSendSuccessImplCopyWith<_$ChatSendSuccessImpl> get copyWith =>
      __$$ChatSendSuccessImplCopyWithImpl<_$ChatSendSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return sendSuccess(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return sendSuccess?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return sendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return sendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatSendSuccess implements ChatState {
  const factory ChatSendSuccess({required final List<Messages> messages}) =
      _$ChatSendSuccessImpl;

  List<Messages> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSendSuccessImplCopyWith<_$ChatSendSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedMessagesImplCopyWith<$Res> {
  factory _$$LoadedMessagesImplCopyWith(_$LoadedMessagesImpl value,
          $Res Function(_$LoadedMessagesImpl) then) =
      __$$LoadedMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Messages> messages});
}

/// @nodoc
class __$$LoadedMessagesImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedMessagesImpl>
    implements _$$LoadedMessagesImplCopyWith<$Res> {
  __$$LoadedMessagesImplCopyWithImpl(
      _$LoadedMessagesImpl _value, $Res Function(_$LoadedMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$LoadedMessagesImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Messages>,
    ));
  }
}

/// @nodoc

class _$LoadedMessagesImpl implements LoadedMessages {
  const _$LoadedMessagesImpl({required final List<Messages> messages})
      : _messages = messages;

  final List<Messages> _messages;
  @override
  List<Messages> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loadedMessages(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMessagesImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMessagesImplCopyWith<_$LoadedMessagesImpl> get copyWith =>
      __$$LoadedMessagesImplCopyWithImpl<_$LoadedMessagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return loadedMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return loadedMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (loadedMessages != null) {
      return loadedMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return loadedMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return loadedMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (loadedMessages != null) {
      return loadedMessages(this);
    }
    return orElse();
  }
}

abstract class LoadedMessages implements ChatState {
  const factory LoadedMessages({required final List<Messages> messages}) =
      _$LoadedMessagesImpl;

  List<Messages> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedMessagesImplCopyWith<_$LoadedMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSendErrorImplCopyWith<$Res> {
  factory _$$ChatSendErrorImplCopyWith(
          _$ChatSendErrorImpl value, $Res Function(_$ChatSendErrorImpl) then) =
      __$$ChatSendErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChatSendErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatSendErrorImpl>
    implements _$$ChatSendErrorImplCopyWith<$Res> {
  __$$ChatSendErrorImplCopyWithImpl(
      _$ChatSendErrorImpl _value, $Res Function(_$ChatSendErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatSendErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatSendErrorImpl implements ChatSendError {
  const _$ChatSendErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState.sendError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSendErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSendErrorImplCopyWith<_$ChatSendErrorImpl> get copyWith =>
      __$$ChatSendErrorImplCopyWithImpl<_$ChatSendErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return sendError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return sendError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return sendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return sendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(this);
    }
    return orElse();
  }
}

abstract class ChatSendError implements ChatState {
  const factory ChatSendError({required final String error}) =
      _$ChatSendErrorImpl;

  String get error;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSendErrorImplCopyWith<_$ChatSendErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Messages> messages});
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessageReceivedImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Messages>,
    ));
  }
}

/// @nodoc

class _$MessageReceivedImpl implements MessageReceived {
  const _$MessageReceivedImpl({required final List<Messages> messages})
      : _messages = messages;

  final List<Messages> _messages;
  @override
  List<Messages> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.messageReceived(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ConversationsResponse conversations) loaded,
    required TResult Function(String error) error,
    required TResult Function() sending,
    required TResult Function(SendMessageResponse response) conversationCreated,
    required TResult Function(List<Messages> messages) sendSuccess,
    required TResult Function(List<Messages> messages) loadedMessages,
    required TResult Function(String error) sendError,
    required TResult Function(List<Messages> messages) messageReceived,
  }) {
    return messageReceived(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ConversationsResponse conversations)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? sending,
    TResult? Function(SendMessageResponse response)? conversationCreated,
    TResult? Function(List<Messages> messages)? sendSuccess,
    TResult? Function(List<Messages> messages)? loadedMessages,
    TResult? Function(String error)? sendError,
    TResult? Function(List<Messages> messages)? messageReceived,
  }) {
    return messageReceived?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ConversationsResponse conversations)? loaded,
    TResult Function(String error)? error,
    TResult Function()? sending,
    TResult Function(SendMessageResponse response)? conversationCreated,
    TResult Function(List<Messages> messages)? sendSuccess,
    TResult Function(List<Messages> messages)? loadedMessages,
    TResult Function(String error)? sendError,
    TResult Function(List<Messages> messages)? messageReceived,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Sending value) sending,
    required TResult Function(ConversationCreated value) conversationCreated,
    required TResult Function(ChatSendSuccess value) sendSuccess,
    required TResult Function(LoadedMessages value) loadedMessages,
    required TResult Function(ChatSendError value) sendError,
    required TResult Function(MessageReceived value) messageReceived,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Sending value)? sending,
    TResult? Function(ConversationCreated value)? conversationCreated,
    TResult? Function(ChatSendSuccess value)? sendSuccess,
    TResult? Function(LoadedMessages value)? loadedMessages,
    TResult? Function(ChatSendError value)? sendError,
    TResult? Function(MessageReceived value)? messageReceived,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Sending value)? sending,
    TResult Function(ConversationCreated value)? conversationCreated,
    TResult Function(ChatSendSuccess value)? sendSuccess,
    TResult Function(LoadedMessages value)? loadedMessages,
    TResult Function(ChatSendError value)? sendError,
    TResult Function(MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements ChatState {
  const factory MessageReceived({required final List<Messages> messages}) =
      _$MessageReceivedImpl;

  List<Messages> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
