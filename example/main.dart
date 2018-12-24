import 'package:flutter/material.dart';
import 'package:flutter_measure_widget/flutter_measure_widget.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Rect rect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('example'),
      ),
      body: Container(
        child: Text(rect == null ? 'click button to measure size' : "width = ${rect.width}, height = ${rect.height}"),
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
