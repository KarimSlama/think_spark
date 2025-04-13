import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_state.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/widget/custom_bottom_nav.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
          onTap: (index) => navCubit.changeNavigationScreen(index)),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return navCubit.screens[navCubit.currentIndex];
        },
      ),
    );
  }
}