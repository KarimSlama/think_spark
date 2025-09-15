# Think Spark 💡
The Society of New Ideas! 💡

🚀 Reflecting on an Incredible Journey with Think Spark! 🌟 

💡 This project has been more than just a development challenge it’s been a journey of learning, collaboration, and impact. 🌍 

## What is Think Spark? 🤔 
Think Spark is a community-driven platform where creators share their ideas, investors find groundbreaking projects, and collaborations flourish. 🤝
Whether you’re a dreamer with a vision or an investor looking for the next big thing, Think Spark is the place where ideas meet opportunity. 💼 

## My Role & Experience:👨‍💻

- As a UI UX Designer and Flutter Developer of this project, I had the opportunity to make this experience truly special by: 

1. Solving Real Problems: 🛠️
We tackled challenges like idea theft concerns, lack of visibility for creators, and difficulty in finding quality projects for investors. 
2. Building a User-Centric Platform: 🖥️ 
From seamless idea submission to secure investment processes, every feature was designed with the user in mind. 

## Key Takeaways 📚 
-) The Power of Innovation: 💡
Seeing how a simple idea can transform into a platform that empowers others has been incredibly inspiring. 

-) Growth Through Challenges: 🌱
Every obstacle we faced became an opportunity to learn and improve. 

-) Impact Matters:❤️ 
Knowing that Think Spark will help creators turn their dreams into reality is the most rewarding part of this journey. 

