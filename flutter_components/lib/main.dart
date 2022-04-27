import 'package:flutter/material.dart';
import 'package:flutter_components/screens/list_view.dart';
import 'package:flutter_components/screens/list_view_decorated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ListViewDecorated(),
    );
  }
}
