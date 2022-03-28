main() {
  final rowJson = {
    'nombre': "Tony", 
    'poder': "Dinero"
    };

  //final ironMan = Hero(name: rowJson["nombre"]!, poder: rowJson["poder"]!);
  //print(ironMan);
  
  final ironman = Hero.fromJson(rowJson);

  //print("Hola Mundo");
  print(ironman);

  //declare variables
/*
 *   var nombre = "Tony";
  var apellido = "Stark";
  print("$nombre $apellido");
  */

  //List numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  //print(numeros.reversed);
  //print(numeros.length);

  //final wolverine = Hero("Locky", "Invisible");
  //final wolverine = Hero(name: "Locky", poder: "Invisible");
  //wolverine.name = "Locky";
  //wolverine.poder = "Invisible";
  //print(wolverine);

  //final wolverine2 = Hero(name: "Lobo", poder: "arañar");
  //print(wolverine2);
}

class Hero {
  String name;
  String poder;

  //Hero(String name, String poder){
  //  this.name = name;
  //    this.poder = poder;
  // }
  
  Hero.fromJson(Map<String, String> json):
    this.name = json["name"] ?? 'Sin nombre',
    this.poder = json["poder"]!;
  
/*
 *  Hero.fromJson(Map<String, String> json){
    this.name = json["name"] ?? 'Sin nombre';
    this.poder = json["poder"] ?? 'Sin poder';
  } 
 */
  
  Hero({required this.name, required this.poder});

  //Hero(this.name, this.poder);

  @override
  String toString() {
    return "$name y $poder";
  }
}