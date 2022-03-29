import 'package:flutter/material.dart';

//Stateless no puede redibujar un widget (view)
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 16;

  void increase() {
    counter++;
    setState(() {});
  }

  void deCrease() {
    if (counter > 0) {
      counter--;
      setState(() {});
    }
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter Screen"),
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
              const Text("Counter is: ", style: fontSize30),
              Text('$counter', style: fontSize30)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //with icon and text
        floatingActionButton: CustomFloatingActions(
            increaseFn: increase,
            deCreaseFn: deCrease,
            resetFn: reset
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

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function deCreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.deCreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => increaseFn(),
          elevation: 10,
          child: const Icon(Icons.exposure_plus_1_outlined),
          backgroundColor: Colors.green,
        ),
        //permite agregar un espcio para separar dos botons const SizedBox(width: 20),
        //const SizedBox(width: 20),
         FloatingActionButton(
          onPressed: () => resetFn(),
          elevation: 10,
          child: const Icon(Icons.replay_circle_filled),
          backgroundColor: Colors.green,
        ),
        //const SizedBox(width: 20),
         FloatingActionButton(
          onPressed: () => deCreaseFn(),
          elevation: 10,
          child: const Icon(Icons.exposure_minus_1_outlined),
          backgroundColor: Colors.green,
        )
      ],
    );
  }
}
