import 'package:flutter/material.dart';
import 'package:turbinagram/screens/cadastro.dart';
import 'package:turbinagram/screens/entrar.dart';
import 'package:turbinagram/screens/home.dart';

class Rotas {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => Entrar(),
    '/home': (context) => Home(),
    '/cadastro': (context) => Cadastro()
  };
}
