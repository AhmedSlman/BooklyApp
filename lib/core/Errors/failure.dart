import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  // ignore: deprecated_member_use
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time Out With Server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time Out With Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recive Time Out With Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificat');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Requset To Server Canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketExcption')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error Please Try Again Again !!');
      default:
        return ServerFailure('Unexpected Error Please Try Again Again !!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
