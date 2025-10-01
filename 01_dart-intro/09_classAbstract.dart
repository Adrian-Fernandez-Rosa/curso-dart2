void main() {
  Animal perro1 = new Perro(peso: 40, tipo: TipoAnimal.Perro, energia: 44);

  print(perro1.toString());
  perro1.consumeEnergia(20);

  print('\n');
  print(perro1.toString());
}

enum TipoAnimal { Perro, Gato, Ave }

abstract class Animal {
  double peso;
  TipoAnimal tipo; // Perro, Gato, Ave
  double energia;

  Animal({required this.peso, required this.tipo, required this.energia});

  void consumeEnergia(double cantidad);
}

class Perro extends Animal {
  Perro({required super.peso, required super.tipo, required super.energia});
  



  void consumeEnergia(double cantidad) {
    energia -= cantidad;
  }

  @override
  String toString() {
    return ("""
    Tipo: $tipo
    Peso: $peso
    Energia: $energia
    """);
  }
}
