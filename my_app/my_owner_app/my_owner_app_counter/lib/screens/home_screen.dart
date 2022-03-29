import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fk U"),
        elevation: 10.0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          //mainAxis es alineacion vertical solamente
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment es alineacion horizontal solamente
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            Text("Numero de Clicks",
              style: fontSize30
            ),
            Text("1",
                style: fontSize30
            )
          ],
        ),
      ),
    );
  }
}
