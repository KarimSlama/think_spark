import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/categories/data/model/categoreis_with_ideas_response.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = Loading;
  const factory CategoriesState.loaded(List<CategoreisWithIdeasResponse> categories) = Loaded;
  const factory CategoriesState.error({required String message}) = Error;
}
