import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/headers/primary_header_widget.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';
import 'package:think_spark/think_spark/screens/update_email/widget/update_email_bloc_listener.dart';

class UpdateEmailScreen extends StatelessWidget {
  const UpdateEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          final cubit = context.read<ProfileCubit>();
          return SingleChildScrollView(
            child: Form(
              key: cubit.newEmailFormKey,
              child: Column(
                children: [
                  const PrimaryHeaderWidget(
                    title: SparkString.changePassword,
                    child: SizedBox(),
                  ),
                  EasyStepper(
                    activeStep: cubit.emailUpdateStep,
                    steps: [
                      EasyStep(
                        customStep: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: cubit.emailUpdateStep >= 0
                                ? Colors.orange
                                : Colors.white,
                          ),
                        ),
                        title: 'Current Email',
                      ),
                      EasyStep(
                        customStep: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: cubit.emailUpdateStep >= 1
                                ? Colors.orange
                                : Colors.white,
                          ),
                        ),
                        title: 'New Email',
                        topTitle: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: SparkSizes.ms),
                    child: Column(
                      spacing: SparkSizes.spaceBtwSections,
                      children: [
                        IndexedStack(
                          index: cubit.emailUpdateStep,
                          children: [
                            SparkTextFormField(
                              inputType: TextInputType.emailAddress,
                              controller: cubit.emailController,
                              prefixIcon: Iconsax.sms_tracking,
                              label: SparkString.email,
                              validator: (value) =>
                                  Validator.validateEmail(value),
                            ),
                            SparkTextFormField(
                              inputType: TextInputType.emailAddress,
                              controller: cubit.newEmailController,
                              prefixIcon: Iconsax.sms_tracking,
                              label: SparkString.popularUsers,
                              validator: (value) =>
                                  Validator.validateEmail(value),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => cubit.handleEmailUpdate(context),
                            child: const Text(SparkString.confirm),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const UpdateEmailBlocListener(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}