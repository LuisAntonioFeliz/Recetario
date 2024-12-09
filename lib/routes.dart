import 'package:flutter/material.dart';
import 'package:proyectofinal/paginas/inicio.dart';
import 'package:proyectofinal/paginas/desayuno.dart';
import 'package:proyectofinal/paginas/almuerzo.dart';
import 'package:proyectofinal/paginas/cena.dart';
import 'package:proyectofinal/paginas/postres.dart';

class AppRoutes {
  static const inicio = '/';
  static const desayuno = '/desayuno';
  static const almuerzo = '/almuerzo';
  static const cena = '/cena';
  static const postres = '/postres';

  static Map<String, WidgetBuilder> get routes => {
        inicio: (context) => const Inicio(),
        desayuno: (context) => const Desayuno(),
        almuerzo: (context) => const Almuerzo(),
        cena: (context) => const Cena(),
        postres: (context) => const Postres()
      };
}
