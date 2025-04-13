// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreferencesState {
  List<PreferencesResponse> get categories =>
      throw _privateConstructorUsedError;
  List<PreferencesResponse> get filters => throw _privateConstructorUsedError;
  List<PreferencesResponse> get locations => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<int, bool> get selectedPreferences => throw _privateConstructorUsedError;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesStateCopyWith<PreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
          PreferencesState value, $Res Function(PreferencesState) then) =
      _$PreferencesStateCopyWithImpl<$Res, PreferencesState>;
  @useResult
  $Res call(
      {List<PreferencesResponse> categories,
      List<PreferencesResponse> filters,
      List<PreferencesResponse> locations,
      bool isLoading,
      String? error,
      Map<int, bool> selectedPreferences});
}

/// @nodoc
class _$PreferencesStateCopyWithImpl<$Res, $Val extends PreferencesState>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? filters = null,
    Object? locations = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedPreferences = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<PreferencesResponse>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<PreferencesResponse>,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<PreferencesResponse>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPreferences: null == selectedPreferences
          ? _value.selectedPreferences
          : selectedPreferences // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesStateImplCopyWith<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  factory _$$PreferencesStateImplCopyWith(_$PreferencesStateImpl value,
          $Res Function(_$PreferencesStateImpl) then) =
      __$$PreferencesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PreferencesResponse> categories,
      List<PreferencesResponse> filters,
      List<PreferencesResponse> locations,
      bool isLoading,
      String? error,
      Map<int, bool> selectedPreferences});
}

/// @nodoc
class __$$PreferencesStateImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesStateImpl>
    implements _$$PreferencesStateImplCopyWith<$Res> {
  __$$PreferencesStateImplCopyWithImpl(_$PreferencesStateImpl _value,
      $Res Function(_$PreferencesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? filters = null,
    Object? locations = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedPreferences = null,
  }) {
    return _then(_$PreferencesStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<PreferencesResponse>,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<PreferencesResponse>,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<PreferencesResponse>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPreferences: null == selectedPreferences
          ? _value._selectedPreferences
          : selectedPreferences // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
    ));
  }
}

/// @nodoc

class _$PreferencesStateImpl implements _PreferencesState {
  const _$PreferencesStateImpl(
      {final List<PreferencesResponse> categories = const [],
      final List<PreferencesResponse> filters = const [],
      final List<PreferencesResponse> locations = const [],
      this.isLoading = false,
      this.error,
      final Map<int, bool> selectedPreferences = const {}})
      : _categories = categories,
        _filters = filters,
        _locations = locations,
        _selectedPreferences = selectedPreferences;

  final List<PreferencesResponse> _categories;
  @override
  @JsonKey()
  List<PreferencesResponse> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<PreferencesResponse> _filters;
  @override
  @JsonKey()
  List<PreferencesResponse> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<PreferencesResponse> _locations;
  @override
  @JsonKey()
  List<PreferencesResponse> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  final Map<int, bool> _selectedPreferences;
  @override
  @JsonKey()
  Map<int, bool> get selectedPreferences {
    if (_selectedPreferences is EqualUnmodifiableMapView)
      return _selectedPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedPreferences);
  }

  @override
  String toString() {
    return 'PreferencesState(categories: $categories, filters: $filters, locations: $locations, isLoading: $isLoading, error: $error, selectedPreferences: $selectedPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._selectedPreferences, _selectedPreferences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_locations),
      isLoading,
      error,
      const DeepCollectionEquality().hash(_selectedPreferences));

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesStateImplCopyWith<_$PreferencesStateImpl> get copyWith =>
      __$$PreferencesStateImplCopyWithImpl<_$PreferencesStateImpl>(
          this, _$identity);
}

abstract class _PreferencesState implements PreferencesState {
  const factory _PreferencesState(
      {final List<PreferencesResponse> categories,
      final List<PreferencesResponse> filters,
      final List<PreferencesResponse> locations,
      final bool isLoading,
      final String? error,
      final Map<int, bool> selectedPreferences}) = _$PreferencesStateImpl;

  @override
  List<PreferencesResponse> get categories;
  @override
  List<PreferencesResponse> get filters;
  @override
  List<PreferencesResponse> get locations;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  Map<int, bool> get selectedPreferences;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesStateImplCopyWith<_$PreferencesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
