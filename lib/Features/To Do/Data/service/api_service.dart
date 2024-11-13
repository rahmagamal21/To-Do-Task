import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../model/task_model.dart';
import '../model/task_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://dummyjson.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/todos")
  Future<TaskResponse> getTasks();

  @POST("/todos/add")
  Future<TaskModel> addTask(@Body() Map<String, dynamic> task);

  @PUT("/todos/{id}")
  Future<TaskModel> updateTask(
      @Path("id") int id, @Body() Map<String, dynamic> task);

  @DELETE("/todos/{id}")
  Future<void> deleteTask(@Path("id") int id);
}
