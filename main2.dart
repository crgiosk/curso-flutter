import "dart:math" as libraryMath;
main() {
  
  final cuadrado = Cuadrado(100);
  
  
  print("area ${cuadrado.calculateArea()}");
  print("Lado ${cuadrado.lado}");
  print("get area: ${cuadrado.area}");
  
  cuadrado.area = 5;
}

class Cuadrado {
  double lado; //lado*lado
  //double area = 0;
  
  Cuadrado (this.lado);
  
  double calculateArea(){
    return this.lado*this.lado;
  }
  
  //get y setter
  //get
  double get area {
    return this.lado*lado;
  }
  
  //set
  
  set area(double valor){
    this.lado = libraryMath.sqrt(valor);
    //print("set del valor $valor");
  }
  
  
}