import 'package:estu_casa_app/screens/editar_perfil.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PerfilUsuarioScreen extends StatelessWidget {
  const PerfilUsuarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 226, 225, 225),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                // Foto de portada desde asset
                Image.asset(
                  'assets/images/ap4.jpeg', // Reemplaza con la ruta de tu foto de portada en assets
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Foto de perfil desde asset
                const Positioned(
                  left: 16.0,
                  bottom: 0.0,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                      'assets/images/user.png', // Reemplaza con la ruta de tu foto de perfil en assets
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Nombre de Usuario',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),

            const Text(
              'Ciudad: Ciudad Ejemplo',
              style: TextStyle(fontSize: 18.0),
            ),

            const SizedBox(height: 10.0),

            const Text(
              'Dirección: Dirección Ejemplo',
              style: TextStyle(fontSize: 18.0),
            ),

            const SizedBox(height: 10.0),

            const Text(
              'Correo Electrónico: usuario@example.com',
              style: TextStyle(fontSize: 18.0),
            ),

            const SizedBox(height: 10.0),

            const Text(
              'Edad: 25 años',
              style: TextStyle(fontSize: 18.0),
            ),

            const SizedBox(height: 10.0),

            const Text(
              'Estudiante: Sí', // Puedes ajustar esto según la lógica de tu aplicación
              style: TextStyle(fontSize: 18.0),
            ),

            const SizedBox(height: 18.0),

                ElevatedButton(
                onPressed: () async {
                  var status = await Permission.camera.request();
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ProfileEditScreen()),
                );
                }, 
                child:  Text(
                  "Editar Perfil",
                ))
          ],
        ),
      ),
    );
  }
}
