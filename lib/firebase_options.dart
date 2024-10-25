// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAMR3pGYYD5C98bK4IVeMrO-NxL30TOePE',
    appId: '1:530895039806:web:241b9d3b836f7a638f506f',
    messagingSenderId: '530895039806',
    projectId: 'flutter-firebase-34b05',
    authDomain: 'flutter-firebase-34b05.firebaseapp.com',
    storageBucket: 'flutter-firebase-34b05.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDi0Qj1LNYmxM1oj6_Z1PvgQmkf8nBGcRg',
    appId: '1:530895039806:android:f216f38f5ff12c038f506f',
    messagingSenderId: '530895039806',
    projectId: 'flutter-firebase-34b05',
    storageBucket: 'flutter-firebase-34b05.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQO5_vZcle5J5xSbshVYq31BS6GoVxrak',
    appId: '1:530895039806:ios:2363d0e1378a0cd48f506f',
    messagingSenderId: '530895039806',
    projectId: 'flutter-firebase-34b05',
    storageBucket: 'flutter-firebase-34b05.appspot.com',
    iosBundleId: 'com.example.assignment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQO5_vZcle5J5xSbshVYq31BS6GoVxrak',
    appId: '1:530895039806:ios:2363d0e1378a0cd48f506f',
    messagingSenderId: '530895039806',
    projectId: 'flutter-firebase-34b05',
    storageBucket: 'flutter-firebase-34b05.appspot.com',
    iosBundleId: 'com.example.assignment',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAMR3pGYYD5C98bK4IVeMrO-NxL30TOePE',
    appId: '1:530895039806:web:d4f78f290b1ce1d78f506f',
    messagingSenderId: '530895039806',
    projectId: 'flutter-firebase-34b05',
    authDomain: 'flutter-firebase-34b05.firebaseapp.com',
    storageBucket: 'flutter-firebase-34b05.appspot.com',
  );

}