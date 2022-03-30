import 'package:flutter/material.dart';
import 'package:turbinagram/screens/entrar.dart';



class Rotas {
  static Map<String, Widget Function(BuildContext)> routes =   {
    '/' : (context) => Entrar(),
    '/home'  : (context) => Entrar()
  };
}