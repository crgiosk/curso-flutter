import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*sugiere ser de tipo constant, ya que el estado no cambia porque es tipo "
    less" , tambien sin estado
    * */
    return const MaterialApp(home: Center(child: Text("Hi My Fucking s World")));
  }
}
