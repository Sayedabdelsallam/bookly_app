import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Time out with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Time out with api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to api server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps there was an error, please try again');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Time out with api server');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    } else {
      return ServerFailure('Opps there was an error, please try again');
    }
  }
}
