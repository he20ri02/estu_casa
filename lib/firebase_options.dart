// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCQVF10f9oHxmdKekB0Sqt3O65mzAWi1Q0',
    appId: '1:1018181969475:web:a5d45d92a42a2cc80a56f6',
    messagingSenderId: '1018181969475',
    projectId: 'estucasa-a6c22',
    authDomain: 'estucasa-a6c22.firebaseapp.com',
    databaseURL: 'https://estucasa-a6c22-default-rtdb.firebaseio.com',
    storageBucket: 'estucasa-a6c22.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhS9zfajN3EQFDWbkGqXCByRMTLBEjj-8',
    appId: '1:1018181969475:android:23d76cc404b60b6e0a56f6',
    messagingSenderId: '1018181969475',
    projectId: 'estucasa-a6c22',
    databaseURL: 'https://estucasa-a6c22-default-rtdb.firebaseio.com',
    storageBucket: 'estucasa-a6c22.appspot.com',
  );
}
