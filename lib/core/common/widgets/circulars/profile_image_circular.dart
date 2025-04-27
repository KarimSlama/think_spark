import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';

class ProfileImageCircular extends StatelessWidget {
  final double? width, height;
  const ProfileImageCircular({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.profileScreen),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: CircularContainerShadow(
          height: height,
          width: width,
          icon: Image.network(
              'https://avatars.githubusercontent.com/u/96607967?s=400&u=14a56861ed5617cba18b4ba5a644c7e08bdbde37&v=4'),
        ),
      ),
    );
  }
}
