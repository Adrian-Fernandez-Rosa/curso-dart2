void main() {
  emitNumbers().listen((val) {
    print(' Stream Value: $val');
  });
}

Stream emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 55];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; 
    //yield → no termina, entrega un valor y la función sigue ejecutándose para poder emitir más.
  }
}
