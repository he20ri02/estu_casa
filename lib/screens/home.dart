import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            //Agrega tu nombre completo, despues subelo a tu rama asignada
            Text('Heriberto Bacilio Rudiño'),
            Text('Jose Angel Garcia Martinez'),
            Text('Cesar Raul Gonzalez Valentin'),
            Text('Edson Ronaldo Reyes Hernandez'),
            Text('Rodrigo Eduardo Lopez Reyes'),
          ],
        ),
      ),
    );
  }
}