# 🎨 UI Design
https://www.behance.net/gallery/218201679/Think-Spark-?
![Think Spark cover](https://github.com/user-attachments/assets/03073d2d-b565-42d7-bd53-03187eda1483)

# 👨‍💻 System Design

```
think_spark
├─ lib
│  ├─ core
│  │  ├─ common
│  │  │  ├─ local
│  │  │  │  ├─ notification_data_local.dart
│  │  │  │  └─ shared_preferences.dart
│  │  │  └─ widgets
│  │  │     ├─ app_bar
│  │  │     │  ├─ custom_spark_app_bar.dart
│  │  │     │  └─ spark_app_bar.dart
│  │  │     ├─ cards
│  │  │     │  ├─ blue_card.dart
│  │  │     │  ├─ cards_of_ideas_list.dart
│  │  │     │  ├─ idea_card_column.dart
│  │  │     │  ├─ idea_card_row.dart
│  │  │     │  └─ olive_card.dart
│  │  │     ├─ categories
│  │  │     │  └─ categories_preferences.dart
│  │  │     ├─ circulars
│  │  │     │  ├─ circular_container.dart
│  │  │     │  ├─ circular_container_shadow.dart
│  │  │     │  ├─ circular_image_with_shadow.dart
│  │  │     │  └─ profile_image_circular.dart
│  │  │     ├─ containers
│  │  │     │  └─ category_container.dart
│  │  │     ├─ curved_edges
│  │  │     │  ├─ curved_edges.dart
│  │  │     │  ├─ curved_edges_widget.dart
│  │  │     │  ├─ primary_curved_edges.dart
│  │  │     │  └─ primary_edges_widget.dart
│  │  │     ├─ floating_widget.dart
│  │  │     ├─ headers
│  │  │     │  └─ primary_header_widget.dart
│  │  │     ├─ icons
│  │  │     │  ├─ edit_icon.dart
│  │  │     │  ├─ favorite_icon.dart
│  │  │     │  ├─ meetings_icon.dart
│  │  │     │  └─ remove_icon.dart
│  │  │     ├─ inputs
│  │  │     │  ├─ clue_field.dart
│  │  │     │  ├─ password_form_fields.dart
│  │  │     │  └─ verify_code_digits_inputs.dart
│  │  │     ├─ layout
│  │  │     │  ├─ grid_view_layout.dart
│  │  │     │  └─ main_layout.dart
│  │  │     ├─ list_tiles
│  │  │     │  └─ settings_menu_tile.dart
│  │  │     ├─ loaders
│  │  │     │  ├─ animation_loader.dart
│  │  │     │  ├─ full_screen_loader.dart
│  │  │     │  └─ popus.dart
│  │  │     ├─ loading
│  │  │     │  ├─ card_meeting_shimmer_loading.dart
│  │  │     │  ├─ categories_shimmer.dart
│  │  │     │  ├─ chat_shimmer_loading.dart
│  │  │     │  ├─ idea_shimmer_loading.dart
│  │  │     │  ├─ image_shimmer.dart
│  │  │     │  ├─ popular_user_shimmer_loading.dart
│  │  │     │  ├─ spark_shimmer.dart
│  │  │     │  └─ user_name_phone_shimmer.dart
│  │  │     ├─ notifications
│  │  │     │  └─ notification_dot_icon.dart
│  │  │     ├─ rows
│  │  │     │  └─ icon_with_text_in_row.dart
│  │  │     ├─ search_box
│  │  │     │  └─ spark_bar_input_field.dart
│  │  │     ├─ social_register
│  │  │     │  └─ social_register.dart
│  │  │     ├─ spark_text_form_field.dart
│  │  │     └─ texts
│  │  │        ├─ divider_text.dart
│  │  │        ├─ section_heading.dart
│  │  │        └─ span_text.dart
│  │  ├─ constants
│  │  │  ├─ constants.dart
│  │  │  ├─ location_constants.dart
│  │  │  ├─ seperator.dart
│  │  │  ├─ spacing.dart
│  │  │  ├─ spark_colors.dart
│  │  │  ├─ spark_sizes.dart
│  │  │  └─ spark_string.dart
│  │  ├─ devices
│  │  │  └─ device_utility.dart
│  │  ├─ helpers
│  │  │  ├─ extensions.dart
│  │  │  └─ helper_functions.dart
│  │  ├─ networking
│  │  │  ├─ api_constants.dart
│  │  │  ├─ api_error.dart
│  │  │  ├─ api_error_handler.dart
│  │  │  ├─ api_error_model.dart
│  │  │  ├─ api_error_model.g.dart
│  │  │  ├─ api_result.dart
│  │  │  ├─ api_result.freezed.dart
│  │  │  ├─ dio_factory.dart
│  │  │  └─ register
│  │  │     ├─ register_api_constants.dart
│  │  │     ├─ register_service.dart
│  │  │     └─ register_service.g.dart
│  │  ├─ notifications
│  │  │  ├─ firebase_messaging_background_handler.dart
│  │  │  ├─ firebase_messaging_service.dart
│  │  │  └─ local_notification_service.dart
│  │  ├─ routing
│  │  │  ├─ app_router.dart
│  │  │  └─ routes.dart
│  │  ├─ service_locator
│  │  │  └─ dependency_injection.dart
│  │  ├─ theme
│  │  │  ├─ custom_themes
│  │  │  │  ├─ spark_appbar_theme.dart
│  │  │  │  ├─ spark_bottom_sheet.dart
│  │  │  │  ├─ spark_check_box_theme.dart
│  │  │  │  ├─ spark_chip_theme.dart
│  │  │  │  ├─ spark_elevated_button_theme.dart
│  │  │  │  ├─ spark_outlined_button_theme.dart
│  │  │  │  ├─ spark_text_field_theme.dart
│  │  │  │  └─ spark_text_theme.dart
│  │  │  └─ theme.dart
│  │  ├─ validation
│  │  │  └─ validator.dart
│  │  └─ widgets
│  │     ├─ button_tabs_bar.dart
│  │     ├─ button_widget.dart
│  │     └─ custom_header_widget.dart
│  ├─ firebase_options.dart
│  ├─ gen
│  │  └─ assets.gen.dart
│  ├─ main.dart
│  ├─ think_spark
│  │  ├─ screens
│  │  │  ├─ all_ideas
│  │  │  │  ├─ all_ideas_screen.dart
│  │  │  │  └─ widget
│  │  │  │     └─ all_ideas_cards_bloc_builder.dart
│  │  │  ├─ all_meetings
│  │  │  │  └─ all_meetings_screen.dart
│  │  │  ├─ biometrics
│  │  │  │  ├─ biometrics_screen.dart
│  │  │  │  └─ controller
│  │  │  │     └─ cubit
│  │  │  │        ├─ biometrics_cubit.dart
│  │  │  │        ├─ biometrics_state.dart
│  │  │  │        └─ biometrics_state.freezed.dart
│  │  │  ├─ categories
│  │  │  │  ├─ categories_screen.dart
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ categories_cubit.dart
│  │  │  │  │     ├─ categories_state.dart
│  │  │  │  │     └─ categories_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ categoreis_with_ideas_response.dart
│  │  │  │  │  │  └─ categoreis_with_ideas_response.g.dart
│  │  │  │  │  ├─ network
│  │  │  │  │  │  ├─ categories_constants.dart
│  │  │  │  │  │  ├─ categories_related_ideas_service.dart
│  │  │  │  │  │  └─ categories_related_ideas_service.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ categories_with_ideas_related_repository.dart
│  │  │  │  └─ widget
│  │  │  │     └─ categories_bloc_builder.dart
│  │  │  ├─ category_preferences
│  │  │  │  ├─ category_preferences_screen.dart
│  │  │  │  ├─ controller
│  │  │  │  │  ├─ preferences_cubit.dart
│  │  │  │  │  ├─ preferences_state.dart
│  │  │  │  │  └─ preferences_state.freezed.dart
│  │  │  │  └─ data
│  │  │  │     ├─ model
│  │  │  │     │  ├─ preferences_response.dart
│  │  │  │     │  └─ preferences_response.g.dart
│  │  │  │     ├─ network
│  │  │  │     │  ├─ preferences_constants.dart
│  │  │  │     │  └─ service
│  │  │  │     │     ├─ preferences_service.dart
│  │  │  │     │     └─ preferences_service.g.dart
│  │  │  │     └─ repository
│  │  │  │        ├─ categories_repository.dart
│  │  │  │        ├─ filters_repository.dart
│  │  │  │        └─ locations_repository.dart
│  │  │  ├─ change_password
│  │  │  │  ├─ change_password_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ change_password_bloc_listener.dart
│  │  │  │     ├─ email_input_step1.dart
│  │  │  │     ├─ reset_password_step3.dart
│  │  │  │     └─ verify_code_digits_input_step2.dart
│  │  │  ├─ chat
│  │  │  │  ├─ chat_screen.dart
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ chat_cubit.dart
│  │  │  │  │     ├─ chat_state.dart
│  │  │  │  │     └─ chat_state.freezed.dart
│  │  │  │  └─ data
│  │  │  │     ├─ model
│  │  │  │     │  ├─ conversations_response.dart
│  │  │  │     │  ├─ conversations_response.g.dart
│  │  │  │     │  ├─ conversation_args.dart
│  │  │  │     │  ├─ send_message_request_body.dart
│  │  │  │     │  ├─ send_message_request_body.g.dart
│  │  │  │     │  ├─ send_message_response.dart
│  │  │  │     │  └─ send_message_response.g.dart
│  │  │  │     ├─ network
│  │  │  │     │  ├─ chat_contants_ep.dart
│  │  │  │     │  ├─ chat_service.dart
│  │  │  │     │  ├─ chat_service.g.dart
│  │  │  │     │  └─ web_socket
│  │  │  │     │     ├─ web_socket_service_impl.dart
│  │  │  │     │     └─ we_socket_service.dart
│  │  │  │     └─ repository
│  │  │  │        ├─ conversations_repository.dart
│  │  │  │        └─ send_message_repository.dart
│  │  │  ├─ confirmation
│  │  │  │  └─ confirmation_screen.dart
│  │  │  ├─ conversation
│  │  │  │  ├─ conversation_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ chat_text_with_image.dart
│  │  │  │     └─ message_input_field.dart
│  │  │  ├─ creative
│  │  │  │  ├─ creative_home_screen
│  │  │  │  │  ├─ controller
│  │  │  │  │  │  └─ cubit
│  │  │  │  │  │     ├─ idea_investors_cubit.dart
│  │  │  │  │  │     ├─ idea_investors_state.dart
│  │  │  │  │  │     └─ idea_investors_state.freezed.dart
│  │  │  │  │  ├─ creative_home_screen.dart
│  │  │  │  │  ├─ data
│  │  │  │  │  │  ├─ model
│  │  │  │  │  │  │  ├─ investors_response.dart
│  │  │  │  │  │  │  └─ investors_response.g.dart
│  │  │  │  │  │  ├─ network
│  │  │  │  │  │  │  ├─ ideas_investors_constants.dart
│  │  │  │  │  │  │  ├─ ideas_investors_service.dart
│  │  │  │  │  │  │  └─ ideas_investors_service.g.dart
│  │  │  │  │  │  └─ repository
│  │  │  │  │  │     └─ investors_repository.dart
│  │  │  │  │  └─ widget
│  │  │  │  │     ├─ latest_clue.dart
│  │  │  │  │     └─ popular_investors.dart
│  │  │  │  ├─ creative_navigation_menu
│  │  │  │  │  ├─ controller
│  │  │  │  │  │  └─ cubit
│  │  │  │  │  │     ├─ creative_navigation_cubit.dart
│  │  │  │  │  │     ├─ creative_navigation_state.dart
│  │  │  │  │  │     └─ creative_navigation_state.freezed.dart
│  │  │  │  │  ├─ creative_navigation_menu.dart
│  │  │  │  │  └─ widget
│  │  │  │  │     └─ creative_custom_bottom_nav.dart
│  │  │  │  └─ upload_and_edit_clue
│  │  │  │     ├─ upload_and_edit_clue_screen.dart
│  │  │  │     └─ widget
│  │  │  │        └─ edit_clue_bloc_listener.dart
│  │  │  ├─ customer_service_chat
│  │  │  │  └─ customer_service_chat_screen.dart
│  │  │  ├─ edit_profile_screen
│  │  │  │  ├─ edit_profile_screen.dart
│  │  │  │  └─ widget
│  │  │  │     └─ edit_profile_bloc_listener.dart
│  │  │  ├─ favorite
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ favorite_cubit.dart
│  │  │  │  │     ├─ favorite_state.dart
│  │  │  │  │     └─ favorite_state.freezed.dart
│  │  │  │  ├─ favorite_screen.dart
│  │  │  │  └─ widget
│  │  │  │     └─ favorite_card.dart
│  │  │  ├─ forgot_password
│  │  │  │  ├─ controller
│  │  │  │  │  ├─ forgot_password_cubit.dart
│  │  │  │  │  ├─ forgot_password_state.dart
│  │  │  │  │  └─ forgot_password_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ forgot_password_request.dart
│  │  │  │  │  │  ├─ forgot_password_request.g.dart
│  │  │  │  │  │  ├─ password_response.dart
│  │  │  │  │  │  └─ password_response.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ forgot_password_repository.dart
│  │  │  │  ├─ forgot_password_bloc_listener.dart
│  │  │  │  └─ forgot_password_screen.dart
│  │  │  ├─ home
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ drawer_cubit.dart
│  │  │  │  │     ├─ drawer_state.dart
│  │  │  │  │     ├─ drawer_state.freezed.dart
│  │  │  │  │     ├─ ideas_cubit.dart
│  │  │  │  │     ├─ ideas_state.dart
│  │  │  │  │     └─ ideas_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ idea_request_body.dart
│  │  │  │  │  │  ├─ idea_request_body.g.dart
│  │  │  │  │  │  ├─ idea_response.dart
│  │  │  │  │  │  └─ idea_response.g.dart
│  │  │  │  │  ├─ network
│  │  │  │  │  │  ├─ idea_constants.dart
│  │  │  │  │  │  └─ service
│  │  │  │  │  │     ├─ idea_service.dart
│  │  │  │  │  │     └─ idea_service.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ idea_repository.dart
│  │  │  │  ├─ home_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ drawer_side_navigation_menu.dart
│  │  │  │     ├─ ideas_list_cards.dart
│  │  │  │     ├─ popular_user.dart
│  │  │  │     └─ title_with_subtitle.dart
│  │  │  ├─ ideas_details
│  │  │  │  ├─ controller
│  │  │  │  ├─ idea_details_screen.dart
│  │  │  │  └─ widgets
│  │  │  │     ├─ about_tab.dart
│  │  │  │     ├─ associated_ideas_with_creative.dart
│  │  │  │     ├─ creative_info_with_menu_popup.dart
│  │  │  │     ├─ description_tab.dart
│  │  │  │     ├─ ideas_tabs.dart
│  │  │  │     ├─ idea_description_title_and_details.dart
│  │  │  │     ├─ images_count_with_location.dart
│  │  │  │     ├─ location_with_first_joined_header.dart
│  │  │  │     ├─ photos_tab.dart
│  │  │  │     ├─ related_categories.dart
│  │  │  │     ├─ requirments_tab.dart
│  │  │  │     ├─ slide_actions_icons.dart
│  │  │  │     └─ user_info_bottom_sheet.dart
│  │  │  ├─ ideas_related_to_category
│  │  │  │  └─ ideas_related_to_category_screen.dart
│  │  │  ├─ investor_navigation_menu
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ investor_navigation_cubit.dart
│  │  │  │  │     ├─ investor_navigation_state.dart
│  │  │  │  │     └─ navigation_state.freezed.dart
│  │  │  │  ├─ investor_navigation_menu.dart
│  │  │  │  └─ widget
│  │  │  │     └─ investor_custom_bottom_nav.dart
│  │  │  ├─ login
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ login_cubit.dart
│  │  │  │  │     ├─ login_state.dart
│  │  │  │  │     └─ login_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ login_request_body.dart
│  │  │  │  │  │  └─ login_request_body.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ login_repository.dart
│  │  │  │  ├─ login_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ login_bloc_listener.dart
│  │  │  │     └─ login_text_form_widget.dart
│  │  │  ├─ login_activity
│  │  │  │  └─ login_activity_screen.dart
│  │  │  ├─ notifications
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ notifications_cubit.dart
│  │  │  │  │     ├─ notifications_state.dart
│  │  │  │  │     └─ notifications_state.freezed.dart
│  │  │  │  ├─ notifications_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ list_of_cards_with_scrollbar.dart
│  │  │  │     ├─ notification_card_item.dart
│  │  │  │     ├─ notification_slidable_item.dart
│  │  │  │     └─ slidable_action_icons.dart
│  │  │  ├─ on_boarding
│  │  │  │  ├─ model
│  │  │  │  │  └─ boarding_model.dart
│  │  │  │  ├─ on_boarding_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ on_boarding_item.dart
│  │  │  │     └─ on_boarding_page_view.dart
│  │  │  ├─ profile
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ profile_cubit.dart
│  │  │  │  │     ├─ profile_state.dart
│  │  │  │  │     └─ profile_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ profile_request_body.dart
│  │  │  │  │  │  ├─ profile_request_body.g.dart
│  │  │  │  │  │  ├─ profile_response.dart
│  │  │  │  │  │  └─ profile_response.g.dart
│  │  │  │  │  ├─ network
│  │  │  │  │  │  ├─ profile_constants.dart
│  │  │  │  │  │  ├─ profile_service.dart
│  │  │  │  │  │  └─ profile_service.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ profile_repository.dart
│  │  │  │  ├─ profile_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ profile_image_with_edit_profile.dart
│  │  │  │     ├─ profile_settings_modifications.dart
│  │  │  │     └─ user_name_with_phone.dart
│  │  │  ├─ reset_password
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ reset_password_request.dart
│  │  │  │  │  │  └─ reset_password_request.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ reset_password_repository.dart
│  │  │  │  ├─ reset_password_bloc_listener.dart
│  │  │  │  └─ reset_password_screen.dart
│  │  │  ├─ schedule_meeting
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ schedule_meeting_cubit.dart
│  │  │  │  │     ├─ schedule_meeting_state.dart
│  │  │  │  │     └─ schedule_meeting_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ save_device_notification_token_request.dart
│  │  │  │  │  │  ├─ save_device_notification_token_request.g.dart
│  │  │  │  │  │  ├─ save_device_response.dart
│  │  │  │  │  │  ├─ save_device_response.g.dart
│  │  │  │  │  │  ├─ schedule_meeting_response.dart
│  │  │  │  │  │  ├─ schedule_meeting_response.g.dart
│  │  │  │  │  │  ├─ schedule_request_body.dart
│  │  │  │  │  │  └─ schedule_request_body.g.dart
│  │  │  │  │  ├─ network
│  │  │  │  │  │  ├─ meeting_constants_ep.dart
│  │  │  │  │  │  ├─ schedule_meeting_service.dart
│  │  │  │  │  │  └─ schedule_meeting_service.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     ├─ save_device_token_for_scheduling_repository.dart
│  │  │  │  │     └─ schedule_meeting_repository.dart
│  │  │  │  ├─ schedule_meeting_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ date_and_available_time_picker.dart
│  │  │  │     └─ schedule_meeting_button.dart
│  │  │  ├─ settings
│  │  │  │  └─ settings_screen.dart
│  │  │  ├─ sign_options
│  │  │  │  └─ sign_options_screen.dart
│  │  │  ├─ sign_up
│  │  │  │  ├─ controller
│  │  │  │  │  └─ cubit
│  │  │  │  │     ├─ register_cubit.dart
│  │  │  │  │     ├─ register_state.dart
│  │  │  │  │     └─ register_state.freezed.dart
│  │  │  │  ├─ data
│  │  │  │  │  ├─ model
│  │  │  │  │  │  ├─ register_request_body.dart
│  │  │  │  │  │  ├─ register_request_body.g.dart
│  │  │  │  │  │  ├─ register_response.dart
│  │  │  │  │  │  └─ register_response.g.dart
│  │  │  │  │  └─ repository
│  │  │  │  │     └─ register_repository.dart
│  │  │  │  ├─ sign_up_screen.dart
│  │  │  │  └─ widget
│  │  │  │     ├─ register_bloc_listener.dart
│  │  │  │     └─ sign_up_form_fields.dart
│  │  │  ├─ splash
│  │  │  │  └─ splash_screen.dart
│  │  │  ├─ splash_confirm
│  │  │  │  └─ splash_confirm_screen.dart
│  │  │  ├─ update_email
│  │  │  │  ├─ update_email_screen.dart
│  │  │  │  └─ widget
│  │  │  │     └─ update_email_bloc_listener.dart
│  │  │  ├─ upload_clue
│  │  │  │  └─ upload_clue_screen.dart
│  │  │  └─ verify_code
│  │  │     ├─ data
│  │  │     │  ├─ model
│  │  │     │  │  ├─ code_request.dart
│  │  │     │  │  └─ code_request.g.dart
│  │  │     │  └─ repository
│  │  │     │     └─ code_repository.dart
│  │  │     ├─ verify_code_bloc_listener.dart
│  │  │     └─ verify_code_screen.dart
│  │  └─ think_spark
│  │     └─ screens
│  │        └─ profile
│  │           └─ controller
│  │              └─ cubit
│  └─ think_spark_app.dart
```
