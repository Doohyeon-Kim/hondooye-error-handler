import 'package:hondooye_error_handler/src/error/hondooye_error.dart';

import '../error/hondooye_errors.dart';
import '../error_message_handler/hondooye_message_handler.dart';
import 'hondooye_exception.dart';

class UserInputErrorException extends HdyException {
  @override
  UserInputErrorException({HdyError? hdyError}) : super(HdyErrors.userInputError()) {
    hdyError ??= HdyErrors.userInputError();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class InvalidFormatException extends HdyException {
  @override
  InvalidFormatException({HdyError? hdyError}) : super(HdyErrors.invalidFormat()) {
    hdyError ??= HdyErrors.invalidFormat();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class BadRequestException extends HdyException {
  @override
  BadRequestException({HdyError? hdyError}) : super(HdyErrors.badRequest()) {
    hdyError ??= HdyErrors.badRequest();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class UnauthorizedException extends HdyException {
  @override
  UnauthorizedException({HdyError? hdyError}) : super(HdyErrors.unauthorized()) {
    hdyError ??= HdyErrors.unauthorized();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class ForbiddenException extends HdyException {
  @override
  ForbiddenException({HdyError? hdyError}) : super(HdyErrors.forbidden()) {
    hdyError ??= HdyErrors.forbidden();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class NotFoundException extends HdyException {
  @override
  NotFoundException({HdyError? hdyError}) : super(HdyErrors.notFound()) {
    hdyError ??= HdyErrors.notFound();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class ConflictException extends HdyException {
  @override
  ConflictException({HdyError? hdyError}) : super(HdyErrors.conflict()) {
    hdyError ??= HdyErrors.conflict();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class RequestTimeoutException extends HdyException {
  @override
  RequestTimeoutException({HdyError? hdyError}) : super(HdyErrors.requestTimeout()) {
    hdyError ??= HdyErrors.requestTimeout();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class InternalServerErrorException extends HdyException {
  @override
  InternalServerErrorException({HdyError? hdyError}) : super(HdyErrors.internalServerError()) {
    hdyError ??= HdyErrors.internalServerError();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class ServiceUnavailableException extends HdyException {
  @override
  ServiceUnavailableException({HdyError? hdyError}) : super(HdyErrors.serviceUnavailable()) {
    hdyError ??= HdyErrors.serviceUnavailable();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class UnknownErrorException extends HdyException {
  @override
  UnknownErrorException({HdyError? hdyError}) : super(HdyErrors.unknownError()) {
    hdyError ??= HdyErrors.unknownError();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}

class UnstableNetworkException extends HdyException {
  @override
  UnstableNetworkException({HdyError? hdyError}) : super(HdyErrors.unstableNetwork()) {
    hdyError ??= HdyErrors.unstableNetwork();
    printExceptionLog(this);
    printErrorLog();
    HdyErrorMessageHandler.setErrorMessage(hdyError: hdyError);
  }
}
