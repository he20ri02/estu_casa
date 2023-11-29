import 'package:estu_casa_app/screens/operaciones_crud.dart';
import 'package:estu_casa_app/screens/splash_screns/gracias_por_registrarte.dart';
import 'package:estu_casa_app/screens/home.dart';


import 'package:estu_casa_app/screens/inicio.dart';
import 'package:estu_casa_app/screens/login_page.dart';


import 'package:estu_casa_app/screens/sing_up.dart';
import 'package:estu_casa_app/screens/splash_screns/splash_screen.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estu_Casa',
      //Definimos las Rutas para navegar entre pantallas
      routes: {
        //Ruta principal
       '/': (context) => SplashScreen(
              child: Inicio(),
            ),

        //ruta de inicio(register, login)
        '/inicio': (context) => Inicio(),

        //inicio de sesión
        '/login': (context) => const LoginPage(),

        //registrarse y pantalla splash (gracias por registrarte)
        '/signUp': (context) => const SingUp(),
        '/splash_registro': (context) => const SplashRegistro(
              child: LoginPage(),
            ),

        //Pagina principal
        '/home': (context) =>   Home(),
        //pantalla de operaciones crud
        '/crud':(context) => const CrudForm(),
        

      },
    );
  }
}
