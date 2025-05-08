import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';

bool isLoggedUser = false;

class Constants {
  static final pageController = PageController();
  static int currentPage = 0;
  static String userKey = dotenv.get('USER_KEY');
  static String refreshKey = dotenv.get('REFRESH_KEY');
  static String favorite = dotenv.get('FAVORITES_KEY');
  static String notification = dotenv.get('NOTIFICATION_KEY');
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static void showEnlargedImage(String image, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog.fullscreen(
          backgroundColor: SparkColors.black.withValues(alpha: 0.8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: SparkColors.black.withValues(alpha: 0.5),
                        blurRadius: 20,
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  child: ClipOval(
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.error,
                        color: SparkColors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: SparkColors.white,
                    side: BorderSide(color: SparkColors.white),
                    padding: EdgeInsets.symmetric(
                        horizontal: SparkSizes.lg, vertical: SparkSizes.md),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(SparkSizes.borderRadiusXl),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    SparkString.close,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
