import 'package:dio/dio.dart';

class ApiException{
  static handleException(DioException error){
    switch(error.type){
      case DioExceptionType.connectionTimeout :{
        return "server take long time to response";
      }
      case DioExceptionType.receiveTimeout :{
        return "didn't get any response from server";
      }
      default:{
        return "unknown error please check your internet connection and try later";
      }

    }
  }
}