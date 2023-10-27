import 'package:flutter/material.dart';

//Clase principal de la pantalla Login, aqui
//se incluyen las clases que conforman Logn(Fondo,SingUp)
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Fondo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Sign(),
          ),
        ],
      ),
    );
  }
}

//Clase Singu Up
class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //comienza con un container
    //el color de fondo blanco
    return Container(
      color: Colors.white,
      //en el child metemos un padding para poder
      //modificar sus proporciones
      child: Padding(
        //tamaño del padding 20.0
        padding: const EdgeInsets.all(30.0),
        //un row, para posicionar los botones de manera
        //horizontal

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Generamos los botones correspondientes
            ElevatedButton(
              //la caracteística style es para dar estilo al boton
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
              //En esta función se agrega la accion al precionar el botón
              onPressed: () {
                // Acciones cuando se presiona el botón Login
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
              },
              child: const Text('Log In'),
            ),

            //SEgundo botón
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                primary: Colors.black,
              ),
              onPressed: () {
                // Acciones cuando se presiona el botón Register
                Navigator.pushNamedAndRemoveUntil(
                    context, '/signUp', (route) => false);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/fondo_login.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment(0, 200)),
            ),
          ),
          Center(
            child: Container(
              width: 290, // Ajusta el ancho según tus necesidades
              height: 290, // Ajusta la altura según tus necesidades
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/estucasa.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
