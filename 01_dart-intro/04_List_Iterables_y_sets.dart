void main() {
  final numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11];

  print('Lista: $numeros');

  // Saber cantidad de elementos

  print('largo de la lista ${numeros.length}');

  // Obtener el valor 1 de la lista

  print('Index 0: ${numeros[0]}');
  print('Primer elemento: ${numeros.first}');
  print('Ultimo elemento: ${numeros.last}');

  print('Listado en orden inverso ${numeros.reversed}');

  // Numeros mas grandes que 5

  final numeritosMasGrandeQue5 = numeros.where((num) {
    return num > 5;
  });

  print('Numeros mas grandes que 5: $numeritosMasGrandeQue5');

  // Iterable
  print('Iterable: $numeritosMasGrandeQue5');
  // Si no queremos duplicados
  print('Sets ${numeritosMasGrandeQue5.toSet()}');
}
