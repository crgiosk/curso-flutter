import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const ListViewDecorated(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listView': (context) => const ListView1Screen(),
        'listViewDecorated': (context) => const ListViewDecorated(),
        'cardScreen': (context) => const CardScreen(),
        'alertScreen': (context) => const AlertScreen()
      },
    );
  }
}
