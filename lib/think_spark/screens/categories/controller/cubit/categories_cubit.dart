import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/categories/controller/cubit/categories_state.dart';
import 'package:think_spark/think_spark/screens/categories/data/repository/categories_with_ideas_related_repository.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesWithIdeasRelatedRepository
      _categoriesWithIdeasRelatedRepository;
  CategoriesCubit(this._categoriesWithIdeasRelatedRepository)
      : super(CategoriesState.initial());

  void fetchCategories() async {
    emit(CategoriesState.loading());
    final result = await _categoriesWithIdeasRelatedRepository.getCategories();

    result.when(success: (categories) {
      emit(CategoriesState.loaded(categories));
    }, failure: (error) {
      emit(CategoriesState.error(
          message: error.apiErrorModel.message.toString()));
    });
  }
}
