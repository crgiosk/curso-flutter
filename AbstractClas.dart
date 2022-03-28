void main() {
  
  final perro = Perro();
  final gato = Gato();
  
  //perro.emitirSonido();
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal){
  animal.emitirSonido();
}

abstract class Animal{
  int? patas;
  
  void emitirSonido();
}

class Gato implements Animal{
  @override
  int? patas;
  int? cola;

  @override
  void emitirSonido() {
    print("Miaaauaaaaau");
  }
  
}

class Perro implements Animal{
  @override
  int? patas;

  @override
  void emitirSonido() {
    print("Guaaaaau");
  }
  
}