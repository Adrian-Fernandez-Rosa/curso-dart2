void main() {}

enum TipoAnimal { Perro, Gato, Ave }

abstract class Animal {
  double peso;
  TipoAnimal tipo; // Perro, Gato, Ave
  double energia;

  Animal({
    required this.peso,
    required this.tipo,
    required this.energia
  });
  
  void consumeEnergia(double cantidad);
}
