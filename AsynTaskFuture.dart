void main (){
  
  print('antes de la peticion');
  
  httpGet("url")
    .then( (data) {
      print(data.toUpperCase());
    });
   
  print('fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 3), (){
    return 'Hola Mundo - 3 segundos';
  });
}