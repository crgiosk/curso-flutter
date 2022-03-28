abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pes extends Animal {}


abstract class Volador{
  void volar() => print('Estoy volando');
}

abstract class Caminante{
  void caminar() => print('Estoy caminando');
}

abstract class Nadador{
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador{}

class Murcielago extends Mamifero with Caminante, Volador{}
class Paloma extends Mamifero with Caminante, Volador{}
class Gato extends Mamifero with Caminante {}
class Pato extends Mamifero with Caminante, Volador, Nadador{}
class Humano extends Mamifero with Caminante, Volador, Nadador{}


void main (){
  
  final flipper = Delfin();
  flipper.nadar();
  
  final murcielago = Murcielago();
  murcielago.caminar();
  murcielago.volar();
  

}