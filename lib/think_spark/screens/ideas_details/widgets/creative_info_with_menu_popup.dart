import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';

class CreativeInfoWithMenuPopup extends StatelessWidget {
  const CreativeInfoWithMenuPopup({
    super.key,
    required this.ideaResponse,
  });

  final IdeaResponse ideaResponse;

  @override
  Widget build(BuildContext context) {
    return PopularUser(
      name: ideaResponse.user.username,
      bio: ideaResponse.user.bio ?? '',
      padding: 2,
      widget: Image.network(
        width: 65.w,
        height: 65.h,
        fit: BoxFit.cover,
        ideaResponse.user.image ?? '',
      ),
      onImageTapped: () =>
          Constants.showEnlargedImage(ideaResponse.user.image ?? '', context),
      onPressed: () {
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final offset = renderBox.localToGlobal(Offset.zero);

        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            offset.dy,
            offset.dy - -50,
            MediaQuery.of(context).size.width -
                offset.dx -
                renderBox.size.width,
            offset.dy + renderBox.size.height,
          ),
          items: [
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Iconsax.message),
                title: Text(SparkString.chatWithCreative),
              ),
              onTap: () {},
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Iconsax.calendar),
                title: Text(SparkString.scheduleAMeeting),
              ),
              onTap: () {},
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Iconsax.share),
                title: Text(SparkString.shareCreativeProfile),
              ),
              onTap: () {},
            ),
          ],
        );
      },
    );
  }
}
