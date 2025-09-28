void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  // forma corta de Listado de <String>
  final abilities = <String>['impostor'];
  // otra forma de Listado de <String>
  // final List<String> abilities = ['impostor'];
  final sprites = <String>['pikachu/front.png', 'pikachu/back.png'];

  // dynamic -> puede cambiar de tipo, por defecto es nulo

  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = null;

  /*
  🔹 Ventajas

  ✅ Flexibilidad → la variable puede cambiar de tipo sin restricciones.
  ✅ Útil cuando no conocés el tipo en tiempo de compilación (ej: datos JSON que vienen de una API).
  ✅ Te permite trabajar rápido en prototipos o pruebas.

  🔹 Desventajas

  ❌ Pérdida de seguridad de tipos → podés tener errores en tiempo de ejecución en lugar de en compilación.
  ❌ Peor rendimiento → Dart tiene que resolver el tipo en runtime, en lugar de optimizarlo en compile-time.
  ❌ Código menos claro → dificulta saber qué espera tu función o clase.

   🔹 ¿Cuándo se usa en proyectos reales?

   Manejo de JSON / datos externos

    - Cuando recibís datos de una API REST/GraphQL que no tienen un esquema rígido.

    dynamic data = jsonDecode(response.body);
    print(data["usuario"]["nombre"]);

    2 Interoperabilidad con librerías

    Al usar librerías que devuelven tipos heterogéneos o valores que cambian según el contexto.
    List<dynamic> valores = ["texto", 42, true];

  ejemplo completo:
----------------------------------------------

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchUser() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
  final response = await http.get(url);

  if (response.statusCode == 200) {
    // jsonDecode devuelve dynamic
    dynamic data = jsonDecode(response.body);
    print(data); // Muestra el mapa crudo

    // Aquí todavía es dynamic, sin control de tipos
    print("Nombre (dynamic): ${data['name']}");
  }
}
-----------------------------------------------------

             */

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}
