class Style {
  final Map<String, dynamic> data;

  Style(this.data);

  factory Style.empty() {
    return Style({});
  }

  Style fork() {
    return Style(Map.from(data));
  }

  static Style lerp(Style a, Style b, double t) {
    Style newStyle = Style.empty();
    final aMap = a.data;
    final bMap = b.data;

    final keys = aMap.keys.toList();
    bMap.keys.forEach((key) {
      if (!aMap.containsKey(key)) keys.add(key);
    });

    for (final key in keys) {
      final aValue = aMap[key];
      final bValue = bMap[key];

      if (aValue != null &&
          bValue != null) {}
    }
  }
}
