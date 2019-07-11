import 'package:flutter/widgets.dart';
import 'package:stylist/src/style_data.dart';

abstract class StyleState<T extends StatefulWidget> extends State<T> {
  StyleData style;

  I get<I>(String key);

  set(String key, dynamic value);
}

class StaticStyle extends StatefulWidget {
  final StyleData data;

  const StaticStyle({Key key, this.data}) : super(key: key);
  @override
  StaticStyleState createState() => StaticStyleState();
}

class StaticStyleState extends State<StaticStyle> {
  @override
  Widget build(BuildContext context) {
    return _StaticStyleInherited(
      
    );
  }
}

class _StaticStyleInherited extends InheritedWidget {
  final StaticStyleState data;

  _StaticStyleInherited({this.data, Widget child, Key key}): super(key: key, child: child);
  
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return null;
  }
}