# hondooye_error_handler

[![pub package](https://img.shields.io/pub/v/hondooye_error_handler.svg)](https://pub.dev/packages/hondooye_error_handler)

A powerful and flexible error handling package for Flutter projects.

## Features

- 🎯 Simple and intuitive API
- 🔧 Customizable error dialogs
- 📱 Full platform support (Web, iOS, Android, Linux, macOS, Windows)
- 🚀 Perfect compatibility with Flutter 3.0+
- 🎨 Support for various error types

## Version

**Current version: 1.0.0**

## Getting started

### Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  hondooye_error_handler: ^1.0.0
```

Then install the package:

```bash
flutter pub get
```

## Usage

### Basic Usage

```dart
import 'package:hondooye_error_handler/hondooye_error_handler.dart';

try {
  // Code that may throw an error
  throw HdyException(HdyErrors.conflict());
} on HdyException {
  HdyErrorMessageHandler.showError(
    context: context,
    widgetType: WidgetType.dialog,
  );
}
```

### Custom Error Dialog

```dart
HdyErrorMessageHandler.showError(
  context: context,
  widgetType: WidgetType.dialog,
  customErrorDialog: AlertDialog(
    title: Text('Custom Error'),
    content: Text('Error message'),
    actions: [/* ... */],
  ),
);
```

## Requirements

- Flutter: `>=3.0.0`
- Dart: `>=3.0.0 <4.0.0`

## Additional information

### Major Changes (1.0.0)

- Full compatibility with Flutter 3.0+
- Uses latest hondooye_logger (^1.0.0)
- All code updated and lint warnings resolved

For detailed changelog, see [CHANGELOG.md](CHANGELOG.md).

### License

This project is licensed under the terms specified in the [LICENSE](LICENSE) file.

### Repository

GitHub: [https://github.com/Doohyeon-Kim/hondooye-error-handler](https://github.com/Doohyeon-Kim/hondooye-error-handler)


