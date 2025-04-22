import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerState.initial());

  bool isDrawerOpen = false;

  void changeDrawerState() {
    isDrawerOpen = !isDrawerOpen;
    emit(DrawerState.changed(isDrawerOpen: isDrawerOpen));
  }
}
