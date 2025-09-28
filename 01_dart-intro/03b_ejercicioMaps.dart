import 'dart:io';

/*
    Ejercicio con Maps
Crea un Map<String, String> donde la clave sea el nombre de la persona y el valor sea su número de teléfono.

Agregá al menos 3 contactos.

Imprimí todos los contactos uno por línea.

*/
void main() {
  // stdin.readLineSync()
  Map<String, int> personas = {'Maria': 1000, 'Cristina': 2000, 'Rosana': 3000};

  print('mete el nombre');
  String? nombreInput = stdin.readLineSync();
  print('mete el telefono');
  String? telefonoInput = stdin.readLineSync();

  if (nombreInput != null && telefonoInput != null) {
    personas[nombreInput] = int.parse(telefonoInput);
  }

  personas.forEach((nombre, numero) {
    print('El nombre de la persona es: $nombre y su numero es: $numero');
  });

  // Actualiza un valor
  personas['Rosana'] = 4;

  // Elimina una entrada
  personas.remove('Maria');
  
  print('\n');
  print('\n wiiiiiiiiiii');
  personas.forEach((nombre, numero) {
    print('El nombre de la persona es: $nombre y su numero es: $numero');
  });
}
