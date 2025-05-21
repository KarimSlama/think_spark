import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/model/investors_response.dart';

part 'idea_investors_state.freezed.dart';

@freezed
class IdeaInvestorsState with _$IdeaInvestorsState {
  const factory IdeaInvestorsState.initial() = _Initial;
  const factory IdeaInvestorsState.loading() = Loading;
  const factory IdeaInvestorsState.investorsSuccess(InvestorsResponse investors) =
      InvestorsSuccess;
  const factory IdeaInvestorsState.error(String message) = Error;
}
