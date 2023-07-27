
import 'package:hondooye_error_handler/hondooye_error_handler.dart';
import 'package:hondooye_logger/hondooye_logger.dart';


class CustomException implements HdyException {
  CustomException(this.hdyError) {
    printExceptionLog(this);
  }

  @override
  HdyError hdyError;

  @override
  String toString() {
    return "Custom Exception: ${hdyError.message}";
  }

  @override
  void printExceptionLog(Exception hydException) {
    Logger.exception(hydException);
  }

  @override
  String printErrorLog(){
    return "[${hdyError.runtimeType}Exception]}\n${hdyError.toString()}";
  }
}