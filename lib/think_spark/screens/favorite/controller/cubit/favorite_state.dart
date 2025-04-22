import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = Initial;
  const factory FavoriteState.favoriteLoading() = FavoriteLoading;
  const factory FavoriteState.favoriteError(String error) = FavoriteError;
  const factory FavoriteState.favoriteSuccess(List<IdeaResponse> data) =
      FavoriteSuccess;
}
