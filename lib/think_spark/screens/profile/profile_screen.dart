import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/headers/primary_header_widget.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/profile/widget/profile_image_with_edit_profile.dart';
import 'package:think_spark/think_spark/screens/profile/widget/profile_settings_modifications.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const PrimaryHeaderWidget(
                  title: SparkString.profile,
                  child: SizedBox(),
                ),
                ProfileImageWithEditProfile(),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: MediaQuery.of(context).size.height * .09,
                  start: SparkSizes.ms,
                  end: SparkSizes.ms),
              child: Column(
                spacing: 4,
                children: [
                  Text('Karim Slama',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    '01095856941',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(color: SparkColors.light),
                  ),
                  SizedBox(height: SparkSizes.ms),
                  SectionHeading(
                      text: SparkString.settings, isActionButton: false),
                  SizedBox(height: SparkSizes.spaceBtwItems / 2),
                  ProfileSettingsModifications()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
