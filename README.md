# 📘 curso-dart2  
Curso introductorio a **Dart**, el lenguaje detrás de Flutter 🚀  

---


## 📑 Índice
- [¿Qué es Dart?](#qué-es-dart)
- [Late inicialización tardía](#late-inicialización-tardía)
- [Tipos de variables (dynamic type)](#tipos-de-variables-uso-de-dynamic-type)
- [Uso de Maps](#uso-de-maps)
- [Listas, Iterables y Sets](#listas-iterables-y-sets)
- [Funciones](#funciones)
- [Clases](#clases)
- [Override](#override)
- [Constructores nombrados](#constructores-nombrados)
- [Aserciones / Asserts](#aserciones--asserts)
- [Clases Abstractas](#clases-abstractas)
- [Implements](#implements)
- [Mixins](#mixins)
- [Future](#future)
- [Async / Await](#async-await)
- [Try / Catch / On / Finally](#try-catch-on-y-finally)
- [Streams](#streams)
- [Async Await (extra)](#async-await-1)


---


## 🔹 ¿Qué es Dart?  

- **Lenguaje moderno de Google**, pensado para el desarrollo de aplicaciones rápidas y seguras.  
- Está **optimizado para interfaces gráficas (UI)**, lo que lo hace ideal para Flutter.  
- Permite **Hot Reload**, viendo cambios al instante sin reiniciar toda la app.  
- Funciona de forma **rápida en ARM y x64**, tanto en móviles como en escritorios y servidores.  
- Ofrece **tipado fuerte y asíncronía**, facilitando la creación de código más robusto y mantenible.  

## 🔹 Late inicialización tardía

- Es conocido como inicialización tardia, late le dice a Dart que esa variable tendra un valor al momento de usarse, es responsabilidad del dev asegurar que eso se cumpla

```dart
late final myName ="Codifica";

 print('Hola mi nombre es $myName');
```

- Con late final podés lograr lazy initialization → solo ocupa memosria cuando realmente se usa.

[ejemplo 1 late](01_dart-intro/01_ejemplo1.dart)

## 🔹 tipos de variables uso de dynamic type

- [dynamic ](01_dart-intro/02_tipos-de-variables.dart)

- **`dynamic`** → útil al recibir datos externos (JSON).  

- Pero inmediatamente lo convertimos en un modelo **tipado (`User`)** para:  
  - ✅ Mejor autocompletado  
  - ✅ Menos bugs en runtime  
  - ✅ Código más mantenible  


## 🔹 Uso de Maps


Un Mapa es key - valor 

[uso de mapas](01_dart-intro/03_uso_maps.dart)

[Ejercicio Maps ABM](01_dart-intro/03b_ejercicioMaps.dart)

## 🔹Listas, Iterables y Sets


### Listas:

```dart

 final numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('Lista: $numeros');

  // Saber cantidad de elementos

  print('largo de la lista ${numeros.length}');

  // Obtener el valor 1 de la lista

  print('Index 0: ${numeros[0]}');
  print('Primer elemento: ${numeros.first}');
  print('Ultimo elemento: ${numeros.last}');

  print('Listado en orden inverso ${numeros.reversed}');

```

- Usá List cuando necesitás orden o duplicados.

[Listas e Iterables y Sets](01_dart-intro/04_List_Iterables_y_sets.dart)

## Funciones


[Funciones](01_dart-intro/05_funciones.dart)


```dart

int sumaDosNumerosOpt(int a, [int? b]) { //int? b sin corchetes [] → es obligatorio pasar un segundo argumento, aunque sea null.
  b = b ?? 0; // si b no tiene valor ponelo en 0
  return a + b; 
}


```

## Clases

[Clases](01_dart-intro/06_clases.dart)

## Override

Ejemplo con to string en archivo anterior

## Constructores nombrados

- En este ejemplo tenemos el caso de uso **casero** de que pasaria si recibimos un json de una api

[Constructores nombrados](01_dart-intro/07_constructoresNombrados.dart)

## Aserciones . Asserts

Un **assert** es una instrucción que se usa para **verificar condiciones en tiempo de ejecución durante el desarrollo**.  

- Si la condición es **true** → no pasa nada.  
- Si la condición es **false** → el programa lanza un **AssertionError** y se detiene.  

👉 Sirve para **debug y validación temprana**.  
👉 En producción (*modo release*) los **assert** se ignoran, o sea, **no consumen recursos**.  

[ASSERT](01_dart-intro/08_GetterAndSetter.dart)

## Clases Abstractas

- No se pueden instanciar
- Definen métodos abstractos que obligan a las subclases a implementarlos.
- Se usan para crear contratos y jerarquías claras.

[Clases abstractas](01_dart-intro/09_classAbstract.dart)


## 🔹 Implements

- **`extends`** → relación fuerte de herencia, con código heredado y posibilidad de sobrescribir.  
- **`implements`** → relación débil de interfaz, obliga a implementar todo sin heredar nada.  
  - ⚠️ No se usa `super` porque no hay herencia, solo contrato.  

## Mixins

- Mixins es una solucion de Dart para  herencia multiple

## 🔹 Mixins

Los **Mixins** son la solución de Dart para simular **herencia múltiple**.  

👉 Podés añadir funcionalidades a una clase sin necesidad de heredar de varias.  

### Ejemplo
```dart
mixin Volador {
  void mover() => print("Volando por los aires 🕊️");
}

mixin Nadador {
  void mover() => print("Nadando en el agua 🐟");
}

class Pato with Volador, Nadador {
  void graznar() => print("Quack!");
}

void main() {
  final pato = Pato();
  pato.mover(); // Nadando en el agua 🐟 (último mixin gana)
}

```

-### ⚡️ Nota sobre Mixins
- Si **dos mixins** tienen métodos con el mismo nombre, **gana el último en la lista**.  

📎 [Ejemplo de mixin con herencia múltiple](01_dart-intro/11_Mixins.dart)

---

## 🔹 Future
Un **Future** representa el resultado de una operación **asíncrona**.  
Es como una **promesa**:  
- ✅ Puede completarse con un valor.  
- ❌ Puede fallar con una excepción.  

👉 Los **Futures** garantizan que en el futuro tendrás un valor (o un error) para usar.  

📎 [Ejemplo de Future](01_dart-intro/12_future.dart)


## 🔹 Async / Await
Cuando usamos `async` en una función, estamos obligados a retornar un **Future**.  
Es decir: **toda función asincrónica siempre devolverá un Future**.

📎 [Ejemplo: Future Async, mejorando código](01_dart-intro/12_future.dart)

---

## 🔹 Try / Catch / On / Finally
Manejo de errores en Dart:  

```dart
try {
  final value = await httpGet('http...');
  print('Éxito: $value');
} on Exception {
  print('Tenemos una excepción');
} catch (err) {
  print('Ops, algo terrible pasó: $err');
} finally {
  print('Fin del try/catch');
}

```

## 🔹 Streams

Un **Stream** en Dart representa un **flujo de datos asíncronos** que puede:  
- Emitir valores **periódicamente** (ej: cada cierto tiempo).  
- Emitir valores **una sola vez**.  
- O incluso **nunca emitir nada**.  

---

### 💡 Analogía
Un **Stream** es como una **manguera conectada a un grifo de agua**:  
- Cada **gota de agua** 💧 equivale a un valor emitido por el stream.  
- El grifo puede estar:  
  - 🚫 **cerrado** → nunca emite valores.  
  - 💧 **abierto** → emite valores constantemente.  
  - 🔒 **cerrarse después** → deja de emitir en algún momento.  


 ```dart

 main() {
  emitNumbers();
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 2), (val) {
    print('Desde periodic: $val');
    return val;
  });
}

```

⚠️ **Nota importante sobre Streams**  
Al ejecutar el código anterior **no sucede nada**, porque para que un `Stream` funcione debe existir un **listener** que lo escuche.  

📎 [Ejemplo completo con Stream](01_dart-intro/13_streams.dart)

---

## 🔹 Async / Await
📎 [Ejemplo de Async / Await](01_dart-intro/14_Async_Await.dart)
