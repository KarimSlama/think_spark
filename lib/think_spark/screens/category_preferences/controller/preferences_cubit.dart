import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_state.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/categories_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/filters_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/locations_repository.dart';

class PreferencesCubit extends Cubit<PreferencesState> {
  final CategoriesRepository _categoriesRepository;
  final FiltersRepository _filtersRepository;
  final LocationsRepository _locationsRepository;
  PreferencesCubit(this._categoriesRepository, this._filtersRepository,
      this._locationsRepository)
      : super(const PreferencesState());

  final selected = <String, bool>{};

  void getCategories() async {
    emit(state.copyWith(isLoading: true));
    final result = await _categoriesRepository.getCategories();

    result.when(
      success: (data) {
        emit(state.copyWith(
          categories: data,
          isLoading: false,
          error: null,
        ));
      },
      failure: (error) {
        emit(state.copyWith(
          isLoading: false,
          error: error.apiErrorModel.message.toString(),
        ));
      },
    );
  }

  void getFilters() async {
    emit(state.copyWith(isLoading: true));
    final result = await _filtersRepository.getFilters();

    result.when(
      success: (data) {
        emit(state.copyWith(
          filters: data,
          isLoading: false,
          error: null,
        ));
      },
      failure: (error) {
        emit(state.copyWith(
          isLoading: false,
          error: error.apiErrorModel.message.toString(),
        ));
      },
    );
  }

  void getLocations() async {
    emit(state.copyWith(isLoading: true));
    final result = await _locationsRepository.getLocations();

    result.when(
      success: (data) {
        emit(state.copyWith(
          locations: data,
          isLoading: false,
          error: null,
        ));
      },
      failure: (error) {
        emit(state.copyWith(
          isLoading: false,
          error: error.apiErrorModel.message.toString(),
        ));
      },
    );
  }

  bool isFavorite(int index) {
    return selected[index] ?? false;
  }

void toggleSelectedPreference(int id) {
  final currentSelected = Map<int, bool>.from(state.selectedPreferences);

  bool isCurrentlySelected = currentSelected.containsKey(id) && currentSelected[id]!;
  
  if (isCurrentlySelected) {
    currentSelected.remove(id);
  } else {
    currentSelected[id] = true;
  }

  if (!mapEquals(currentSelected, state.selectedPreferences)) {
    emit(state.copyWith(selectedPreferences: currentSelected));
    savePreferenceToStorage(currentSelected);
  }
}

void savePreferenceToStorage(Map<int, bool> selected) {
  final Map<String, bool> stringKeyMap = selected.map((key, value) => MapEntry('$key', value));

  final encodedFavorites = json.encode(stringKeyMap);
  SharedPreference.setData('selected', encodedFavorites);
}
}
