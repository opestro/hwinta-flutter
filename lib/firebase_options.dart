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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyDhh9HinZcPft6E23hgbzK1uIoy8coyzgQ',
    appId: '1:24740023407:web:132d6fc5091def2023519a',
    messagingSenderId: '24740023407',
    projectId: 'feeefnet',
    authDomain: 'feeefnet.firebaseapp.com',
    storageBucket: 'feeefnet.appspot.com',
    measurementId: 'G-5S9MEJ582K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUihCFzaQOL27obbTxIcQXBexHDtO1Zgo',
    appId: '1:24740023407:android:5f7cb1165f028da323519a',
    messagingSenderId: '24740023407',
    projectId: 'feeefnet',
    storageBucket: 'feeefnet.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0HoeBMt08VTpqEeRq_b-q3LkcJci5lfg',
    appId: '1:24740023407:ios:1681434f6f8443e723519a',
    messagingSenderId: '24740023407',
    projectId: 'feeefnet',
    storageBucket: 'feeefnet.appspot.com',
    iosBundleId: 'dz.feeef.marchant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0HoeBMt08VTpqEeRq_b-q3LkcJci5lfg',
    appId: '1:24740023407:ios:6cea7ecdb247092323519a',
    messagingSenderId: '24740023407',
    projectId: 'feeefnet',
    storageBucket: 'feeefnet.appspot.com',
    iosBundleId: 'com.example.fash.RunnerTests',
  );
}