
import 'package:estu_casa_app/screens/detalles_casa.dart';
import 'package:estu_casa_app/screens/menu_lateral/menuLateral.dart';

import 'package:flutter/material.dart';

//clases para agregar locaciones

class Casa {
  final String nombre;
  final String direccion;
  final double precio;
  final String arrendador;
  final String imagenAsset;

  Casa({
    required this.nombre,
    required this.direccion,
    required this.precio,
    required this.arrendador,
    required this.imagenAsset,
  });
}


class Home extends StatelessWidget {
  Home({super.key});

  final List<Casa> casas = [
    // ... (código existente)
    Casa(
      nombre: 'Casa Acogedora',
      direccion: 'Avenida La PAlma #94',
      precio: 1200.00,
      arrendador: 'Juan Pérez',
      imagenAsset: "assets/images/ap1.jpg",
    ),
    Casa(
      nombre: 'Apartamento Moderno',
      direccion: 'Vista Hermosa #21',
      precio: 800.00,
      arrendador: 'María Rodríguez',
      imagenAsset: "assets/images/ap2.jpg",
    ),
    Casa(
      nombre: 'Apartamento Moderno',
      direccion: 'Barrio de La Cruz #55',
      precio: 800.00,
      arrendador: 'Luis Angel',
      imagenAsset: "assets/images/ap3.jpeg",
    ),
    Casa(
      nombre: 'Apartamento Moderno',
      direccion: 'Barrio de La Cruz #55',
      precio: 800.00,
      arrendador: 'María Rodríguez',
      imagenAsset: "assets/images/ap4.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey,
        drawer: const MenuLateral(),
        body: ListView.builder(
          itemCount: casas.length,
          itemBuilder: (context, index) {
            return _buildCasaCard(context, index);
          },
        ),
      ),
    );
  }

  Widget _buildCasaCard(BuildContext context, int index) {
    Casa casa = casas[index];

    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Lógica de navegación a la nueva pantalla
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCasaScreen(casa: casa),
                ),
              );
            },
            child: Image.asset(
              casa.imagenAsset,
              height: 150.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: GestureDetector(
              onTap: () {
                // Lógica de navegación a la nueva pantalla
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetallesCasaScreen(casa: casa),
                  ),
                );
              },
              child: Text(casa.nombre),
            ),
            subtitle: Text(casa.direccion),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${casa.precio.toStringAsFixed(2)} / mes'),
                Text('Arrendador: ${casa.arrendador}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




