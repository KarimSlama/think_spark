import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class ProfileImageWithEditProfile extends StatelessWidget {
  const ProfileImageWithEditProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100.h,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: 150.w,
                height: 150.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: SparkHelperFunctions.isDark(context)
                        ? SparkColors.black
                        : SparkColors.white,
                    width: 5,
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/96607967?s=400&u=14a56861ed5617cba18b4ba5a644c7e08bdbde37&v=4'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -95,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: SparkSizes.defaultSpace,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircularContainerShadow(
                        padding: 10,
                        icon: const Icon(
                          Iconsax.edit_2,
                          color: SparkColors.doggerBlue,
                          size: SparkSizes.iconSm,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        SparkString.editProfile,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: SparkColors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
