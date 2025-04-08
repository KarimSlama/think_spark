import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:think_spark/core/networking/dio_factory.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/repository/register_repository.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio _dio = DioFactory.getDio();

  getIt.registerLazySingleton<RegisterService>(() => RegisterService(_dio));

  ///REGISTER
  getIt.registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
