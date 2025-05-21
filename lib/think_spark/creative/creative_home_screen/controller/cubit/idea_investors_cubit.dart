import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/controller/cubit/idea_investors_state.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/repository/investors_repository.dart';

class IdeaInvestorsCubit extends Cubit<IdeaInvestorsState> {
  final InvestorsRepository investorsRepository;
  IdeaInvestorsCubit(this.investorsRepository) : super(IdeaInvestorsState.initial());

  void fetchAllInvestors() async {
    emit(IdeaInvestorsState.loading());
    final response = await investorsRepository.fetchAllInvestors();
    response.when(
      success: (investor) {
        emit(IdeaInvestorsState.investorsSuccess(investor));
      },
      failure: (error) {
        emit(IdeaInvestorsState.error(error.apiErrorModel.message.toString()));
      },
    );
  }
}
