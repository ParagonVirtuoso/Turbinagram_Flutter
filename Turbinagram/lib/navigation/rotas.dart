import 'package:flutter/material.dart';
import 'package:turbinagram/screens/cadastro.dart';
import 'package:turbinagram/screens/entrar.dart';
import 'package:turbinagram/screens/home.dart';
import 'package:turbinagram/screens/turbinagram_inicial.dart';

class Rotas {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const Entrar(),
    '/home': (context) => const Home(),
    '/cadastro': (context) => const Cadastro(),
    '/turbinagram_inicial': (context) => const TurbinagramInicial()
  };
}
