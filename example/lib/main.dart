import 'package:flutter/material.dart';
import 'package:hondooye_error_handler/hondooye_error_handler.dart';

import 'custom_error.dart';
import 'custom_exception.dart';
import 'theme_notifier.dart';

void main() {
  runApp(ThemeNotifier(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ThemeNotifier.of(context)!.theme,
      builder: (BuildContext context, ThemeData themeData, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hondooye Package Test App',
          theme: themeData,
          home: const MyHomePage(title: 'Hondooye'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                try {
                  HdyError hdyError = HdyErrors.conflict();
                  throw HdyException(hdyError);
                } on HdyException {
                  HdyErrorMessageHandler.showError(
                      context: context, widgetType: WidgetType.dialog);
                }
              },
              child: const Text("Hondooye Exception"),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  HdyError hdyError = CustomError("Custom Error");
                  throw CustomException(hdyError);
                } on CustomException {
                  HdyErrorMessageHandler.showError(
                      context: context, widgetType: WidgetType.dialog);
                }
              },
              child: const Text("Custom Exception"),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  HdyError hdyError = CustomError("Custom Error Message Dialog");
                  throw CustomException(hdyError);
                } on CustomException {
                  HdyErrorMessageHandler.showError(
                    context: context,
                    widgetType: WidgetType.dialog,
                    customErrorDialog: AlertDialog(
                      title: const Text('Title'),
                      content: const Text(
                        'Message',
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                HdyErrorMessageHandler.flushErrorMessage();
                                Navigator.of(context)
                                    .pop(); // Dismiss alert dialog
                              },
                              child: const Text("Button 1"),
                            ),
                            const SizedBox(width: 24),
                            OutlinedButton(
                              onPressed: () {
                                HdyErrorMessageHandler.flushErrorMessage();
                                Navigator.of(context)
                                    .pop(); // Dismiss alert dialog
                              },
                              child: const Text("Button 2"),
                            ),
                          ],
                        ),
                      ],
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  );
                }
              },
              child: const Text("Custom Error Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
