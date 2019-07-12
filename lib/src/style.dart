import 'package:flutter/widgets.dart';
import 'package:stylist/src/style_data.dart';

abstract class StyleState<T extends StatefulWidget> extends State<T> {
  StyleData style;

  I get<I>(String key);
  set(String key, dynamic value);
}

class StyleInherited extends InheritedWidget {
  final StyleState data;

  StyleInherited({this.data, Widget child, Key key})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
