import 'hondooye_error.dart';
import 'hondooye_error_factory.dart';

class HdyErrors implements HdyError {
  HdyErrors({this.code, this.type, this.message, this.title, this.detail});

  @override
  final String? code;
  @override
  final String? type;
  @override
  final String? message;
  @override
  final String? title;
  @override
  final String? detail;

  @override
  String toString() {
    return "${code != null
        ? "code: $code\n"
        : ""}$type\n$message\n$title\n$detail";
  }

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();

  factory HdyErrors.userInputError({String? type, String? message, String? title, String? detail}) = UserInputError;

  factory HdyErrors.invalidFormat({String? type, String? message, String? title, String? detail}) = InvalidFormat;

  factory HdyErrors.badRequest({String? type, String? message, String? title, String? detail}) = BadRequest;

  factory HdyErrors.unauthorized({String? type, String? message, String? title, String? detail}) = Unauthorized;

  factory HdyErrors.forbidden({String? type, String? message, String? title, String? detail}) = Forbidden;

  factory HdyErrors.notFound({String? type, String? message, String? title, String? detail}) = NotFound;

  factory HdyErrors.conflict({String? type, String? message, String? title, String? detail}) = Conflict;

  factory HdyErrors.unprocessableEntity({String? type, String? message, String? title, String? detail}) = UnprocessableEntity;

  factory HdyErrors.requestTimeout({String? type, String? message, String? title, String? detail}) = RequestTimeout;

  factory HdyErrors.internalServerError({String? type, String? message, String? title, String? detail}) = InternalServerError;

  factory HdyErrors.serviceUnavailable({String? type, String? message, String? title, String? detail}) = ServiceUnavailable;

  factory HdyErrors.unknownError({String? type, String? message, String? title, String? detail}) = UnknownError;

  factory HdyErrors.unstableNetwork({String? type, String? message, String? title, String? detail}) = UnstableNetwork;
}
