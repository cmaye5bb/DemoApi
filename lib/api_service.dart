
import 'package:api_demo/common/parse_error_logger.dart';
import 'package:api_demo/models/user.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

  part 'api_service.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.org")
abstract class ApiService{
    // factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  factory ApiService(Dio dio, {String baseUrl} ) =_ApiService;

  @GET("/users")
  Future<List<User>> getUsers();
  

}