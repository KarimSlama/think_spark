import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark/screens/categories/categories_screen.dart';
import 'package:think_spark/think_spark/screens/categories/controller/cubit/categories_cubit.dart';
import 'package:think_spark/think_spark/screens/home/home_screen.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/controller/cubit/investor_navigation_state.dart';
import 'package:think_spark/think_spark/screens/settings/settings_screen.dart';
import 'package:think_spark/think_spark/screens/upload_clue/upload_clue_screen.dart';
import 'package:think_spark/think_spark/screens/favorite/favorite_screen.dart';

class InvestorNavigationCubit extends Cubit<InvestorNavigationState> {
  InvestorNavigationCubit() : super(InvestorNavigationState.initial());

  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..fetchCategories(),
      child: const CategoriesScreen(),
    ),
    const UploadClueScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];

  List<Widget> get screens => _screens;

  void changeNavigationScreen(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      emit(InvestorNavigationState.changed(currentIndex));
    }
  }
}
