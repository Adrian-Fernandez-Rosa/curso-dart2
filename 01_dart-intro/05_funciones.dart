void main() {
  print(saludarAtodos());

  print('\n');

  print(saludaConEstilo());
  print('\n');
  print('\n');
  print(sumaDosNumeros(4, 5));

  print('\n');
  print('\n');
  print('Lambda ${sumaDosNum(4, 2)}');
  print('\n');

  print('\n');

  print('con Opcionales ${sumaDosNumerosOpt(124)}');
  print('con Opcionales 2: ${sumaDosNumerosOpt(4, 6)}');
}

saludarAtodos() {
  return 'hooluss PJP';
}

// Funcion de flecha

String saludaConEstilo() => 'Hello';

// Funcion con parametros

int sumaDosNumeros(int a, int b) {
  return a + b;
}

// Lo mismo pero usando Lambda
int sumaDosNum(int a, int b) => a + b;

// lo mismo pero con parametro opcional
int sumaDosNumerosOpt(int a, [int? b]) {
  b = b ?? 0; // si b no tiene valor ponelo en 0
  return a + b;
}
