/*
Simular un chat

Hacé un Stream<String> que emita mensajes cada cierto tiempo:
"Hola", "¿Todo bien?", "Nos vemos".

Imprimilos con la hora actual delante del mensaje.
*/

main() {
  streamString().listen((val) {
    print('Stream: $val');
  });
}

List<String> mensajes = [
  "hola todo bien",
  "la cooperativa",
  "deja de robar codigo karoncita",
  "que pasa aca",
  "dejen de discutir de politica",
  "PC, C GROUP1",
  "PC, C GROUP2",
  "PC, C GROUP3",
  "PC, C GROUP4",
  "PC, C GROUP5",
];

String formatearFechaHora(DateTime dt) {


  String dia = dt.day.toString();
  String mes = dt.month.toString();
  String anio = dt.year.toString();

  String hora = dt.hour.toString();
  String minuto = dt.minute.toString();
  String segundo = dt.second.toString();

  return "$dia/$mes/$anio $hora:$minuto:$segundo";
}

Stream<String> streamString() {
  return Stream.periodic(const Duration(seconds: 2), (val) {
    DateTime actual = DateTime.now();
    String fechaHoraActual = formatearFechaHora(actual);
    return ('${mensajes[val]} Fecha y hora: $fechaHoraActual');
  }).take(10);
}
