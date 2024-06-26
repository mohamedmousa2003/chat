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
    apiKey: 'AIzaSyCNXathWeGjWGbr8TFcjS7lT8sA28cdNOo',
    appId: '1:884163865996:web:02f8551e7f85173849baa9',
    messagingSenderId: '884163865996',
    projectId: 'chat-app-e622b',
    authDomain: 'chat-app-e622b.firebaseapp.com',
    storageBucket: 'chat-app-e622b.appspot.com',
    measurementId: 'G-7HLCZ443EG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDR6FE6_7V-UC41o5Q_K0g4MNEux7S9ihQ',
    appId: '1:884163865996:android:77b2dc15dddbae0749baa9',
    messagingSenderId: '884163865996',
    projectId: 'chat-app-e622b',
    storageBucket: 'chat-app-e622b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_IIbrm_Z73gIkjSEg5kWDAZcsK5P2tWg',
    appId: '1:884163865996:ios:185241c6bfaa1f1249baa9',
    messagingSenderId: '884163865996',
    projectId: 'chat-app-e622b',
    storageBucket: 'chat-app-e622b.appspot.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_IIbrm_Z73gIkjSEg5kWDAZcsK5P2tWg',
    appId: '1:884163865996:ios:185241c6bfaa1f1249baa9',
    messagingSenderId: '884163865996',
    projectId: 'chat-app-e622b',
    storageBucket: 'chat-app-e622b.appspot.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCNXathWeGjWGbr8TFcjS7lT8sA28cdNOo',
    appId: '1:884163865996:web:e569e9ef474b680e49baa9',
    messagingSenderId: '884163865996',
    projectId: 'chat-app-e622b',
    authDomain: 'chat-app-e622b.firebaseapp.com',
    storageBucket: 'chat-app-e622b.appspot.com',
    measurementId: 'G-KLQWLZP67C',
  );
}
