import 'package:estu_casa_app/firebase_auth/firebase_auth.dart';
import 'package:estu_casa_app/screens/sing_up.dart';
import 'package:estu_casa_app/widgets/form_container_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // bool _isSigning = false;

  //instancia de firebase
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //App bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Acciones cuando se presiona el botón Register
            Navigator.pushNamedAndRemoveUntil(
                context, '/inicio', (route) => false);
          },
        ),
      ),


      body:SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/estucasa.png"),
              ),

              const SizedBox(
                height: 30,
              ),

              FormContainerWidget(
                controller: _emailController,
                hintText: "Correo Electrónico",
                isPasswordField: false,
              ),

              const SizedBox(
                height: 10,
              ),

              FormContainerWidget(
                controller: _passwordController,
                hintText: "Contraseña",
                isPasswordField: true,
              ),
              const SizedBox(
                height: 30,
              ),

              //Boton para loggearse
              GestureDetector(
                onTap:
                    _signIn, //Mandamos llamar el metodo que escribimos al final
                    
                child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const Center(
                      child: Text(
                    "Entrar",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("No tienes cuenta?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SingUp()),
                            (route) => false);
                      },
                      child: const Text(
                        "Registrate",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ),
    );
  }

  //Metodo logearse
  //creamos la variable de forma asincrona, guarda lo que tiene los campos
  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    
    //Estamos capturando lo que se escriba

    //llamada a la promesa
    //hacemos referencia  a <User?>
    User? user = await _auth.signInWithEmailAndPasword(email, password);

    //hay que verificar que lo que regresa no es nulo(null)

    if (user != null) {
      print("Usuario Inicio sesión de manera exitosa!");
      FloatingNotification.show(context, 'Inicio de sesión exitoso!');
      Navigator.pushNamed(context, "/home");

    } else {
      print("Ocurrió un error");
      FloatingNotification.show(context, 'Datos incorrectos');
    }
  }
}

class FloatingNotification {
  static OverlayEntry? _overlayEntry;

  static void show(BuildContext context, String message) {
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => Positioned(
        bottom: 50.0,
        left: MediaQuery.of(context).size.width * 0.1,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);

    Future.delayed(Duration(seconds: 2), () {
      _overlayEntry!.remove();
    });
  }
}

