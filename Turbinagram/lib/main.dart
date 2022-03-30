import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'navigation/rotas.dart';
import 'utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
