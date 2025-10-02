void main() async {
  print('Inicio ');

  try {
    final value = await httpGet('http...');
    print(value);
  } catch (err) {
    print(err);
  }
/*
  httpGet('http...').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
*/
  print('Fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));

  throw 'Error en peticion';

  return 'Valor de peticion';
  /*
  return Future.delayed(Duration(seconds: 3), () {
    throw 'Error en peticion HTTP';
    // return 'Respuesta de la peticion http';
  });
  */
}
