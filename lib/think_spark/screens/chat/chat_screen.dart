import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/loading/chat_shimmer_loading.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_bar_input_field.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/widgets/button_tabs_bar.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_cubit.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_state.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversation_args.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('h:mm a');
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.chats),
        actions: const [
          ProfileImageCircular(
            width: 40,
            height: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(SparkSizes.ms),
        child: DefaultTabController(
          length: 2,
          child: Column(
            spacing: SparkSizes.defaultSpace,
            children: [
              SparkBarInputField(
                  controller: TextEditingController(),
                  hintText: SparkString.searchForChat),
              ButtonTabsBar(
                isCurve: false,
                color: SparkColors.coralPink,
                tabTitle1: SparkString.allChats,
                tabTitle2: SparkString.unread,
              ),
              BlocBuilder<ChatCubit, ChatState>(
                buildWhen: (previous, current) =>
                    current is Loading || current is Loaded || current is Error,
                builder: (context, state) {
                  print('chat screen $state');
                  if (context.read<ChatCubit>().conversationsList.isEmpty) {
                    return Center(
                        child:
                            Lottie.asset(Assets.images.animation1744759242249));
                  } else {
                    return state.maybeWhen(
                      loading: () => ChatShimmerLoading(),
                      loaded: (conversations) => Expanded(
                        child: FadeIn(
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 500),
                          child: RefreshIndicator(
                            onRefresh: () => context
                                .read<ChatCubit>()
                                .refreshConversations(),
                            child: ListView.builder(
                              itemBuilder: (_, index) {
                                final lastMessage = conversations
                                    .conversations[index].messages.last;
                                return Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      bottom: SparkSizes.md),
                                  child: PopularUser(
                                    name: conversations.conversations[index]
                                        .participant.username,
                                    text: lastMessage.message,
                                    timeText:
                                        timeFormat.format(lastMessage.time),
                                    showMoreIcon: false,
                                    showBorder: true,
                                    isLargeBio: true,
                                    onPressed: () => context.pushNamed(
                                      Routes.conversationScreen,
                                      arguments: ConversationArgs(
                                        conversations: conversations,
                                        currentUserId: context
                                            .read<ProfileCubit>()
                                            .profileResponse
                                            .profile
                                            .id,
                                        index: index,
                                        conversationId: conversations
                                            .conversations[index].id,
                                        participantId: conversations
                                            .conversations[index]
                                            .participant
                                            .id,
                                      ),
                                    ),
                                    onImageTapped: () =>
                                        Constants.showEnlargedImage(
                                            '${ApiConstants.apiBaseUrlWithoutSlash}${conversations.conversations[index].participant.image}',
                                            context),
                                    padding: 2.5,
                                    widget: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.network(
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.cover,
                                          '${ApiConstants.apiBaseUrlWithoutSlash}${conversations.conversations[index].participant.image}'),
                                    ),
                                  ),
                                );
                              },
                              itemCount: conversations.conversations.length,
                            ),
                          ),
                        ),
                      ),
                      error: (error) => Text(error),
                      orElse: () => Text('Empty List'),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
