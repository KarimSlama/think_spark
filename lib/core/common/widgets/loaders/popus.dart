import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';

class Loaders {
  static void successSnackBar({
    required BuildContext context,
    required String title,
    String message = '',
    int duration = 3,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Iconsax.check, color: SparkColors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: const TextStyle(color: SparkColors.white)),
                  if (message.isNotEmpty)
                    Text(message,
                        style: const TextStyle(color: SparkColors.white)),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: SparkColors.darkBlue,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  static void warningSnackBar({
    required BuildContext context,
    required String title,
    String message = '',
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Iconsax.warning_2, color: SparkColors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: const TextStyle(color: SparkColors.white)),
                  if (message.isNotEmpty)
                    Text(message,
                        style: const TextStyle(color: SparkColors.white)),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: SparkColors.orange,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  static void errorSnackBar({
    required BuildContext context,
    required String title,
    String message = '',
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Iconsax.warning_2, color: SparkColors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: const TextStyle(color: SparkColors.white)),
                  if (message.isNotEmpty)
                    Text(message,
                        style: const TextStyle(color: SparkColors.white)),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: SparkColors.red,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  static void showBlurredErrorDialog({
    required BuildContext context,
    String title = SparkString.incorrectInputs,
    required String message,
    String buttonText = 'Got it',
    double blurAmount = 5,
    Color blurColor = Colors.black,
    bool barrierDismissible = true,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: Blur(
                blur: blurAmount,
                blurColor: blurColor,
                child: Container(color: Colors.transparent),
              ),
            ),
            PositionedDirectional(
              bottom: 80,
              start: 0,
              end: 0,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 24,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                            style: Theme.of(context).textTheme.titleLarge),
                        GestureDetector(
                          onTap: () => context.pop(),
                          child: CircularContainer(
                            child: Icon(Icons.close,
                                color: SparkColors.black,
                                size: SparkSizes.iconSm),
                          ),
                        )
                      ],
                    ),
                    content: SingleChildScrollView(
                      child: Text(message,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: SparkColors.darkGrey)),
                    ),
                    actions: [
                      TextButton(
                        child: Text(buttonText),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static void sparkToast({
    required String message,
  }) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: SparkColors.darkBlue,
      textColor: SparkColors.white,
      fontSize: 16.0,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
