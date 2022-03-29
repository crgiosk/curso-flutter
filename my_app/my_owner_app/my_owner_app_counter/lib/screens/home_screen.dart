import 'package:flutter/material.dart';

//Stateless no puede redibujar un widget (view)
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 16;
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
            children: <Widget>[
              const Text("Numero de Clicks", style: fontSize30),
              Text('$counter', style: fontSize30)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //with icon and text
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            counter++;
            print("button pressed : $counter");
          },
          elevation: 10,
          label: const Text('+='),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.green,
        )
        //normal icon

/*        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("button pressed");
          },
          tooltip: 'Approve',
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation, textDirection: TextDirection.rtl),
        )*/
        );
  }
}
