import 'package:estu_casa_app/firebase_auth/firebase_auth.dart';
import 'package:estu_casa_app/screens/aviso_privacidad.dart';
import 'package:estu_casa_app/screens/login_page.dart';
import 'package:estu_casa_app/screens/proteccion_datos_personales.dart';
import 'package:estu_casa_app/widgets/form_container_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: const Stack(
          children: [
            SignUpPage(),
            //Botones(),
          ],
        ));
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool condicion = false;
  bool condicion2 = false;
  //creamos una instancia
  //final como variable soo intancia la clase
  //creamos una instancia de la clase FirebaseAuthService
  final FirebaseAuthService _auth = FirebaseAuthService();

  //Instancia de propiedades vueltas un controlador
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  //Dispoce para cerrar los controladores, hacen limpieza al salir de la pantalla
  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Registro",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              FormContainerWidget(
                controller: _usernameController,
                hintText: "Nombre de usuario",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                controller: _emailController,
                hintText: "Correo electrónico",
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

              Row(children: [
                Checkbox(
                    value: condicion,
                    onChanged: (value) {
                      setState(() {
                        //con ! verificamos que le valor no sea nullo, es lo mismo que un if
                        condicion = value!;
                      });
                    }),
                const Text('Acepto el'),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) =>  PrivacyPolicyScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    ' Aviso de Privacidad',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ]),

              const SizedBox(
                height: 5,
              ),

              Row(children: [
                Checkbox(
                    value: condicion2,
                    onChanged: (value) {
                      setState(() {
                        //con ! verificamos que le valor no sea nullo, es lo mismo que un if
                        condicion2 = value!;
                      });
                    }),
                const Text('Acepto '),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) =>  DataProtectionScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    'Protección de Datos personales',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ]),

              const SizedBox(
                height: 30,
              ),

              // manda llamar el metodo apra guardad el dato en la nube
              GestureDetector(
                onTap: _signUp,
                child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const Center(
                      child: Text(
                    "Registro",
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
                  const Text("Ya tiene cuenta?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                            (route) => false);
                      },
                      child: const Text(
                        "Iniciar Sesión",
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

  //Metodo para dar de alta al usuario
  //creamos la variable de forma asincrona, guarda lo que tiene los campos
  void _signUp() async {
    //String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    //Estamos capturando lo que se escriba

    //llamada a la promesa
    //hacemos referencia  a <User?>
    User? user = await _auth.signUpWithEmailAndPasword(email, password);

    //hay que verificar que lo que regresa no es nulo(null)

    if (user != null) {
      print("Usuario creado exitosamente");
      Navigator.pushNamed(context, "/splash_registro");
    } else {
      print("Ocurrió un error");
    }
  }
}
