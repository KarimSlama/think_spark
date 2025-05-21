import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SparkBarInputField extends StatelessWidget {
  final String hintText;
  final bool isClicked, isVoice;
  final VoidCallback? onPressed, onSendPressed;
  final IconData? prefixIcon;
  final TextEditingController controller;
  const SparkBarInputField(
      {super.key,
      required this.hintText,
      this.isClicked = false,
      this.isVoice = false,
      required this.controller,
      this.onPressed,
      this.prefixIcon,
      this.onSendPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CircularContainerShadow(
            width: double.infinity,
            widget: Padding(
              padding: const EdgeInsetsDirectional.only(start: SparkSizes.sm),
              child: Row(
                spacing: 7.w,
                children: [
                  isClicked
                      ? IconButton(
                          onPressed: onPressed,
                          icon: Icon(
                            prefixIcon,
                            color: SparkColors.light,
                          ),
                        )
                      : Icon(
                          prefixIcon ?? Iconsax.search_normal,
                          color: SparkColors.light,
                        ),
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      style: const TextStyle(color: SparkColors.silver),
                      decoration: InputDecoration(
                        hintText: hintText,
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
                  isVoice
                      ? IconButton(
                          icon: SvgPicture.asset(
                            Assets.icons.voice,
                            width: 30.w,
                            height: 30.h,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            // context.read<IdeasCubit>().toggleRecording();
                          },
                        )
                      : Container(),
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
            onPressed: onSendPressed ??
                () {
                  // context.read<IdeasCubit>().searchIdeas();
                },
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
// import 'package:think_spark/core/constants/spark_colors.dart';
// import 'package:think_spark/core/constants/spark_sizes.dart';
// import 'package:think_spark/gen/assets.gen.dart';
// import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
// import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';

// class SparkBarInputField extends StatelessWidget {
//   final String hintText;
//   final bool isClicked, isVoice;
//   final VoidCallback? onPressed, onSendPressed;
//   final IconData? prefixIcon;
//   final TextEditingController controller;
//   const SparkBarInputField(
//       {super.key,
//       required this.hintText,
//       this.isClicked = false,
//       this.isVoice = false,
//       required this.controller,
//       this.onPressed,
//       this.prefixIcon,
//       this.onSendPressed});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<IdeasCubit, IdeasState>(
//       builder: (context, state) {
//         final isRecording = state is RecordingInProgress;
//         return Row(
//           spacing: 10.w,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: CircularContainerShadow(
//                 width: double.infinity,
//                 widget: Padding(
//                   padding:
//                       const EdgeInsetsDirectional.only(start: SparkSizes.sm),
//                   child: Row(
//                     spacing: 7.w,
//                     children: [
//                       isClicked
//                           ? IconButton(
//                               onPressed: onPressed,
//                               icon: Icon(
//                                 prefixIcon,
//                                 color: SparkColors.light,
//                               ),
//                             )
//                           : Icon(
//                               prefixIcon ?? Iconsax.search_normal,
//                               color: SparkColors.light,
//                             ),
//                       Expanded(
//                         child: TextFormField(
//                           controller:
//                               controller,
//                           style: const TextStyle(color: SparkColors.silver),
//                           decoration: InputDecoration(
//                             hintText: hintText,
//                             hintStyle: TextStyle(
//                                 color: SparkColors.light,
//                                 fontWeight: FontWeight.w400),
//                             border: InputBorder.none,
//                             enabledBorder: InputBorder.none,
//                             focusedBorder: InputBorder.none,
//                             disabledBorder: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       isVoice
//                           ? IconButton(
//                               icon: SvgPicture.asset(
//                                 Assets.icons.voice,
//                                 width: 30.w,
//                                 height: 30.h,
//                                 color: isRecording ? Colors.red : null,
//                               ),
//                               onPressed: () {
//                                 context.read<IdeasCubit>().toggleRecording();
//                               },
//                             )
//                           : Container(),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             CircularContainerShadow(
//               widget: IconButton(
//                 icon: SvgPicture.asset(
//                   Assets.icons.send,
//                   width: 30.w,
//                   height: 30.h,
//                 ),
//                 onPressed: onSendPressed ??
//                     () {
//                       context.read<IdeasCubit>().searchIdeas();
//                     },
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
