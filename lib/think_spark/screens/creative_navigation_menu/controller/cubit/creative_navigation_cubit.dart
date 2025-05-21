import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/controller/cubit/idea_investors_cubit.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/creative_home_screen.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_state.dart';
import 'package:think_spark/think_spark/screens/settings/settings_screen.dart';
import 'package:think_spark/think_spark/screens/upload_clue/upload_clue_screen.dart';

class CreativeNavigationCubit extends Cubit<CreativeNavigationState> {
  CreativeNavigationCubit() : super(CreativeNavigationState.initial());

  int currentIndex = 0;

  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => getIt<IdeaInvestorsCubit>()..fetchAllInvestors(),
      child: const CreativeHomeScreen(),
    ),
    const UploadClueScreen(),
    const SettingsScreen(),
  ];

  List<Widget> get screens => _screens;

  void changeNavigationScreen(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      emit(CreativeNavigationState.navigationChanged(currentIndex));
    }
  }
}
