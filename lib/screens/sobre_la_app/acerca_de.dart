import 'package:flutter/material.dart';

class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 230, 219, 219),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/icono.ico'), // Reemplaza con tu logotipo
              radius: 70.0,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 16.0),
            Text(
              "Estu'Casa",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Versión 1.0.0',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Bienvenido a Estu'Casa, tu destino para encontrar el hogar perfecto lejos de casa. Nos",
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 5.0,),
            Text(
              "enorgullece presentar una aplicación de alquiler de casas diseñada para satisfacer tus ",
              textAlign: TextAlign.left,
            ),
             SizedBox(height: 5.0,),
            Text(
              "necesidades de alojamiento con comodidad, confianza y conveniencia.",
              textAlign: TextAlign.left,
            ),
            
            //Acerca de
            SizedBox(height: 16.0),
            Text(
              "En Estu'Casa, nos esforzamos por hacer que el proceso de encontrar y alquilar tu próximo hogar ",
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 5.0),
            Text(
              "sea sencillo y placentero. Nuestra misión es conectar a inquilinos con propiedades excepcionales,",
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 5.0),
            Text(
              "asegurando experiencias de vida memorables y auténticas.",
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 16.0),
            
            Text(
              'Contacto: estu_casa@gmail.com', // Reemplaza con tu información de contacto
              style: TextStyle(
                color: Color.fromARGB(255, 17, 111, 189),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
