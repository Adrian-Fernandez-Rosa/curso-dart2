void main() {
  final persona1 = new Persona(nombre: 'Adriano', dni: '444');

//   print(
//       'El nombre de la persona es: ${persona1.nombre} \n y su dni es ${persona1.dni}');
//
  print(persona1.toString());
}

class Persona {
  String nombre;
  String dni;

// constructor
  // Persona(String pNombre, String pDni) {
  //   this.nombre = pNombre;
  //   this.dni = pDni;
  // }

  Persona({required this.nombre, required this.dni});

@override
  String toString() {
    return 'El nombre es $nombre y el dni es $dni';
  }
}
