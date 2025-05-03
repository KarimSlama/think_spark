import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/headers/primary_header_widget.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/edit_profile_screen/widget/edit_profile_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_request_body.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const PrimaryHeaderWidget(
                  title: SparkString.editProfile,
                  child: SizedBox(),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: SparkSizes.ms, vertical: SparkSizes.ms),
              child: Column(
                spacing: SparkSizes.spaceBtwInputFields,
                children: [
                  Text(
                    SparkString
                        .inOrderToEditYourProfileUpdateTheInputThatYouMightWantToChange,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SparkSizes.spaceBtwItems),
                  SparkTextFormField(
                    inputType: TextInputType.text,
                    controller: cubit.fullNameController,
                    prefixIcon: Iconsax.direct_right,
                    label: SparkString.fullName,
                  ),
                  SparkTextFormField(
                    inputType: TextInputType.phone,
                    controller: cubit.phoneController,
                    prefixIcon: Iconsax.call,
                    label: SparkString.phone,
                  ),
                  SparkTextFormField(
                    inputType: TextInputType.text,
                    controller: cubit.bioController,
                    prefixIcon: Iconsax.note,
                    label: SparkString.bio,
                    height: 150.h,
                    maxLines: 2,
                    maxLength: 60,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          final requestBody = ProfileRequestBody(
                            username: cubit.fullNameController.text !=
                                    cubit.profileResponse.profile.userName
                                ? cubit.fullNameController.text
                                : null,
                            phone: cubit.phoneController.text !=
                                    cubit.profileResponse.profile.phone
                                ? cubit.phoneController.text
                                : null,
                            bio: cubit.bioController.text !=
                                    cubit.profileResponse.profile.bio
                                ? cubit.bioController.text
                                : null,
                          );
                          cubit.updateProfile(requestBody);
                        },
                        child: const Text(SparkString.confirm)),
                  ),
                  EditProfileBlocListener(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
