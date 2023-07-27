import 'package:hondooye_error_handler/src/error_message_handler/hondooye_message.dart';
import 'package:flutter/material.dart';

import '../error_message_handler/hondooye_message_handler.dart';

class HdyErrorDialog extends StatelessWidget {
  const HdyErrorDialog(
      {Key? key,
      required this.context,
      required this.errorMessage,
      this.errorTitleTextWidget,
      this.errorDetailTextWidget,
      this.buttonText})
      : super(key: key);

  final BuildContext context;
  final HdyErrorMessage errorMessage;
  final String? buttonText;
  final Text? errorTitleTextWidget;
  final Text? errorDetailTextWidget;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: errorTitleTextWidget ?? Text('${errorMessage.title} '),
      content: errorDetailTextWidget ??
          Text(
            '${errorMessage.detail} ',
          ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                HdyErrorMessageHandler.flushErrorMessage();
                Navigator.of(context).pop(); // Dismiss alert dialog
              },
              child: Text(buttonText ?? "Confirm"),
            ),
          ],
        ),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
