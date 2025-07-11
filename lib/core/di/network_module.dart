import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class NetworkModule {
  
  @lazySingleton
  http.Client get httpClient => http.Client();
}