import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navigation/rotas.dart';
import 'utils/strings.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.title,
      initialRoute: '/',
      routes: Rotas.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
