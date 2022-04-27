import 'package:flutter/material.dart';

class ListViewDecorated extends StatelessWidget {
  const ListViewDecorated({Key? key}) : super(key: key);
  final options = const['Metal Gear', 'Mega Man', 'Halo', 'Burnout', 'DarkSouls'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Screen ListView 1")),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              //icono a la izquierda del texto
              leading: const Icon(Icons.compare_arrows),
              //icono a la derecha del texto
              trailing: const Icon(Icons.compare_arrows),
              title: Text(options[index]),
              onTap: (){},
            ),
            separatorBuilder: (_ , __) => const Divider(),
            itemCount: options.length)
    );
  }
}
