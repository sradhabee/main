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
    apiKey: 'AIzaSyDEsvKlAJ6qXWOdBQo4kq-xAbi6T4ik9nE',
    appId: '1:248246243537:web:3fd07edb4d8ce5a63475f0',
    messagingSenderId: '248246243537',
    projectId: 'sample-project-ded93',
    authDomain: 'sample-project-ded93.firebaseapp.com',
    storageBucket: 'sample-project-ded93.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBw6sI1ifZWphlNhJ9UqaRhBvS1kR7J0BU',
    appId: '1:248246243537:android:258757bbc9d525643475f0',
    messagingSenderId: '248246243537',
    projectId: 'sample-project-ded93',
    storageBucket: 'sample-project-ded93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLWPHdBt4HPpHHb00XJ037IYBN_-9GNks',
    appId: '1:248246243537:ios:1313824afd9891b03475f0',
    messagingSenderId: '248246243537',
    projectId: 'sample-project-ded93',
    storageBucket: 'sample-project-ded93.appspot.com',
    iosBundleId: 'com.example.flutterMainProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLWPHdBt4HPpHHb00XJ037IYBN_-9GNks',
    appId: '1:248246243537:ios:1313824afd9891b03475f0',
    messagingSenderId: '248246243537',
    projectId: 'sample-project-ded93',
    storageBucket: 'sample-project-ded93.appspot.com',
    iosBundleId: 'com.example.flutterMainProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDEsvKlAJ6qXWOdBQo4kq-xAbi6T4ik9nE',
    appId: '1:248246243537:web:926e095ba491aeaa3475f0',
    messagingSenderId: '248246243537',
    projectId: 'sample-project-ded93',
    authDomain: 'sample-project-ded93.firebaseapp.com',
    storageBucket: 'sample-project-ded93.appspot.com',
  );
}
