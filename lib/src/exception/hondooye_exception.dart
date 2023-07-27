// ignore: depend_on_referenced_packages
import '../error/hondooye_error.dart';
import '../error_message_handler/hondooye_message_handler.dart';
import 'hondooye_exception_factory.dart';
import 'package:hondooye_logger/hondooye_logger.dart';

class HdyException implements Exception {
  HdyException(this.hdyError){
   printErrorLog();
   printExceptionLog(this);
   HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }

  HdyError hdyError;

  @override
  String toString() {
    return "${"${hdyError.runtimeType}Exception"}: ${hdyError.message ?? ""}";
  }

  void printErrorLog(){
     Logger.error(hdyError);
  }

  void printExceptionLog(Exception hydException) {
    Logger.exception(errorMethodCount: 10, hydException);
  }

  factory HdyException.userInputError({HdyError? hdyError}) = UserInputErrorException;

  factory HdyException.invalidFormat({HdyError? hdyError}) = InvalidFormatException;

  factory HdyException.badRequest({HdyError? hdyError}) = BadRequestException;

  factory HdyException.unauthorized({HdyError? hdyError}) = UnauthorizedException;

  factory HdyException.forbidden({HdyError? hdyError}) = ForbiddenException;

  factory HdyException.notFound({HdyError? hdyError}) = NotFoundException;

  factory HdyException.conflict({HdyError? hdyError}) = ConflictException;

  factory HdyException.requestTimeout({HdyError? hdyError}) = RequestTimeoutException;

  factory HdyException.internalServerError({HdyError? hdyError}) = InternalServerErrorException;

  factory HdyException.serviceUnavailable({HdyError? hdyError}) = ServiceUnavailableException;

  factory HdyException.unknownError({HdyError? hdyError}) = UnknownErrorException;

  factory HdyException.unstableNetwork({HdyError? hdyError}) = UnstableNetworkException;

}
