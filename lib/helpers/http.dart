import 'package:dio/dio.dart';
import 'package:flutter_rest_api/helpers/http_response.dart';
import 'package:logger/logger.dart';

class Http{
  Dio _dio;
  Logger _logger;
  bool _logsEnabled;

  Http ({required Dio dio, required Logger logger, required bool logsEnabled}){
    _dio = dio;
    _logger = logger;
    _logsEnabled = logsEnabled;
  } 

  Future<HttpResponse> request(String path, {String method="GET",
  Map<String, dynamic>? queryParameters,
  Map<String, dynamic>? data,
  Map<String, String>? headers,
  }) async{
     try{
        final response = await _dio.request(
          path,
          options: Options(
            method: method,
            headers: headers,
          ),
          queryParameters: queryParameters,
          data: data,
        
      );
      _logger.i(response.data);
        return HttpResponse.success(response.data);
       }catch(e){
        _logger.e(e);

        int statusCode = -1;//Para errores
        String message = "unknown error";
        dynamic data;
        if(e is DioError){
          message = e.message;
          if(e.response != null){
            statusCode= e.response!.statusCode!;
            message = e.response!.statusMessage!;
            data = e.response?.data;
          }
        }

        return HttpResponse.fail(
          statusCode:statusCode ,
           message: message,
            data:data);
       }
  }
}