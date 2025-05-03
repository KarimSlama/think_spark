import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerState.initial());

  bool isDrawerOpen = false;

  void logout(context) {
    SharedPreference.removeData(Constants.userTokenKey);
    SharedPreference.removeData(Constants.refreshTokenKey);
    Loaders.warningSnackBar(
        context: context,
        title: 'Logout',
        message: 'Logout Successfully! to enter again try login');
  }

  void changeDrawerState() {
    isDrawerOpen = !isDrawerOpen;
    emit(DrawerState.changed(isDrawerOpen: isDrawerOpen));
  }
}
