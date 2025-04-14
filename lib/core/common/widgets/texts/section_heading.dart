import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_string.dart';

class SectionHeading extends StatelessWidget {
  final bool isActionButton, isIcon;
  final String text, buttonText;
  final Color? textColor, iconColor;
  final void Function()? onPressed;
  final IconData? icon;
  const SectionHeading(
      {super.key,
      this.isActionButton = true,
      required this.text,
      this.buttonText = SparkString.seeAll,
      this.textColor,
      this.onPressed,
      this.isIcon = false,
      this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (isActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonText)),
        if (isIcon) IconButton(onPressed: onPressed, icon: Icon(icon, color: iconColor,)),
      ],
    );
  }
}
