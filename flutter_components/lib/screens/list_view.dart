import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const['Metal Gear', 'Mega Man', 'Halo', 'Burnout', 'DarkSouuls'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Screen ListView 1")),
      body: ListView(children:
      [
        ...options.map((e) => ListTile(
          leading: const Icon(Icons.ac_unit_sharp),
          title: Text(e),
          trailing: const Icon(Icons.arrow_forward_ios),
        )).toList()
        /*ListTile(
          leading: Icon(Icons.ac_unit_sharp),
          title: Text("data"),
        )*/
      ]) /*      body: const Center(
        child: Text('ListView1Screen'),
      )*/
      ,
    );
  }
}
