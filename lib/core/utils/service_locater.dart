import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/Home/data/repositories/home_repo_imple.dart';
import 'package:bookly_app/features/Home/data/repositories/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiServices>(),
  ));
}
