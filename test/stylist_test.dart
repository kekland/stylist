import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stylist/stylist.dart';

void main() {
  test('injects styles', () {
    final firstStyle = StyleData({
      "primary-color": Color(0xFF112233),
    });

    final secondStyle = StyleData({
      "secondary-color": Color(0xFF445566),
    });

    final style = StyleData.empty()..inject(firstStyle)..inject(secondStyle);
    expect(style.get("primary-color"), equals(Color(0xFF112233)));
  });
  test('handles hex colors', () {
    final firstStyle = StyleData({
      "primary-color": "#112233"
    });

    expect(firstStyle.get("primary-color"), equals(Color(0xFF112233)));
  });
  test('handles references', () {
    final firstStyle = StyleData({
      "primary-color": Color(0xFF112233),
    });

    final mainStyle = StyleData({
      "card-color": "primary-color",
    });

    mainStyle.inject(firstStyle);

    expect(mainStyle.get("card-color"), equals(Color(0xFF112233)));
  });
}
