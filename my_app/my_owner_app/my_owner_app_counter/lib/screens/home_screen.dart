import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: 10.0,
      ),
      backgroundColor: Colors.deepOrange,
      body: const Center(
        child: Text("Hi Wor Screen"),
      ),
    );
  }
}
