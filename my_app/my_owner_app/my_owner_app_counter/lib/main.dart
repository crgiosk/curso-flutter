import 'package:flutter/material.dart';
import 'package:my_owner_app_counter/screens/counter_screen.dart';
import 'package:my_owner_app_counter/screens/home_screen.dart';

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
    return const MaterialApp(
        //debugShowCheckedModeBanner: false, home: HomeScreen());
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
