import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_cubit.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_state.dart';

class FavoriteIcon extends StatelessWidget {
  final String ideaId;
  final VoidCallback? onTap;
  const FavoriteIcon({super.key, required this.ideaId, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap ?? () => context
              .read<FavoriteCubit>()
              .toggleFavoriteIdeas(ideaId, context),
          child: CircularContainer(
            width: 35.w,
            height: 35.h,
            color: SparkColors.white,
            child: Icon(
                context.read<FavoriteCubit>().isFavorite(ideaId)
                    ? Iconsax.heart5
                    : Iconsax.heart,
                color: SparkColors.red),
          ),
        );
      },
    );
  }
}
