import 'package:bookly/core/api/end_points.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$EndPoints.baseURL$endPoint');
    return response.data;
  }

}
