

import 'package:dio/dio.dart';
import 'package:flutter_rest_api/api/authentication_api.dart';
import 'package:flutter_rest_api/helpers/http.dart';
import 'package:logger/logger.dart';
import 'package:get_it/get_it.dart';

abstract class DependencyInjection{
  static void initialize(){
    final Dio dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.13:9000'),
    );
    Logger logger = Logger();
    Http http = Http
    (dio: dio,
     logger: logger,
      logsEnabled: true,
    );
    final AuthenticationAPI authenticationAPI = AuthenticationAPI(http: http);

    GetIt.instance.registerSingleton<AuthenticationAPI>(authenticationAPI);
  }
}