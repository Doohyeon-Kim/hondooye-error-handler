class HdyError extends Error {
  HdyError({this.code, this.type, this.message, this.title, this.detail});

  final String? code;
  final String? type;
  final String? message;
  final String? title;
  final String? detail;

  @override
  String toString() {
    return "${code != null
        ? "code: $code\n"
        : ""}type: $type\nmessage: $message\ntitle: $title\ndetail: detail";
  }
}
