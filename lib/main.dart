import 'dart:async';

import 'package:estu_casa_app/firebase_options.dart';
import 'package:estu_casa_app/routes/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instabug_flutter/instabug_flutter.dart';



/*//import 'package:estu_casa_app/screens/login.dart';
import 'package:estu_casa_app/screens/sing_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Estu_Casa',
    initialRoute: '/',

    routes: {
      //'/' : (context) => LoginPage(), 
      //'/' : (context) => const Register(), 
      '/' : (context) => const SingUp(),
    },

  ));
}*/

Future <void> main() async {
  //inicialización de firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      //Linea que se encarga de compilar el proecto en android o web
      options: DefaultFirebaseOptions.currentPlatform);
      runApp(MyApp());
      
  /*runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();

      Instabug.init(
        token: '96d02a62d9b952481921f8c15a35916a',
        invocationEvents: [InvocationEvent.shake,InvocationEvent.floatingButton],
      );

      FlutterError.onError = (FlutterErrorDetails details) {
        Zone.current.handleUncaughtError(details.exception, details.stack!);
      };

      runApp(MyApp());
    },
    CrashReporting.reportCrash,
  );*/

}
