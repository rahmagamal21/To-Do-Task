import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_task/Features/To%20Do/Data/service/api_service.dart';

import '../../Features/To Do/Data/repository/task_repository_impl.dart';

@module
abstract class RegisterModule {
  // Dio setup
  @singleton
  Dio get dio {
    final dio = Dio();
    dio.options.baseUrl = "https://dummyjson.com";
    dio.options.headers['Content-Type'] = 'application/json';
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return dio;
  }

  @singleton
  ApiService get apiService => ApiService(dio);
  @singleton
  TaskRepositoryImpl get taskRepositoryImpl => TaskRepositoryImpl(apiService);
}
