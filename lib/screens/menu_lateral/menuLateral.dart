import 'package:estu_casa_app/screens/login_page.dart';
import 'package:estu_casa_app/screens/operaciones_crud.dart';
import 'package:estu_casa_app/screens/perfil_usuario.dart';
import 'package:estu_casa_app/screens/sobre_la_app/acerca_de.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Nombre del Usuario"), // Puedes obtener el nombre del usuario desde FirebaseAuth
            accountEmail: Text("correo@example.com"), // Puedes obtener el correo del usuario desde FirebaseAuth
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"), // Reemplaza "tu_imagen.jpg" con la ruta de tu imagen
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              image: DecorationImage(
              opacity: 80.0,
              image: AssetImage('assets/images/ap4.jpeg',), // Reemplaza con la ruta de tu imagen en assets
              fit: BoxFit.cover, // Puedes ajustar el ajuste de la imagen según tus necesidades
            ),
            ),
          ),
          ListTile(
            title: const Text('Agregar Locación'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CrudForm()),
              );
            },
          ),
          ListTile(
            title: const Text('Mi Perfil'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  PerfilUsuarioScreen()),
                );
            },
          ),

          ListTile(
            title: const Text('Acerca de'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AcercaDeScreen()),
                );
            },
          ),


          ListTile(
            title: const Text('Cerrar Sesión'),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}