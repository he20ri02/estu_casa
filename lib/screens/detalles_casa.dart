
import 'package:estu_casa_app/screens/contactar_arrendador.dart';
import 'package:estu_casa_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class DetallesCasaScreen extends StatelessWidget {
  final Casa casa;

  DetallesCasaScreen({required this.casa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(casa.nombre),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              casa.imagenAsset,
              height: 300.0,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 16.0),
            Text('Detalles de ${casa.nombre}'),
            const SizedBox(height: 4.0),
            Text('Arrendador: ${casa.arrendador}'),
            const SizedBox(height: 4.0),
            Text('Precio: ${casa.precio} /Mes'),
            const SizedBox(height: 4.0),
            Text('Dirección ${casa.direccion}'),

            const SizedBox(height: 16,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 13,
                ),
                primary: Colors.black,
              ),
              onPressed: () async {
                var status = await Permission.microphone.request();
                // Acciones cuando se presiona el botón Register
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MensajeriaScreen(arrendadorNombre: '',)),
              );
              },
              child: const Text('Contactar al Arrendador'),
            ),

            // Aquí puedes agregar más detalles de la casa según sea necesario
          ],
        ),
      ),
    );
  }
}