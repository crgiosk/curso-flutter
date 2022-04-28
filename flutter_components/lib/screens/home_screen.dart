import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: const Text("Fundamentos en Flutter"),
        elevation: 5,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            trailing: const Icon(Icons.abc_outlined),
            title: Text("data $index"),
            onTap: (){

            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10
      ),
    );
  }
}