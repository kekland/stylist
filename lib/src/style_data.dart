import 'package:flutter/material.dart';

class StyleData {
  final Map<String, dynamic> _data;

  StyleData(this._data);

  factory StyleData.empty() {
    return StyleData({});
  }

  StyleData fork() {
    return StyleData(Map.from(_data));
  }

  void set(String key, dynamic value) {
    _data[key] = value;
  }

  dynamic get(String key) {
    return _data[key];
  }

  inject(StyleData other) {
    this._data.addAll(other._data);
  }
}
