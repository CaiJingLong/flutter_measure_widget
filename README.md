# flutter_measure_widget

Measure the size of the widget to be added.

## how to use

1. add to pubspec.yaml

```yaml
flutter_measure_widget: ^0.0.1
```

1. import library

```dart
import 'package:flutter_measure_widget/flutter_measure_widget.dart';

```

1. use in code

```dart
class _HomePageState extends State<HomePage> {

  Rect rect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('example'),
      ),
      body: Container(
        child: Text('click button to measure size '),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('measure'),
        onPressed: () async {
          // see this
          Rect rect = await UIHelper.measureWidgetRect(context: context, widget: Text('target widget'));
          print(rect.width);
          print(rect.height);
        },
      ),
    );
  }
}
```

## about the library

You can measure the size of the widget to be added. Using Overlay + Offstage, you can measure the widget's width and height after rendering. You don't support scrolling widgets, variable widths and height controls.
