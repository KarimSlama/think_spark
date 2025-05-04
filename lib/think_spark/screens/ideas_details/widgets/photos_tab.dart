import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class PhotosTab extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const PhotosTab({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    if (ideaResponse.ideaImage == null || ideaResponse.ideaImage!.isEmpty) {
      return Center(
        child: Column(
          spacing: SparkSizes.defaultSpace,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Iconsax.image, size: 48.w, color: Colors.grey),
            Text(
              SparkString.noImagesAvailable,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: SparkColors.grey,
                  ),
            ),
          ],
        ),
      );
    }

    if (!ideaResponse.ideaImage!.contains(',')) {
      return Padding(
        padding: EdgeInsets.all(SparkSizes.md),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.w),
          child: Image.network(
            ideaResponse.ideaImage!,
            errorBuilder: (context, error, stackTrace) => _buildErrorWidget(),
          ),
        ),
      );
    }

    final images = ideaResponse.ideaImage!
        .split(',')
        .where((img) => img.isNotEmpty)
        .toList();

    return GridView.builder(
      padding: EdgeInsets.all(SparkSizes.ms),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 1,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12.w),
          child: Image.network(
            images[index],
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => _buildErrorWidget(),
          ),
        );
      },
    );
  }

  Widget _buildErrorWidget() {
    return Container(
      color: SparkColors.darkGrey,
      child: Center(
        child: Icon(Iconsax.image, color: SparkColors.darkBlue),
      ),
    );
  }
}
