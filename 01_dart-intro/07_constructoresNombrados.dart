void main() {
  final persona1 = Persona(nombre: 'Pame', apellido: 'Penaran', soltero: false);

  print(persona1.toString());

  // Ahora supongamos que llega una persona por json de una api
  final Map<String, dynamic> rawJson = {
    'nombre': 'el jefaso',
    'apellido': 'melano',
    'soltero': true
  };

  final personaApi = Persona.fromJson(rawJson);

  print(personaApi.toString());
}

class Persona {
  String nombre;
  String apellido;
  bool soltero;

  Persona(
      {required this.nombre, required this.apellido, required this.soltero});

  Persona.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'Nombre no encontrado',
        apellido = json['apellido'] ?? 'Apellido no encontrado',
        soltero = json['soltero'] ?? 'Estado de solteria no encontrado';

  @override
  String toString() {
    return """
  El nombre es $nombre 
  El apellido es $apellido 
  El estado civil es $soltero 

      """;
  }
}
