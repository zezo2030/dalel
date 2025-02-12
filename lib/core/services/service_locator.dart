import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/features/auth/presentation/auth_bloc/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerFactory<AuthCubit>(() => AuthCubit());
}
