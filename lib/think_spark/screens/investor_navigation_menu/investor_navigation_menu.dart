import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/layout/main_layout.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/controller/cubit/investor_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/controller/cubit/investor_navigation_state.dart';

class InvestorNavigationMenu extends StatelessWidget {
  const InvestorNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<InvestorNavigationCubit>();
    return MainLayout(
      child: BlocBuilder<InvestorNavigationCubit, InvestorNavigationState>(
        builder: (context, state) {
          return navCubit.screens[navCubit.currentIndex];
        },
      ),
    );
  }
}
