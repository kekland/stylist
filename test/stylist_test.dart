import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stylist/stylist.dart';

void main() {
  test('does inject work', () {
    final firstStyle = StyleData({
      "primary-color": Color(0xFF112233),
    });

    final secondStyle = StyleData({
      "secondary-color": Color(0xFF445566),
    });

    final style = StyleData.empty()..inject(firstStyle)..inject(secondStyle);
    expect(style.get("primary-color"), equals(Color(0xFF112233)));
  });
}
