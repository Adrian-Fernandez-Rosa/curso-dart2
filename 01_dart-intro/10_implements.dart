void main() {
  final carro = Carro();

  carro.encender();
  carro.acelerar(80);
  carro.apagar();
}

abstract class Vehiculo {
  void encender();
  void apagar();
  void acelerar(double velocidad);
}

class Carro implements Vehiculo {
  @override
  void acelerar(double velocidad) {
    print('El carro está acelerando a $velocidad km/h');
  }

  @override
  void apagar() {
    print('El carro se ha apagado');
  }

  @override
  void encender() {
    print('El carro se ha encendido');
  }
}
