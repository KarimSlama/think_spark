import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/user_info_bottom_sheet.dart';

class AboutTab extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const AboutTab({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(SparkSizes.ms),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              SparkString.aboutCreative,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            PopularUser(
              name: ideaResponse.user.username,
              text: ideaResponse.user.bio ?? SparkString.unknown,
              padding: 2,
              widget: Image.network(
                  width: 65.w,
                  height: 65.h,
                  fit: BoxFit.cover,
                  '${ideaResponse.user.image}'),
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => UserInfoBottomSheet(
                    ideaResponse: ideaResponse,
                    allIdeas: context.read<IdeasCubit>().ideasList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
