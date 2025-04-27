import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/layout/main_layout.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_state.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return MainLayout(
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return navCubit.screens[navCubit.currentIndex];
        },
      ),
    );
  }
}
