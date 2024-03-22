
import 'package:flutter_rest_api/helpers/http.dart';
import 'package:flutter_rest_api/helpers/http_response.dart';

class AuthenticationAPI{
  final Http _http;

  AuthenticationAPI({required Http http}) : _http = http;



 Future<HttpResponse> register({
    required String username,
    required String email,
    required String password,
      }) 
       {
        return _http.request('/api/v1/register',method: "POST", data: {
              "username": username,
              "email": email,
              "password": password,
              },
            );
      }

   Future<HttpResponse> login({
    required String email,
    required String password,
      }) async {
        return _http.request('/api/v1/login',method: "POST", data: {
              "email": email,
              "password": password,
              },
            );
  }

}