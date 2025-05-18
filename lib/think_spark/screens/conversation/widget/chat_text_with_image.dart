import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/networking/api_constants.dart';

class ChatTextWithImage extends StatelessWidget {
  final String imageUrl;
  final String message;
  final String time;
  final bool isMyMessage;

  const ChatTextWithImage({
    super.key,
    required this.imageUrl,
    required this.message,
    required this.time,
    required this.isMyMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment:
            isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!isMyMessage) ...[
                _buildUserAvatar(),
                const SizedBox(width: 8),
              ],
              Flexible(
                child: CircularContainerShadow(
                  isPaddingAll: false,
                  isCircularRadius: false,
                  radius: 60,
                  horizontalPadding: 20,
                  verticalPadding: 10,
                  widget: Text(
                    message,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 13.sp),
                  ),
                ),
              ),
              if (isMyMessage) ...[
                SizedBox(width: SparkSizes.sm),
                _buildUserAvatar(),
              ],
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(time),
          ),
        ],
      ),
    );
  }

  Widget _buildUserAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.network(
        '${ApiConstants.apiBaseUrlWithoutSlash}$imageUrl',
        width: 40.w,
        height: 40.h,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person),
        ),
      ),
    );
  }
}