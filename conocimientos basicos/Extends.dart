void main (){
  final superman = Hero('Clark Kent');
  final joker = Villano('El bromas');
  
  print(superman);
  print(joker);
}

abstract class Personaje {
  String? poder;
  String nombre;
  
  Personaje(this.nombre);
  
  
  
  @override
  String toString(){
    return '$nombre - $poder';
  }
  
}

class Hero extends Personaje{
  Hero(String nombre) : super(nombre);
  
}

class Villano extends Personaje{
  
  int maldad = 50;
  
  Villano(String nombre) : super(nombre);
  
}