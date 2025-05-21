
import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class ClueField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final int? maxLines;
  final double? heigth;
  const ClueField({
    super.key,
    required this.controller,
    required this.title,
    this.maxLines,
    this.heigth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.sm,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SparkTextFormField(
          inputType: TextInputType.text,
          controller: controller,
          height: heigth,
          maxLines: maxLines,
        ),
      ],
    );
  }
}