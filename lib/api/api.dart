import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map data;

  ApiRequest({required this.url, required this.data});

  Dio _dio() {
    return Dio(BaseOptions(headers: {
      'Authorization': 'Bearer OANDA-AUTHENTICATION_TOKEN',
    }));
  }

  Future<dynamic> get() async {
    try {
      final response =
          await _dio().get(url, queryParameters: data as Map<String, dynamic>);
      return response.data;
    } catch (error, stackTrace) {
      throw Exception(
          'Exception occurred: $error with stacktrace: $stackTrace');
    }
  }


}