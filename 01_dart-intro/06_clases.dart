void main() {
  final persona1 = new Persona('Pamela1', '31234123');
}

class Persona {
  String nombre;
  String dni;

// constructor
  // Persona(String pNombre, String pDni) {
  //   this.nombre = pNombre;
  //   this.dni = pDni;
  // }

  Persona(this.nombre, this.dni);
}
