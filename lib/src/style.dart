import 'package:flutter/material.dart';

class Style {
  final Map<String, dynamic> _data;

  Style(this._data);

  factory Style.empty() {
    return Style({});
  }

  Style fork() {
    return Style(Map.from(_data));
  }

  void set(String key, dynamic value) {
    _data[key] = value;
  }

  dynamic get(String key) {
    return _data[key];
  }

  static Style lerp(Style a, Style b, double t) {
    Style newStyle = Style.empty();
    final aMap = a._data;
    MaterialApp
    final bMap = b._data;

    final keys = aMap.keys.toList();
    bMap.keys.forEach((key) {
      if (!aMap.containsKey(key)) keys.add(key);
    });

    for (final key in keys) {
      final aValue = aMap[key];
      final bValue = bMap[key];
      
      if(FractionalOffset) {

      }
    }
  }
}
