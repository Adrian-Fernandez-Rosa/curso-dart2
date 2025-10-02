main() {
  emitNumbers().listen((val) {
    print('Stream value: $val');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 2), (val) {
    // print('Desde periodic: $val');
    return val;
  }).take(5); // solo 5 emisiones
}
