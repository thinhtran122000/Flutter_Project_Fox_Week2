import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String data;
  const MyInheritedWidget({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
void main(){
  runApp(const MyApp());
}
  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) =>
      data != oldWidget.data;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyInheritedWidget(
        data: 'Hello',
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final inheritedWidget = MyInheritedWidget.of(context).data;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          inheritedWidget,
        ),
      ),
    );
  }
}
