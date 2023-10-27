

import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';


// metodo de Sing Up
//Metodo para registrarse
class FirebaseAuthService{
  //Instancia de fireabse auth
  FirebaseAuth _auth = FirebaseAuth.instance;

  //como son llamadas asyncronas, lo haremos con promesas(future)
  
  //asignamos un nombrea ala promesa, <User?> por que no sabemos que elementos trae
  Future<User?> signUpWithEmailAndPasword(String email, String password) async {
    //hará la llamada
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      //regresar valor
      return credential.user;
    }

    

    //SI ocurre un error mandaremos un mensaje a consola
    catch(e){
      print("Ocurrió un error");
    }

    //Si no se ejecuta nada de esto retornara un null

    return null;

    

  }

  //metodo Sign In////////////////////////////////7
  //Metodo para logearse
  Future<User?> signInWithEmailAndPasword(String email, String password) async {
    //hará la llamada
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      //regresar valor
      return credential.user;
    }

    

    //SI ocurre un error mandaremos un mensaje a consola
    catch(e){
      print("Ocurrió un error");
    }

    //Si no se ejecuta nada de esto retornara un null

    return null;
  }



}

