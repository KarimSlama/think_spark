import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/think_spark/screens/home/data/repository/idea_repository.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final IdeaRepository ideaRepository;
  FavoriteCubit(this.ideaRepository) : super(FavoriteState.initial()) {
    _initialize();
  }
  final favorites = <String, bool>{};

  Future<void> _initialize() async {
    await initFavorites();
    fetchFavoriteIdeas();
  }

  bool isFavorite(String productId) {
    return favorites[productId] ?? false;
  }

void toggleFavoriteIdeas(String productId, context) {
  if (favorites.containsKey(productId)) {
    favorites.remove(productId);
  } else {
    favorites[productId] = true;
  }

  saveFavoritesToStorage();

  fetchFavoriteIdeas();
}


  void saveFavoritesToStorage() {
    final encodedFavorites = json.encode(favorites);
    SharedPreference.setData(Constants.favorite, encodedFavorites);
  }

  Future<void> initFavorites() async {
    final json = await SharedPreference.getString(Constants.favorite);
    if (null != json) {
      final favoriteStored = jsonDecode(json) as Map<String, dynamic>;
      favorites.addAll(
          favoriteStored.map((key, value) => MapEntry(key, value as bool)));
    }
  }

  void removeFavoriteWithAnimation(String ideaId) {
    if (state is! FavoriteSuccess) return;
    final current = (state as FavoriteSuccess).data;

    final updated = current.map((item) {
      if (item.id.toString() == ideaId) {
        return item.copyWith(isBeingRemoved: true);
      }
      return item;
    }).toList();

    emit(FavoriteState.favoriteSuccess(updated));

    Future.delayed(const Duration(milliseconds: 400), () {
      favorites.remove(ideaId);
      fetchFavoriteIdeas();
    });
  }

  Future<void> fetchFavoriteIdeas() async {
    emit(FavoriteState.favoriteLoading());
    if (favorites.keys.isEmpty) {
      emit(FavoriteState.favoriteError('Favorites Keys are Empty'));
      return;
    }
    final result = await ideaRepository.fetchIdeasAndFavorites(
        ids: favorites.keys.toList());

    result.when(success: (ideas) {
      final favoriteIds = favorites.keys;
      final updatedIdeas = ideas.map((idea) {
        final isFavorite = favoriteIds.contains(idea.id.toString());
        return idea.copyWith(isFavorite: isFavorite);
      }).toList();
      emit(FavoriteState.favoriteSuccess(updatedIdeas));
    }, failure: (error) {
      emit(FavoriteState.favoriteError(error.toString()));
    });
  }
}