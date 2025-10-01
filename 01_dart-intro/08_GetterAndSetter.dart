void main() {
  final myCuadradito = CuadraditoFeliz(lado: 11);

  // myCuadradito.lado = -4; // deja acceder porque esta en el mismo archivo
  print('Area: ${myCuadradito.calcularArea()}');
}

class CuadraditoFeliz {
  double _lado; // El usar el guion bajo lo convierte en privado

  CuadraditoFeliz({required double lado}) 
  : assert(lado >= 0, 'lado debe ser mayor a 0')
    ,_lado = lado;

  // getter
  double get area {
    return _lado * _lado;
  }

  // setter
  set lado(double lado) {
    // if (lado < 0) throw 'Lado debe ser mayor a 0';

    _lado = lado;
  }

  double calcularArea() {
    return _lado * _lado;
  }
}
