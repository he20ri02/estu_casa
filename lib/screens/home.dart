import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
              width: 290, // Ajusta el ancho según tus necesidades
              height: 290, // Ajusta la altura según tus necesidades
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/estucasa.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
        const Center(
            child: Text(
          "Bienvenido a la página inicial",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        )),
        const SizedBox(
          height: 30,
        ),

        //boton para cerrar sesión/////
        GestureDetector(
          onTap: () {
            //mandamos llamar el metodo para cerrar sesión
            FirebaseAuth.instance.signOut();
            Navigator.pushNamed(context, "/login");
          },
          child: Container(
            height: 45,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(0)),
            child:const Center(
              child: Text(
                "Salir",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
