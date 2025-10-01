# 📘 curso-dart2  
Curso introductorio a **Dart**, el lenguaje detrás de Flutter 🚀  

---

## 📑 Índice
- [¿Qué es Dart?](#-qué-es-dart)  
- [Late inicialización tardía](#-late-inicialización-tardía)  
- [Tipos de variables (dynamic type)](#-tipos-de-variables-uso-de-dynamic-type)  
- [Uso de Maps](#-uso-de-maps)  
- [Listas, Iterables y Sets](#listas-iterables-y-sets)  
- [Funciones](#funciones)  
- [Clases](#clases)  

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

# Implements 

- extends = relación fuerte de herencia, con código heredado y posibilidad de sobrescribir.

- implements = relación débil de interfaz, obliga a implementar todo sin heredar nada. no se usa super porque no hay herencia  solo contrato