import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/app_bar/custom_spark_app_bar.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/widget/custom_bottom_nav.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final bool showAppBar;
  final VoidCallback? onPressed;

  const MainLayout({
    super.key,
    required this.child,
    this.showAppBar = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: showAppBar
          ? CustomSparkAppBar(onPressed: () {
              context.read<DrawerCubit>().changeDrawerState();
            })
          : null,
      body: child,
      bottomNavigationBar: CustomBottomNavBar(
          onTap: (index) => navCubit.changeNavigationScreen(index)),
    );
  }
}
