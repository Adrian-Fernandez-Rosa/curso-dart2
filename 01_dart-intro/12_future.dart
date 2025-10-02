void main() {
  print('Inicio ');

  httpGet('http...').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    throw 'Error en peticion HTTP';
    // return 'Respuesta de la peticion http';
  });
}
