import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerError extends Failure {
  ServerError(super.errorMessage);

  factory ServerError.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
         return ServerError('Connection timeout with Api');

      case DioExceptionType.sendTimeout:
        return ServerError('Send timeout with Api');
      case DioExceptionType.receiveTimeout:
        return ServerError('Receive timeout with Api');
      case DioExceptionType.badCertificate:
        return ServerError('BadCertificate timeout with Api');
      case DioExceptionType.badResponse:
         
       return ServerError.fromResponse(dioError.response!.statusCode!,dioError.response!.data);
      case DioExceptionType.cancel:

        return ServerError('Api was Cancelled');
      case DioExceptionType.connectionError:
       return ServerError('Connection Error');
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')){
          return  ServerError('No internet connection');
        }
        return ServerError('Unexpected Error,Please Try again');
      default:
        return ServerError('SomeThing Error Try again later');
    }
  }

  factory ServerError.fromResponse(int statusCode ,dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerError(response['error']['message']);
    }else if(statusCode==404) {
      return ServerError('Your request not found');
    }   else if(statusCode==500) {
      return ServerError('Internet server error ,Please try later');
    }else{
      return ServerError('Please try again  later ');
    }
  }
}
