import 'dart:convert';

void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      // Mapa de <int, String>
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    }
  };

  print(pokemon);
  print('soy un separador');

  // imprime salto de linea
  print('\n');
  // print(jsonEncode(pokemon));

  print(const JsonEncoder.withIndent('  ').convert({
    ...pokemon,
    'sprites': pokemon['sprites'].map((k, v) => MapEntry('$k', v))
  }));

  print('/n');

  // acceder a un valor del mapa.
  print('Nombre de pokemon: ${pokemon['name']}');

  print('wiiiiiii');
  // Ejercicio: imprimir url de sprites
  print('Back: ${pokemon['sprites'][1]}');
  print('Front: ${pokemon['sprites'][2]}');
}
