import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/app_bar/custom_spark_app_bar.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/widget/creative_custom_bottom_nav.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/controller/cubit/investor_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/widget/investor_custom_bottom_nav.dart';

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

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        appBar: showAppBar
            ? CustomSparkAppBar(onPressed: () {
                context.read<DrawerCubit>().changeDrawerState();
              })
            : null,
        body: child,
        bottomNavigationBar: Constants.userRole?.toLowerCase() == 'creative'
            ? CreativeCustomBottomNavBar(
                onTap: (index) =>
                    context.read<CreativeNavigationCubit>().changeNavigationScreen(index))
            : InvestorCustomBottomNavBar(
                onTap: (index) =>
                    context.read<InvestorNavigationCubit>().changeNavigationScreen(index)));
  }
}
