import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/all_ideas/controller/ideas_state.dart';

class IdeasCubit extends Cubit<IdeasState> {
  IdeasCubit() : super(IdeasState.initial());

  bool isCategoryRow = true;

  changeCategoryIcon() {
    isCategoryRow = !isCategoryRow;
    emit(IdeasState.changed(isChanged: isCategoryRow));
  }
}
