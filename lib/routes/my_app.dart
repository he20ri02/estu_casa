import 'package:estu_casa_app/screens/gracias_por_registrarte.dart';
import 'package:estu_casa_app/screens/home.dart';

import 'package:estu_casa_app/screens/inicio.dart';
import 'package:estu_casa_app/screens/login_page.dart';
import 'package:estu_casa_app/screens/sing_up.dart';
import 'package:estu_casa_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estu_Casa',
      routes: {
        '/': (context) => SplashScreen(
              child: Inicio(),
            ),
        '/inicio': (context) => Inicio(),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SingUp(),
        '/splash_registro': (context) => const SplashRegistro(
              child: LoginPage(),
            ),
            
        '/home': (context) => const HomePage(),
      },
    );
  }
}
