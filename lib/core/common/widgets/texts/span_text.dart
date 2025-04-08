import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class SpanText extends StatelessWidget {
  final String text;
  final String actionText;
  final VoidCallback actionTextOnTap;
  final bool isSmall;
  const SpanText(
      {super.key,
      required this.text,
      required this.actionText,
      required this.actionTextOnTap,
      this.isSmall = false});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: '$text ',
              style: isSmall
                  ? Theme.of(context).textTheme.bodyMedium
                  : Theme.of(context).textTheme.titleMedium),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = actionTextOnTap,
            text: actionText,
            style: isSmall
                ? Theme.of(context).textTheme.bodyMedium!.apply(
                      color: SparkColors.darkBlue,
                    )
                : Theme.of(context).textTheme.titleMedium!.apply(
                      color: SparkColors.darkBlue,
                    ),
          ),
        ],
      ),
    );
  }
}
