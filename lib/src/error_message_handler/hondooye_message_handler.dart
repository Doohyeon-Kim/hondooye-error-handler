import 'package:flutter/material.dart';

import '../component/error_dialog.dart';
import '../constant/constant.dart';
import '../error/hondooye_error.dart';
import 'hondooye_message.dart';

class HdyErrorMessageHandler {
  static HdyErrorMessage? _errorMessage;

  HdyErrorMessageHandler._();

  static bool checkErrorMessageExist() => _errorMessage != null ? true : false;

  static void setErrorMessage({required HdyError hdyError}) {
    _errorMessage =
        HdyErrorMessage(title: hdyError.title!, detail: hdyError.detail!);
  }

  static HdyErrorMessage getErrorMessage() {
    if (checkErrorMessageExist()) {
      return _errorMessage!;
    } else {
      return HdyErrorMessage(title: '', detail: '');
    }
  }

  static void showError(
      {required BuildContext context, required WidgetType widgetType, Widget? customErrorDialog}) {
    switch (widgetType) {
      case WidgetType.dialog:
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return customErrorDialog ??
                HdyErrorDialog(
                  context: context,
                  errorMessage: _errorMessage ??
                      HdyErrorMessage(
                          title: "Unknown Error",
                          detail: "Unknown Error Occurred. Please try again later."),
                );
          },
        );
        return;

      default:
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return HdyErrorDialog(
                context: context,
                errorMessage: _errorMessage ??
                    HdyErrorMessage(title: "Unknown Error",
                        detail: "Unknown Error Occurred. Please try again later."));
          },
        );
        return;
    }
  }

  static void flushErrorMessage() {
    _errorMessage = null;
  }
}
