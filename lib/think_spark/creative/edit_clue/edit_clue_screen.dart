import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/inputs/clue_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/creative/edit_clue/widget/edit_clue_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class EditClueScreen extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const EditClueScreen({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<IdeasCubit>();
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.editClue),
        actions: [
          Padding(
            padding: const EdgeInsets.all(SparkSizes.xs),
            child: ProfileImageCircular(width: 45.w, height: 45.h),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: SparkSizes.md, vertical: SparkSizes.lg),
          child: Column(
            spacing: SparkSizes.sm,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClueField(controller: cubit.titleController, title: 'Title'),
              ClueField(
                  controller: cubit.problemController,
                  title: 'Problems',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.solutionsController,
                  title: 'Solutions',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.whyItWorksController,
                  title: 'Why it works?',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.benifitsController,
                  title: 'Benifits',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.technicalRequirementsController,
                  title: 'Technical Requirements',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.operationalRequirementsController,
                  title: 'Operational Requirements',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.teamController,
                  title: 'Team',
                  heigth: 150,
                  maxLines: 10),
              ClueField(
                  controller: cubit.expectedDurationController,
                  title: 'Expected Duration',
                  heigth: 150,
                  maxLines: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    cubit.updateIdea(ideaResponse.id);
                  },
                  child: Text(SparkString.save),
                ),
              ),
              EditClueBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
