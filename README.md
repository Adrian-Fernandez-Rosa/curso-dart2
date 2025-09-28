# 📘 curso-dart2  
Curso introductorio a **Dart **, el lenguaje detrás de Flutter 🚀  

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