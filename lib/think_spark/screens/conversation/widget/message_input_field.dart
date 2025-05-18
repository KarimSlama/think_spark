import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_bar_input_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_cubit.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversation_args.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({
    super.key,
    required TextEditingController messageController,
    required this.conversationsArgs,
  }) : _messageController = messageController;

  final TextEditingController _messageController;
  final ConversationArgs conversationsArgs;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: SparkSizes.ms,
        right: SparkSizes.ms,
      ),
      child: SizedBox(
        height: 60,
        child: SparkBarInputField(
          controller: _messageController,
          isClicked: true,
          prefixIcon: Iconsax.happyemoji,
          onSendPressed: () {
            final text = _messageController.text.trim();
            if (text.isNotEmpty) {
              context.read<ChatCubit>().startOrContinueConversation(
                    currentUserId: conversationsArgs.currentUserId,
                    otherUserId: conversationsArgs.index != -1
                        ? conversationsArgs
                            .conversations!
                            .conversations[conversationsArgs.index]
                            .participant
                            .id
                        : conversationsArgs.recipientId!,
                    message: text,
                  );
              _messageController.clear();
            }
          },
          hintText: SparkString.typeMessageHere,
        ),
      ),
    );
  }
}
