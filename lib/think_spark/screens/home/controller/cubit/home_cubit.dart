import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/home_state.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/data/repository/idea_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  final IdeaRepository _ideaRepository;
  HomeCubit(this._ideaRepository) : super(HomeState.initial());

  List<IdeaResponse> ideasList = [];
  void fetchAllIdeas() async {
    emit(HomeState.loading());

    final result = await _ideaRepository.fetchIdeas();

    result.when(success: (ideas) {
      ideasList = ideas;
      emit(HomeState.success(ideas));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message.toString()));
    });
  }
}
