import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loading/popular_user_shimmer_loading.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/controller/cubit/idea_investors_cubit.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/controller/cubit/idea_investors_state.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';

class PopularInvestors extends StatelessWidget {
  const PopularInvestors({super.key});

  @override
  Widget build(BuildContext context) {
  return BlocBuilder<IdeaInvestorsCubit, IdeaInvestorsState>(
      buildWhen: (previous, current) => current is Loading || current is InvestorsSuccess || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const PopularUserShimmerLoading(),
          investorsSuccess: (investors) => FadeIn(
            curve: Curves.bounceInOut,
            duration: const Duration(milliseconds: 500),
            child: Column(
              spacing: SparkSizes.ms,
              children: List.generate(
                3,
                (index) => PopularUser(
                  onPressed: () {},
                  name: investors.investors[index].username,
                  text: investors.investors[index].bio,
                ),
              ),
            ),
          ),
          error: (error) => Text(error),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
