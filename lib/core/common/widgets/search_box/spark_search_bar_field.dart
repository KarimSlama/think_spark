import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';

class SparkSearchBarField extends StatelessWidget {
  const SparkSearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdeasCubit, IdeasState>(
      builder: (context, state) {
        final isRecording = state is RecordingInProgress;
        return Row(
          spacing: 10.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircularContainerShadow(
                width: double.infinity,
                widget: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: SparkSizes.sm),
                  child: Row(
                    spacing: 7.w,
                    children: [
                      Icon(
                        Iconsax.search_normal,
                        color: SparkColors.light,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller:
                              context.read<IdeasCubit>().searchController,
                          style: const TextStyle(color: SparkColors.silver),
                          decoration: const InputDecoration(
                            hintText: SparkString.searchForCreativeIdea,
                            hintStyle: TextStyle(
                                color: SparkColors.light,
                                fontWeight: FontWeight.w400),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              Assets.icons.voice,
                              width: 30.w,
                              height: 30.h,
                              color: isRecording ? Colors.red : null,
                            ),
                            onPressed: () {
                              context.read<IdeasCubit>().toggleRecording();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CircularContainerShadow(
              widget: IconButton(
                icon: SvgPicture.asset(
                  Assets.icons.send,
                  width: 30.w,
                  height: 30.h,
                ),
                onPressed: () {
                  context.read<IdeasCubit>().searchIdeas();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
