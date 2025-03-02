class SearchInfo {
  String? _textSnippet;

  String? get textSnippet => _textSnippet;

  SearchInfo({
    String? textSnippet,
  }) {
    _textSnippet = textSnippet;
  }

  SearchInfo.fromJson(dynamic json) {
    if (json is Map) {
      _textSnippet = json["textSnippet"] as String?;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    map["textSnippet"] = _textSnippet;
    return map;
  }
}
