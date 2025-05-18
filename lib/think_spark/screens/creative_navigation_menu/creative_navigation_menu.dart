import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/layout/main_layout.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_state.dart';

class CreativeNavigationMenu extends StatelessWidget {
  const CreativeNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<CreativeNavigationCubit>();
    return MainLayout(
      child: BlocBuilder<CreativeNavigationCubit, CreativeNavigationState>(
        builder: (context, state) {
          return navCubit.screens[navCubit.currentIndex];
        },
      ),
    );
  }
}
