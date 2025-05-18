import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_image_with_shadow.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_cubit.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_state.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversation_args.dart';
import 'package:think_spark/think_spark/screens/conversation/widget/chat_text_with_image.dart';
import 'package:think_spark/think_spark/screens/conversation/widget/message_input_field.dart';

class ConversationScreen extends StatelessWidget {
  final ConversationArgs conversationsArgs;
  final _scrollController = ScrollController();
  final _messageController = TextEditingController();

  ConversationScreen({super.key, required this.conversationsArgs});

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('h:mm a');

    return BlocConsumer<ChatCubit, ChatState>(
      bloc: context.read<ChatCubit>()
        ..loadConversationMessages(conversationsArgs.index != -1
            ? conversationsArgs
                .conversations!.conversations[conversationsArgs.index].id
            : conversationsArgs.recipientId!),
      listener: (context, state) {
        if (state is Initial && conversationsArgs.index != -1) {
          context.read<ChatCubit>().loadConversationMessages(conversationsArgs
              .conversations!.conversations[conversationsArgs.index].id);
        }
        if (state is MessageReceived || state is ChatSendSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (_scrollController.hasClients) {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            }
          });
        }
      },
      builder: (context, state) {
        final cubit = context.read<ChatCubit>();
        final messages = cubit.messages;

        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.chatBg.path,
                ),
                opacity: 0.5,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SparkAppBar(
                  showBackArrow: true,
                  title: Row(
                    spacing: SparkSizes.ms,
                    children: [
                      CircularImageWithShadow(
                        widget: Image.network(
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          conversationsArgs.index != -1
                              ? '${ApiConstants.apiBaseUrlWithoutSlash}${conversationsArgs.conversations!.conversations[conversationsArgs.index].participant.image}'
                              : conversationsArgs.recipientImage ??
                                  'https://default-image.com',
                        ),
                        padding: 0,
                      ),
                      Flexible(
                        child: Text(
                          conversationsArgs.index != -1
                              ? conversationsArgs
                                  .conversations!
                                  .conversations[conversationsArgs.index]
                                  .participant
                                  .username
                              : conversationsArgs.recipientName ?? 'New Chat',
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    CircularContainerShadow(
                      widget: Icon(Iconsax.call),
                      padding: 10,
                    ),
                    SizedBox(width: 10),
                    CircularContainerShadow(
                      widget: Icon(Iconsax.message_search),
                      padding: 10,
                    ),
                  ],
                ),
                Flexible(
                  child: ScrollConfiguration(
                    behavior: ScrollBehavior().copyWith(overscroll: true),
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: messages.length,
                      itemBuilder: (_, index) {
                        final message = messages[index];
                        final isMyMessage = message.sender.id ==
                            conversationsArgs.currentUserId;
                        return ChatTextWithImage(
                          key: UniqueKey(),
                          imageUrl: message.sender.image,
                          message: message.message,
                          time: timeFormat.format(message.time),
                          isMyMessage: isMyMessage,
                        );
                      },
                    ),
                  ),
                ),
                MessageInputField(
                  conversationsArgs: conversationsArgs,
                  messageController: _messageController,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
