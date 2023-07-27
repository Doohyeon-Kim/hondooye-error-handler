import 'package:hondooye_error_handler/hondooye_error_handler.dart';

class CustomError implements HdyError {
  CustomError(this.message);

  @override
  String? code;

  @override
  String? type;

  @override
  String message;

  @override
  String title = "Custom Error Title";

  @override
  String? detail = "Custom Error Message";

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();
}
