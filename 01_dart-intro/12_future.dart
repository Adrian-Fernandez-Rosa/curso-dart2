void main() async {
  print('Inicio ');

  try {
    final value = await httpGet('http...');
    print('exito: $value');
  } on Exception {
    print('Tenemos una excepcion');
  } catch (err) {
    print('Ops algo terrible paso: $err');
  } finally {
    print('Fin del try y catch');
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

  throw Exception('Error en peticion');

  // ignore: dead_code
  return 'Valor de peticion';
  /*
  return Future.delayed(Duration(seconds: 3), () {
    throw 'Error en peticion HTTP';
    // return 'Respuesta de la peticion http';
  });
  */
}
