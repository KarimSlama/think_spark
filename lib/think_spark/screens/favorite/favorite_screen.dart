import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_search_bar_field.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_cubit.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_state.dart';
import 'package:think_spark/think_spark/screens/favorite/widget/favorite_card.dart';
import 'package:think_spark/think_spark/screens/home/widget/drawer_side_navigation_menu.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (mounted) {
        context.read<FavoriteCubit>().fetchFavoriteIdeas();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const DrawerSideNavigationMenu(),
        Expanded(
          child: FloatingWidget(
            mainScreenWidget: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: SparkSizes.ms, vertical: SparkSizes.defaultSpace),
              child: Column(
                spacing: SparkSizes.defaultSpace,
                children: [
                  SparkSearchBarField(),
                  Expanded(
                    child: BlocBuilder<FavoriteCubit, FavoriteState>(
                        builder: (context, state) {
                      return state.maybeWhen(
                          favoriteLoading: () => Center(
                                child: SpinKitSquareCircle(
                                  color: SparkColors.blue,
                                ),
                              ),
                          favoriteSuccess: (data) {
                            final favoriteIdeas =
                                data.where((idea) => idea.isFavorite).toList();

                            if (favoriteIdeas.isEmpty) {
                              return const Center(
                                  child: Text('No favorites yet.'));
                            }

                            return ListView.builder(
                              itemCount: favoriteIdeas.length,
                              itemBuilder: (context, index) {
                                final idea = favoriteIdeas[index];
                                final category = idea.categories.isNotEmpty
                                    ? idea.categories[0].name
                                    : 'Uncategorized';
                                return AnimatedSlide(
                                  duration: const Duration(milliseconds: 300),
                                  offset: idea.isBeingRemoved
                                      ? const Offset(1.2, 0)
                                      : Offset.zero,
                                  child: AnimatedOpacity(
                                    duration: const Duration(milliseconds: 300),
                                    opacity: idea.isBeingRemoved ? 0.0 : 1.0,
                                    child: FavoriteCard(
                                      title: idea.title,
                                      category: category,
                                      name: idea.publisher,
                                      id: idea.id.toString(),
                                      onTap: () => context
                                          .read<FavoriteCubit>()
                                          .removeFavoriteWithAnimation(
                                              idea.id.toString()),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          favoriteError: (error) =>
                              Center(child: Text(error.toString())),
                          orElse: () => const Center(child: Text('error')));
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
