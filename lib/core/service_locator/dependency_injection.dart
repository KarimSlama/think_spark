import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:think_spark/core/networking/dio_factory.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/core/notifications/firebase_messaging_service.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/controller/cubit/idea_investors_cubit.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/network/ideas_investors_service.dart';
import 'package:think_spark/think_spark/screens/biometrics/controller/cubit/biometrics_cubit.dart';
import 'package:think_spark/think_spark/screens/categories/controller/cubit/categories_cubit.dart';
import 'package:think_spark/think_spark/screens/categories/data/network/categories_related_ideas_service.dart';
import 'package:think_spark/think_spark/screens/categories/data/repository/categories_with_ideas_related_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_cubit.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/network/service/preferences_service.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/categories_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/filters_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/locations_repository.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_cubit.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/chat_service.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/web_socket/we_socket_service.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/web_socket/web_socket_service_impl.dart';
import 'package:think_spark/think_spark/screens/chat/data/repository/conversations_repository.dart';
import 'package:think_spark/think_spark/screens/chat/data/repository/send_message_repository.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/repository/forgot_password_repository.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/network/service/idea_service.dart';
import 'package:think_spark/think_spark/screens/home/data/repository/idea_repository.dart';
import 'package:think_spark/think_spark/screens/login/controller/cubit/login_cubit.dart';
import 'package:think_spark/think_spark/screens/login/data/repository/login_repository.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/controller/cubit/investor_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/notifications/controller/cubit/notifications_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/data/network/profile_service.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/repository/investors_repository.dart';
import 'package:think_spark/think_spark/screens/profile/data/repository/profile_repository.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/repository/reset_password_repository.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_cubit.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/network/schedule_meeting_service.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/repository/save_device_token_for_scheduling_repository.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/repository/schedule_meeting_repository.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/repository/register_repository.dart';
import 'package:think_spark/think_spark/screens/verify_code/data/repository/code_repository.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  /// SERVICES
  getIt.registerLazySingleton<RegisterService>(() => RegisterService(dio));
  getIt
      .registerLazySingleton<PreferencesService>(() => PreferencesService(dio));
  getIt.registerLazySingleton<IdeaService>(() => IdeaService(dio));
  getIt.registerLazySingleton<CategoriesRelatedIdeasService>(
      () => CategoriesRelatedIdeasService(dio));
  getIt.registerLazySingleton<ProfileService>(() => ProfileService(dio));
  getIt.registerLazySingleton<ScheduleMeetingService>(
      () => ScheduleMeetingService(dio));
  getIt.registerLazySingleton<ChatService>(() => ChatService(dio));
  getIt.registerLazySingleton<IdeasInvestorsService>(() => IdeasInvestorsService(dio));
  getIt.registerLazySingleton<WebSocketService>(() => WebSocketServiceImpl());

  ///REGISTER
  getIt.registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  ///LOGIN
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  ///FORGOT PASSWORD
  getIt.registerLazySingleton<ForgotPasswordRepository>(
      () => ForgotPasswordRepository(getIt()));
  getIt.registerFactory<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(getIt(), getIt(), getIt()));

  ///FORGOT PASSWORD
  getIt.registerLazySingleton<CodeRepository>(() => CodeRepository(getIt()));

  ///RESET PASSWORD
  getIt.registerLazySingleton<ResetPasswordRepository>(
      () => ResetPasswordRepository(getIt()));

  ///PREFERENCES
  getIt.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepository(getIt()));
  getIt.registerLazySingleton<FiltersRepository>(
      () => FiltersRepository(getIt()));
  getIt.registerLazySingleton<LocationsRepository>(
      () => LocationsRepository(getIt()));
  getIt.registerFactory<PreferencesCubit>(
      () => PreferencesCubit(getIt(), getIt(), getIt()));

  ///INVESTOR NAVIGATION
  getIt.registerFactory<InvestorNavigationCubit>(
      () => InvestorNavigationCubit());

  ///CREATIVE NAVIGATION
  getIt.registerFactory<CreativeNavigationCubit>(
      () => CreativeNavigationCubit());

  ///HOME
  getIt.registerLazySingleton<IdeaRepository>(() => IdeaRepository(getIt()));
  getIt.registerFactory<IdeasCubit>(() => IdeasCubit(getIt()));

  ///CATEGORIES
  getIt.registerLazySingleton<CategoriesWithIdeasRelatedRepository>(
      () => CategoriesWithIdeasRelatedRepository(getIt()));
  getIt.registerFactory<CategoriesCubit>(() => CategoriesCubit(getIt()));

  ///FAVORITES
  getIt.registerFactory<FavoriteCubit>(() => FavoriteCubit(getIt()));

  ///DRAWER NAVIGATION
  getIt.registerFactory<DrawerCubit>(() => DrawerCubit());

  ///BIOMETRICS
  getIt.registerFactory<BiometricCubit>(() => BiometricCubit());

  ///PROFILES
  getIt.registerLazySingleton<ProfileRepository>(
      () => ProfileRepository(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));

  /// INVESTORS
  getIt.registerLazySingleton<InvestorsRepository>(() => InvestorsRepository(getIt()));
  getIt.registerFactory<IdeaInvestorsCubit>(() => IdeaInvestorsCubit(getIt()));

  /// SCHEDULE MEETING
  getIt.registerLazySingleton<ScheduleMeetingRepository>(
      () => ScheduleMeetingRepository(getIt()));
  getIt.registerFactory<ScheduleMeetingCubit>(
      () => ScheduleMeetingCubit(getIt()));

  /// NOTIFICATIONS
  getIt.registerSingleton<SaveDeviceTokenForSchedulingRepository>(
    SaveDeviceTokenForSchedulingRepository(getIt()),
  );
  getIt.registerFactory<NotificationsCubit>(() => NotificationsCubit());

  /// CHAT & CONVERSATIONS

  getIt.registerLazySingleton<SendMessageRepository>(
      () => SendMessageRepository(getIt()));
  getIt.registerLazySingleton<ConversationsRepository>(
      () => ConversationsRepository(getIt()));

  getIt.registerFactory<ChatCubit>(() => ChatCubit(getIt(), getIt()));

  // FirebaseMessagingService
  getIt.registerSingleton<FirebaseMessagingService>(
    FirebaseMessagingService(),
  );
}
