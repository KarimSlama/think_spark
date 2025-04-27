import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:think_spark/core/networking/dio_factory.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/biometrics/controller/cubit/biometrics_cubit.dart';
import 'package:think_spark/think_spark/screens/categories/controller/cubit/categories_cubit.dart';
import 'package:think_spark/think_spark/screens/categories/data/network/categories_related_ideas_service.dart';
import 'package:think_spark/think_spark/screens/categories/data/repository/categories_with_ideas_related_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_cubit.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/network/service/preferences_service.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/categories_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/filters_repository.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/repository/locations_repository.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/repository/forgot_password_repository.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/network/service/idea_service.dart';
import 'package:think_spark/think_spark/screens/home/data/repository/idea_repository.dart';
import 'package:think_spark/think_spark/screens/login/controller/cubit/login_cubit.dart';
import 'package:think_spark/think_spark/screens/login/data/repository/login_repository.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/repository/reset_password_repository.dart';
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
  getIt
      .registerFactory<ForgotPasswordCubit>(() => ForgotPasswordCubit(getIt(), getIt(), getIt()));

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

  ///NAVIGATION
  getIt.registerFactory<NavigationCubit>(() => NavigationCubit());

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
}